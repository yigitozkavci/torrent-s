{-# LANGUAGE ScopedTypeVariables #-}

module Main where

import Control.Concurrent.Async
import qualified Data.Text as T
import qualified Data.Sequence as Seq
import Text.XML.HXT.Core
import Text.HandsomeSoup
import Data.Monoid ((<>))
import System.Environment
import Control.Monad
import qualified Data.ByteString.Lazy.Char8 as LBS8
import System.Process
import GHC.IO.Handle

data Torrent = Torrent
  { _index :: Int
  -- , _name :: T.Text
  , _downloadLink :: String
  , _name :: String
  } deriving Show

toTorrent :: ArrowXml a => a XmlTree Torrent
toTorrent = (magnetUrl &&& name) >>> arr (uncurry (Torrent 0))
  where
    name = css "div.detName a" >>> getChildren >>> isText >>> getText
    magnetUrl = css "a" >>> hasAttrValue "title" (== "Download this torrent using magnet") >>> getAttrValue "href"

getTorrents :: String -> IO (Seq.Seq Torrent)
getTorrents search = do
  let url = "https://thepiratebay.org/search/" <> search
  htmlString <- readProcess "curl" ["--silent", "-L", url, "--socks5-hostname", "127.0.0.1:8123"] ""

  let doc = parseHtml htmlString
  Seq.fromList <$> runX (doc >>> css "table#searchResult tr" >>> toTorrent)

addIndexes :: Seq.Seq Torrent -> Seq.Seq Torrent
addIndexes = Seq.mapWithIndex $ \i t -> t { _index = i }

main :: IO ()
main = do
  (name:_) <- getArgs
  torrents <- addIndexes <$> getTorrents name
  putStrLn "Torrents:"
  forM_ torrents $ \t -> putStrLn (show (_index t) <> ") " <> _name t)
  putStrLn "\nSelect a torrent with id:"
  id' <- (read :: String -> Int) <$> getLine
  case Seq.lookup id' torrents of
    Nothing -> error $ "Torrent with id " <> show id' <> "is not in the list"
    Just torrent -> putStrLn (_downloadLink torrent)
