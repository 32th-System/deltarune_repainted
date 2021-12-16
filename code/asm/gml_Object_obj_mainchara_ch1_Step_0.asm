.localvar 2 arguments
.localvar 15285 nopress 19839
.localvar 9632 g 19840
.localvar 15296 mvd 19841
.localvar 99 i 19842
.localvar 6169 j 19843

:[0]
call.i gml_Script_scr_depth_ch1(argc=0)
popz.v
pushi.e 0
pop.v.i self.wallcheck
push.v self.x
pop.v.v self.nowx
push.v self.y
pop.v.v self.nowy
pushi.e 0
pop.v.i local.nopress
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [4]

:[2]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i local.nopress

:[7]
pushi.e 0
pop.v.i self.press_l
pushi.e 0
pop.v.i self.press_r
pushi.e 0
pop.v.i self.press_d
pushi.e 0
pop.v.i self.press_u
pushi.e 0
pop.v.i self.bkx
pushi.e 0
pop.v.i self.bky
pushi.e 0
pop.v.i self.bkxy
pushi.e 2
pop.v.i self.jelly
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [220]

:[8]
call.i gml_Script_button3_p(argc=0)
conv.v.b
bf [10]

:[9]
push.v self.threebuffer
pushi.e 0
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [21]

:[12]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.battlemode
pushi.e 0
cmp.i.v EQ
b [15]

:[14]
push.e 0

:[15]
bf [21]

:[16]
pushi.e 1490
pushenv [18]

:[17]
pushi.e 2
pop.v.i self.threebuffer

:[18]
popenv [17]
pushi.e 1651
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.movenoise
pushi.e 2
pop.v.i self.threebuffer

:[20]
popenv [19]
pushi.e 0
pop.v.i global.menuno
pushi.e 5
pop.v.i global.interact
pushi.e 2
pop.v.i self.threebuffer
pushi.e 2
pop.v.i self.twobuffer

:[21]
pushi.e -5
pushi.e 11
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [29]

:[22]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [24]

:[23]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 0
pop.v.i self.run
b [28]

:[27]
pushi.e 1
pop.v.i self.run

:[28]
b [35]

:[29]
call.i gml_Script_button2_h_ch1(argc=0)
conv.v.b
bf [31]

:[30]
push.v self.twobuffer
pushi.e 0
cmp.i.v LT
b [32]

:[31]
push.e 0

:[32]
bf [34]

:[33]
pushi.e 1
pop.v.i self.run
b [35]

:[34]
pushi.e 0
pop.v.i self.run

:[35]
push.v self.autorun
pushi.e 0
cmp.i.v GT
bf [40]

:[36]
push.v self.autorun
pushi.e 1
cmp.i.v EQ
bf [38]

:[37]
pushi.e 1
pop.v.i self.run
pushi.e 200
pop.v.i self.runtimer

:[38]
push.v self.autorun
pushi.e 2
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i self.run
pushi.e 50
pop.v.i self.runtimer

:[40]
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [51]

:[41]
push.v self.darkmode
pushi.e 0
cmp.i.v EQ
bf [46]

:[42]
push.v self.bwspeed
pushi.e 1
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [44]

:[43]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed

:[44]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [46]

:[45]
push.v self.bwspeed
pushi.e 3
add.i.v
pop.v.v self.wspeed

:[46]
push.v self.darkmode
pushi.e 1
cmp.i.v EQ
bf [51]

:[47]
push.v self.bwspeed
pushi.e 2
add.i.v
pop.v.v self.wspeed
push.v self.runtimer
pushi.e 10
cmp.i.v GT
bf [49]

:[48]
push.v self.bwspeed
pushi.e 4
add.i.v
pop.v.v self.wspeed

:[49]
push.v self.runtimer
pushi.e 60
cmp.i.v GT
bf [51]

:[50]
push.v self.bwspeed
pushi.e 5
add.i.v
pop.v.v self.wspeed

:[51]
push.v self.run
pushi.e 0
cmp.i.v EQ
bf [53]

:[52]
push.v self.bwspeed
pop.v.v self.wspeed

:[53]
call.i gml_Script_left_h_ch1(argc=0)
conv.v.b
bf [55]

:[54]
pushi.e 1
pop.v.i self.press_l

:[55]
call.i gml_Script_right_h_ch1(argc=0)
conv.v.b
bf [57]

:[56]
pushi.e 1
pop.v.i self.press_r

:[57]
call.i gml_Script_up_h_ch1(argc=0)
conv.v.b
bf [59]

:[58]
pushi.e 1
pop.v.i self.press_u

:[59]
call.i gml_Script_down_h_ch1(argc=0)
conv.v.b
bf [61]

:[60]
pushi.e 1
pop.v.i self.press_d

:[61]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py
pushi.e -1
pop.v.i self.pressdir
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.v self.wspeed
pop.v.v self.px
pushi.e 1
pop.v.i self.pressdir

:[63]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.v self.wspeed
neg.v
pop.v.v self.px
pushi.e 3
pop.v.i self.pressdir

:[65]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
push.v self.wspeed
pop.v.v self.py
pushi.e 0
pop.v.i self.pressdir

:[67]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [69]

:[68]
push.v self.wspeed
neg.v
pop.v.v self.py
pushi.e 2
pop.v.i self.pressdir

:[69]
pushloc.v local.nopress
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
push.v self.pressdir
pop.v.v global.facing

:[74]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [82]

:[75]
push.v self.press_d
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
pushi.e 0
pop.v.i global.facing

:[77]
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [79]

:[78]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [80]

:[79]
push.e 0

:[80]
bf [82]

:[81]
push.v self.pressdir
pop.v.v global.facing

:[82]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [90]

:[83]
push.v self.press_u
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
pushi.e 2
pop.v.i global.facing

:[85]
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [87]

:[86]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
push.v self.pressdir
pop.v.v global.facing

:[90]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [98]

:[91]
push.v self.press_r
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
pushi.e 1
pop.v.i global.facing

:[93]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [95]

:[94]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.v self.pressdir
pop.v.v global.facing

:[98]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [106]

:[99]
push.v self.press_l
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
pushi.e 3
pop.v.i global.facing

:[101]
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [103]

:[102]
push.v self.pressdir
pushi.e -1
cmp.i.v NEQ
b [104]

:[103]
push.e 0

:[104]
bf [106]

:[105]
push.v self.pressdir
pop.v.v global.facing

:[106]
pushi.e 0
pop.v.i local.nopress
pushi.e 0
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.xymeet
pushi.e 1334
conv.i.v
push.v self.y
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [143]

:[107]
push.v self.wspeed
pop.v.v local.g

:[108]
pushloc.v local.g
pushi.e 0
cmp.i.v GT
bf [124]

:[109]
pushi.e 0
pop.v.i local.mvd
push.v self.press_d
pushi.e 0
cmp.i.v EQ
bf [111]

:[110]
pushi.e 1334
conv.i.v
push.v self.y
pushloc.v local.g
sub.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [112]

:[111]
push.e 0

:[112]
bf [115]

:[113]
push.v self.y
pushloc.v local.g
sub.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [124]

:[114]
b [123]

:[115]
pushi.e 1
pop.v.i local.mvd
push.v self.press_u
pushi.e 0
cmp.i.v EQ
bf [118]

:[116]
pushloc.v local.mvd
pushi.e 0
cmp.i.v EQ
bf [118]

:[117]
pushi.e 1334
conv.i.v
push.v self.y
pushloc.v local.g
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [119]

:[118]
push.e 0

:[119]
bf [122]

:[120]
push.v self.y
pushloc.v local.g
add.v.v
pop.v.v self.y
pushi.e 0
pop.v.i self.py
b [124]

:[121]
b [123]

:[122]
push.v local.g
pushi.e 1
sub.i.v
pop.v.v local.g
b [108]

:[123]
b [108]

:[124]
pushi.e 1
pop.v.i self.xmeet
pushi.e 0
pop.v.i self.bkx
push.v self.px
pushi.e 0
cmp.i.v GT
bf [132]

:[125]
push.v self.px
pop.v.v local.i

:[126]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [132]

:[127]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [130]

:[128]
pushloc.v local.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [132]

:[129]
b [131]

:[130]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i
b [126]

:[131]
b [126]

:[132]
push.v self.px
pushi.e 0
cmp.i.v LT
bf [140]

:[133]
push.v self.px
pop.v.v local.i

:[134]
pushloc.v local.i
pushi.e 0
cmp.i.v LTE
bf [140]

:[135]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [138]

:[136]
pushloc.v local.i
pop.v.v self.px
pushi.e 1
pop.v.i self.bkx
b [140]

:[137]
b [139]

:[138]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [134]

:[139]
b [134]

:[140]
push.v self.bkx
pushi.e 0
cmp.i.v EQ
bf [142]

:[141]
pushi.e 0
pop.v.i self.px

:[142]
b [179]

:[143]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
bf [179]

:[144]
pushi.e 1
pop.v.i self.ymeet
pushi.e 0
pop.v.i self.bky
push.v self.wspeed
pop.v.v local.g

:[145]
pushloc.v local.g
pushi.e 0
cmp.i.v GT
bf [161]

:[146]
pushi.e 0
pop.v.i local.mvd
push.v self.press_r
pushi.e 0
cmp.i.v EQ
bf [148]

:[147]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
pushloc.v local.g
sub.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [149]

:[148]
push.e 0

:[149]
bf [152]

:[150]
push.v self.x
pushloc.v local.g
sub.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [161]

:[151]
b [160]

:[152]
pushi.e 1
pop.v.i local.mvd
pushloc.v local.mvd
pushi.e 0
cmp.i.v EQ
bf [155]

:[153]
push.v self.press_l
pushi.e 0
cmp.i.v EQ
bf [155]

:[154]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
pushloc.v local.g
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
b [156]

:[155]
push.e 0

:[156]
bf [159]

:[157]
push.v self.x
pushloc.v local.g
add.v.v
pop.v.v self.x
pushi.e 0
pop.v.i self.px
b [161]

:[158]
b [160]

:[159]
push.v local.g
pushi.e 1
sub.i.v
pop.v.v local.g
b [145]

:[160]
b [145]

:[161]
push.v self.py
pushi.e 0
cmp.i.v GT
bf [169]

:[162]
push.v self.py
pop.v.v local.i

:[163]
pushloc.v local.i
pushi.e 0
cmp.i.v GTE
bf [169]

:[164]
pushi.e 1334
conv.i.v
push.v self.y
pushloc.v local.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [167]

:[165]
pushloc.v local.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [169]

:[166]
b [168]

:[167]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i
b [163]

:[168]
b [163]

:[169]
push.v self.py
pushi.e 0
cmp.i.v LT
bf [177]

:[170]
push.v self.py
pop.v.v local.i

:[171]
pushloc.v local.i
pushi.e 0
cmp.i.v LTE
bf [177]

:[172]
pushi.e 1334
conv.i.v
push.v self.y
pushloc.v local.i
add.v.v
push.v self.x
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [175]

:[173]
pushloc.v local.i
pop.v.v self.py
pushi.e 1
pop.v.i self.bky
b [177]

:[174]
b [176]

:[175]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [171]

:[176]
b [171]

:[177]
push.v self.bky
pushi.e 0
cmp.i.v EQ
bf [179]

:[178]
pushi.e 0
pop.v.i self.py

:[179]
pushi.e 1334
conv.i.v
push.v self.y
push.v self.py
add.v.v
push.v self.x
push.v self.px
add.v.v
call.i place_meeting(argc=3)
conv.v.b
bf [205]

:[180]
pushi.e 1
pop.v.i self.xymeet
pushi.e 0
pop.v.i self.bkxy
push.v self.px
pop.v.v local.i
push.v self.py
pop.v.v local.j

:[181]
pushloc.v local.j
pushi.e 0
cmp.i.v NEQ
bt [183]

:[182]
pushloc.v local.i
pushi.e 0
cmp.i.v NEQ
b [184]

:[183]
push.e 1

:[184]
bf [203]

:[185]
pushi.e 1334
conv.i.v
push.v self.y
pushloc.v local.j
add.v.v
push.v self.x
pushloc.v local.i
add.v.v
call.i place_meeting(argc=3)
conv.v.b
not.b
bf [187]

:[186]
pushloc.v local.i
pop.v.v self.px
pushloc.v local.j
pop.v.v self.py
pushi.e 1
pop.v.i self.bkxy
b [202]

:[187]
pushloc.v local.j
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [193]

:[188]
pushloc.v local.j
pushi.e 0
cmp.i.v GT
bf [190]

:[189]
push.v local.j
pushi.e 1
sub.i.v
pop.v.v local.j

:[190]
pushloc.v local.j
pushi.e 0
cmp.i.v LT
bf [192]

:[191]
push.v local.j
pushi.e 1
add.i.v
pop.v.v local.j

:[192]
b [194]

:[193]
pushi.e 0
pop.v.i local.j

:[194]
pushloc.v local.i
call.i abs(argc=1)
pushi.e 1
cmp.i.v GTE
bf [200]

:[195]
pushloc.v local.i
pushi.e 0
cmp.i.v GT
bf [197]

:[196]
push.v local.i
pushi.e 1
sub.i.v
pop.v.v local.i

:[197]
pushloc.v local.i
pushi.e 0
cmp.i.v LT
bf [199]

:[198]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i

:[199]
b [201]

:[200]
pushi.e 0
pop.v.i local.i

:[201]
b [181]

:[202]
b [181]

:[203]
push.v self.bkxy
pushi.e 0
cmp.i.v EQ
bf [205]

:[204]
pushi.e 0
pop.v.i self.px
pushi.e 0
pop.v.i self.py

:[205]
pushi.e 0
pop.v.i self.runmove
push.v self.run
pushi.e 1
cmp.i.v EQ
bf [209]

:[206]
push.v self.xmeet
pushi.e 0
cmp.i.v EQ
bf [209]

:[207]
push.v self.ymeet
pushi.e 0
cmp.i.v EQ
bf [209]

:[208]
push.v self.xymeet
pushi.e 0
cmp.i.v EQ
b [210]

:[209]
push.e 0

:[210]
bf [218]

:[211]
push.v self.px
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
bt [213]

:[212]
push.v self.py
call.i abs(argc=1)
pushi.e 0
cmp.i.v GT
b [214]

:[213]
push.e 1

:[214]
bf [216]

:[215]
pushi.e 1
pop.v.i self.runmove
push.v self.runtimer
pushi.e 1
add.i.v
pop.v.v self.runtimer
b [217]

:[216]
pushi.e 0
pop.v.i self.runtimer

:[217]
b [219]

:[218]
pushi.e 0
pop.v.i self.runtimer

:[219]
push.v self.x
push.v self.px
add.v.v
pop.v.v self.x
push.v self.y
push.v self.py
add.v.v
pop.v.v self.y

:[220]
pushi.e 0
pop.v.i self.walk
push.v self.x
push.v self.nowx
cmp.v.v NEQ
bf [222]

:[221]
pushloc.v local.nopress
pushi.e 0
cmp.i.v EQ
b [223]

:[222]
push.e 0

:[223]
bf [225]

:[224]
pushi.e 1
pop.v.i self.walk

:[225]
push.v self.y
push.v self.nowy
cmp.v.v NEQ
bf [227]

:[226]
pushloc.v local.nopress
pushi.e 0
cmp.i.v EQ
b [228]

:[227]
push.e 0

:[228]
bf [230]

:[229]
pushi.e 1
pop.v.i self.walk

:[230]
push.v self.walk
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
pushi.e 6
pop.v.i self.walkbuffer

:[232]
push.v self.walkbuffer
pushi.e 3
cmp.i.v GT
bf [234]

:[233]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [235]

:[234]
push.e 0

:[235]
bf [249]

:[236]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer
push.v self.runmove
pushi.e 1
cmp.i.v EQ
bf [238]

:[237]
push.v self.walktimer
push.d 1.5
add.d.v
pop.v.v self.walktimer

:[238]
push.v self.walktimer
pushi.e 40
cmp.i.v GTE
bf [240]

:[239]
push.v self.walktimer
pushi.e 40
sub.i.v
pop.v.v self.walktimer

:[240]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [242]

:[241]
pushi.e 0
pop.v.i self.image_index

:[242]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [244]

:[243]
pushi.e 1
pop.v.i self.image_index

:[244]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [246]

:[245]
pushi.e 2
pop.v.i self.image_index

:[246]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [248]

:[247]
pushi.e 3
pop.v.i self.image_index

:[248]
b [268]

:[249]
push.v self.walkbuffer
pushi.e 0
cmp.i.v LTE
bf [251]

:[250]
push.v self.fun
pushi.e 0
cmp.i.v EQ
b [252]

:[251]
push.e 0

:[252]
bf [268]

:[253]
push.v self.walktimer
pushi.e 10
cmp.i.v LT
bf [255]

:[254]
push.d 9.5
pop.v.d self.walktimer

:[255]
push.v self.walktimer
pushi.e 10
cmp.i.v GTE
bf [257]

:[256]
push.v self.walktimer
pushi.e 20
cmp.i.v LT
b [258]

:[257]
push.e 0

:[258]
bf [260]

:[259]
push.d 19.5
pop.v.d self.walktimer

:[260]
push.v self.walktimer
pushi.e 20
cmp.i.v GTE
bf [262]

:[261]
push.v self.walktimer
pushi.e 30
cmp.i.v LT
b [263]

:[262]
push.e 0

:[263]
bf [265]

:[264]
push.d 29.5
pop.v.d self.walktimer

:[265]
push.v self.walktimer
pushi.e 30
cmp.i.v GTE
bf [267]

:[266]
push.d 39.5
pop.v.d self.walktimer

:[267]
pushi.e 0
pop.v.i self.image_index

:[268]
push.v self.walkbuffer
push.d 0.75
sub.d.v
pop.v.v self.walkbuffer
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [277]

:[269]
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [271]

:[270]
push.v self.dsprite
pop.v.v self.sprite_index

:[271]
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [273]

:[272]
push.v self.rsprite
pop.v.v self.sprite_index

:[273]
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [275]

:[274]
push.v self.usprite
pop.v.v self.sprite_index

:[275]
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [277]

:[276]
push.v self.lsprite
pop.v.v self.sprite_index

:[277]
push.v self.stepping
pushi.e 1
cmp.i.v EQ
bf [296]

:[278]
push.v self.image_index
pushi.e 1
cmp.i.v EQ
bf [280]

:[279]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [281]

:[280]
push.e 0

:[281]
bf [285]

:[282]
pushi.e -5
pushi.e 31
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [284]

:[283]
pushi.e 458
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v
pushi.e 1
pop.v.i self.stepped

:[284]
b [296]

:[285]
push.v self.image_index
pushi.e 0
cmp.i.v EQ
bt [287]

:[286]
push.v self.image_index
pushi.e 2
cmp.i.v EQ
b [288]

:[287]
push.e 1

:[288]
bf [290]

:[289]
pushi.e 0
pop.v.i self.stepped
b [296]

:[290]
push.v self.image_index
pushi.e 3
cmp.i.v EQ
bf [292]

:[291]
push.v self.stepped
pushi.e 0
cmp.i.v EQ
b [293]

:[292]
push.e 0

:[293]
bf [296]

:[294]
pushi.e 1
pop.v.i self.stepped
pushi.e -5
pushi.e 31
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [296]

:[295]
pushi.e 459
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[296]
push.v self.onebuffer
pushi.e 0
cmp.i.v LT
bf [363]

:[297]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [363]

:[298]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [363]

:[299]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.darkzone
pushi.e 1
add.i.v
pop.v.v self.d
pushglb.v global.facing
pushi.e 1
cmp.i.v EQ
bf [304]

:[300]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [302]

:[301]
pushi.e 1
pop.v.i self.thisinteract

:[302]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [304]

:[303]
pushi.e 2
pop.v.i self.thisinteract

:[304]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [315]

:[305]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [307]

:[306]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[307]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [309]

:[308]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 13
push.v self.d
mul.v.i
add.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[309]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [315]

:[310]
push.v self.interactedobject
pushi.e -9
pushenv [312]

:[311]
pushi.e 3
pop.v.i self.facing

:[312]
popenv [311]
push.v self.interactedobject
pushi.e -9
pushenv [314]

:[313]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[314]
popenv [313]

:[315]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 3
cmp.i.v EQ
bf [320]

:[316]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [318]

:[317]
pushi.e 1
pop.v.i self.thisinteract

:[318]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [320]

:[319]
pushi.e 2
pop.v.i self.thisinteract

:[320]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [331]

:[321]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [323]

:[322]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[323]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [325]

:[324]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
push.v self.x
pushi.e 13
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 6
push.v self.d
mul.v.i
add.v.v
push.v self.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[325]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [331]

:[326]
push.v self.interactedobject
pushi.e -9
pushenv [328]

:[327]
pushi.e 1
pop.v.i self.facing

:[328]
popenv [327]
push.v self.interactedobject
pushi.e -9
pushenv [330]

:[329]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[330]
popenv [329]

:[331]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 0
cmp.i.v EQ
bf [336]

:[332]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [334]

:[333]
pushi.e 1
pop.v.i self.thisinteract

:[334]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [336]

:[335]
pushi.e 2
pop.v.i self.thisinteract

:[336]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [347]

:[337]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [339]

:[338]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[339]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [341]

:[340]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 15
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 4
push.v self.d
mul.v.i
sub.v.v
push.v self.y
pushi.e 28
push.v self.d
mul.v.i
add.v.v
push.v self.x
pushi.e 4
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[341]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [347]

:[342]
push.v self.interactedobject
pushi.e -9
pushenv [344]

:[343]
pushi.e 2
pop.v.i self.facing

:[344]
popenv [343]
push.v self.interactedobject
pushi.e -9
pushenv [346]

:[345]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[346]
popenv [345]

:[347]
pushi.e 0
pop.v.i self.thisinteract
pushglb.v global.facing
pushi.e 2
cmp.i.v EQ
bf [352]

:[348]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [350]

:[349]
pushi.e 1
pop.v.i self.thisinteract

:[350]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
add.i.v
call.i collision_rectangle(argc=7)
conv.v.b
bf [352]

:[351]
pushi.e 2
pop.v.i self.thisinteract

:[352]
push.v self.thisinteract
pushi.e 0
cmp.i.v GT
bf [363]

:[353]
push.v self.thisinteract
pushi.e 1
cmp.i.v EQ
bf [355]

:[354]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1380
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[355]
push.v self.thisinteract
pushi.e 2
cmp.i.v EQ
bf [357]

:[356]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1335
conv.i.v
push.v self.y
pushi.e 5
push.v self.d
mul.v.i
add.v.v
push.v self.x
push.v self.sprite_width
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.y
push.v self.sprite_height
add.v.v
pushi.e 5
push.v self.d
mul.v.i
sub.v.v
push.v self.x
pushi.e 3
push.v self.d
mul.v.i
add.v.v
call.i collision_rectangle(argc=7)
pop.v.v self.interactedobject

:[357]
push.v self.interactedobject
pushi.e -4
cmp.i.v NEQ
bf [363]

:[358]
push.v self.interactedobject
pushi.e -9
pushenv [360]

:[359]
pushi.e 0
pop.v.i self.facing

:[360]
popenv [359]
push.v self.interactedobject
pushi.e -9
pushenv [362]

:[361]
call.i gml_Script_scr_interact_ch1(argc=0)
popz.v

:[362]
popenv [361]

:[363]
push.v self.onebuffer
pushi.e 1
sub.i.v
pop.v.v self.onebuffer
push.v self.twobuffer
pushi.e 1
sub.i.v
pop.v.v self.twobuffer
push.v self.threebuffer
pushi.e 1
sub.i.v
pop.v.v self.threebuffer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1413
conv.i.v
push.v self.bbox_bottom
push.v self.bbox_right
push.v self.bbox_top
push.v self.bbox_left
call.i collision_rectangle(argc=7)
pushi.e -9
pushenv [365]

:[364]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[365]
popenv [364]
push.v self.battlemode
pushi.e 1
cmp.i.v EQ
bf [377]

:[366]
push.v global.inv
pushi.e 1
sub.i.v
pop.v.v global.inv
pushglb.v global.inv
pushi.e 0
cmp.i.v LT
bf [368]

:[367]
pushglb.v global.interact
pushi.e 3
cmp.i.v NEQ
b [369]

:[368]
push.e 0

:[369]
bf [377]

:[370]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1504
conv.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 27
add.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_rectangle(argc=7)
pushi.e -9
pushenv [372]

:[371]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[372]
popenv [371]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1504
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i collision_line(argc=7)
pushi.e -9
pushenv [374]

:[373]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[374]
popenv [373]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1504
conv.i.v
push.v self.y
pushi.e 57
add.i.v
push.v self.x
pushi.e 19
add.i.v
push.v self.y
pushi.e 49
add.i.v
push.v self.x
pushi.e 26
add.i.v
call.i collision_line(argc=7)
pushi.e -9
pushenv [376]

:[375]
pushi.e 5
conv.i.v
call.i event_user(argc=1)
popz.v

:[376]
popenv [375]

:[377]
call.i gml_Script_scr_debug_ch1(argc=0)
conv.v.b
bf [end]

:[378]
pushi.e 45
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [380]

:[379]
call.i room_goto_next(argc=0)
popz.v

:[380]
pushi.e 46
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[381]
call.i room_goto_previous(argc=0)
popz.v

:[end]