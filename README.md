# torrent-s

A torrent searcher equipped with local socks5 proxy tunnel.

It's currently is not on hackage or stackage, so you need to build manually.

To build:
```shell
$ cabal sandbox init
$ cabal install
$ cabal build
$ ./dist/build/TorrentS/TorrentS "Catch me if you can"
```

# Example
```shell
λ $~ ./dist/build/TorrentS/TorrentS "Catch me if you can"
Torrents:
0) Catch.Me.If.You.Can.2002.720p.BluRay.x264.Hindi.Eng.AC3-ETRG
1) Catch Me If You Can (2002) 720p BrRip x264 - VPPV
2) Catch.Me.If.You.Can.2002.1080p.BluRay.x264.AC3-ETRG
3) Catch.Me.If.You.Can[ENG][DVDRip]
4) Catch Me If You Can (2002) 1080p BrRip x264 - VPPV
5) Catch Me If You Can 2002 1080p.BluRay.5.1.x264 . NVEE
6) Catch Me If You Can - Frank W. Abagnale
7) Catch me if you can (1989)
8) Catch.Me.If.You.Can.2002.1080p.BluRay.x264-HD4U [PublicHD]
9) Catch Me If You Can (2002) - 720p - HDTV - x264 - MKV by Riddler
10) Catch me if you Can**John Williams**2002**OST
11) Catch Me If You Can
12) Catch me if you can DvD-Rip Dutch subs - NLT release
13) Catch me if you can - Year 1989 - Actor Matt Lattanzi
14) Catch.Me.If.You.Can.DVDRip.XviD.SWESub - mz
15) Bashy - Catch Me If You Can (2009) - Hip Hop
16) Catch Me If You Can [2002] dvdrip
17) Catch Me if You Can.2002.SWESUB.DVDRip.XviD-Zen_Bud
18) Catch.Me.If.You.Can.2002.720p.BluRay.x264-HD4U [PublicHD]
19) Catch Me If You Can 2002 720p BluRay x264-HD4U [EtHD]
20) Catch Me If You Can [2002] 720p BRRip H264 AC3 - CODY
21) Catch.Me.If.You.Can.2002.x264.DTS.2AUDIO-WAF
22) Catch.Me.If.You.Can.DVDRip.x264.AC3-UnKn0wn
23) Catch Me If You Can [2002] Eng, Ru + Nordic, Baltic, Eng, Ru, Is
24) Catch Me If You Can [2002]
25) Catch Me If You Can
26) Catch.Me.If.You.Can.2002.720p.BRRip.x264-Fastbet99
27) Catch me if you can
28) Catch Me If You Can (2002) 720p BrRip x264 - YIFY
29) Catch Me If You Can 2002 BDRip 1080p DTS extras-HighCode

Select a torrent with id:
27
magnet:?xt=urn:btih:296f2d9ccaf02027bf32f117b9b6d0edf9a60919&dn=Catch+me+if+you+can&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969&tr=udp%3A%2F%2Fzer0day.ch%3A1337&tr=udp%3A%2F%2Fopen.demonii.com%3A1337&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969&tr=udp%3A%2F%2Fexodus.desync.com%3A6969
```
# LICENSE
[LICENSE](https://github.com/yigitozkavci/torrent-s/blob/master/LICENSE)
