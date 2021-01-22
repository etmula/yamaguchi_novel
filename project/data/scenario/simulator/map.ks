*start

@call storage="tyrano.ks"
;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ
;メッセージボックスは非表示
@layopt layer="message" visible=false
;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[wait time=200]
[position layer=message0 left="16" top="504" width="1248" height="200" frame="none" marginl="1" margint="1" marginr="1" marginb="1" ]
[image layer="base" page="fore" storage="simulator/title_back.png" ]

[l]

*map

[wait time=200]
[freeimage layer=1]
[position layer=message0 left="16" top="504" width="1248" height="200" frame="none" marginl="1" margint="1" marginr="1" marginb="1" ]
[bg storage="simulator/map-white.png"  time=300 wait method="fadeIn"]

;[eval exp="f.stamp_kaikyokann=true"]
;[eval exp="f.stamp_kinntaikyo=true"]
;[eval exp="f.stamp_tokiwakoenn=true"]

[if exp="f.stamp_tokiwakoenn==true && f.stamp_kinntaikyo==true && f.stamp_kaikyokann==true"]
    [glink text="元乃隅神社" size=20 color="btn_22_red"  x="200" y="200" storage="spots/motonosumi/first.ks" target="*start"]
[else]
    [glink text="?????" size=20 color="btn_22_red"  x="200" y="200" storage="simulator/map.ks" target="*stamp"]
[endif]

[glink text="常盤公園" size=20 color="btn_22_green"  x="393" y="469" storage="spots/tokiwakoenn/first.ks" target="*start"]
[glink text="海響館"   size=20 color="btn_22_blue"   x="225" y="480" storage="spots/kaikyokann/first.ks" target="*start"]
[glink text="錦帯橋"   size=20 color="btn_22_yellow" x="800" y="362" storage="spots/kinntaikyo/first.ks" target="*start"]
[s]

*stamp


[layopt layer=1 visible=true]

[ptext layer="1" x="200" y="200" text="常盤公園" color="green"]
[if exp="f.stamp_tokiwakoenn==true"]
    [image layer=1 storage=simulator/stamp.png page=fore folder=fgimage left=200 top=200]
[else]
    [image layer=1 storage=simulator/stamp_empty.png page=fore folder=fgimage left=200 top=200]
[endif]

[ptext layer="1" x="500" y="200" text="錦帯橋" color="yellow"]
[if exp="f.stamp_kinntaikyo==true"]
    [image layer=1 storage=simulator/stamp.png page=fore folder=fgimage left=500 top=200]
[else]
    [image layer=1 storage=simulator/stamp_empty.png page=fore folder=fgimage left=500 top=200]
[endif]

[ptext layer="1" x="800" y="200" text="海響館" color="blue"]
[if exp="f.stamp_kaikyokann==true"]
    [image layer=1 storage=simulator/stamp.png page=fore folder=fgimage left=800 top=200]
[else]
    [image layer=1 storage=simulator/stamp_empty.png page=fore folder=fgimage left=800 top=200]
[endif]

[ptext layer="1" x="400" y="100" text="各地のストーリをクリアしてスタンプを集めよう！" color="red" bold="bold"]

[p]
[freeimage layer=1]
[jump storage=simulator/map.ks target=*map]
[s]