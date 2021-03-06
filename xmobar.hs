Config { font = "-misc-fixed-*-*-*-*-10-*-*-*-*-*-*-*"
       , additionalFonts = []
       , borderColor = "black"
       , border = TopB
       , bgColor = "black"
       , fgColor = "grey"
       , alpha = 255
       , position = Static {xpos = 0, ypos = 0, width = 1920, height = 16}
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = False
       , hideOnStart = False
       , iconRoot = "."
       , allDesktops = True
       , overrideRedirect = True
       , commands = [ Run Network "wlp3s0" ["-L","0","-H","32",
                                          "--normal","green","--high","red"] 10
                    , Run Cpu ["-L","3","-H","50",
                               "--normal","green","--high","red"] 10
                    , Run Memory ["-t","Mem: <usedratio>%"] 10
                    , Run Com "uname" ["-s","-r"] "" 36000
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
                    , Run StdinReader
                    , Run Battery ["-t","<timeleft>","--","charge_full","-O","AC","-o","Bat","-h","green","-l", "red"] 10
                    , Run Com ".xmonad/battery.sh" [] "bat_indicator" 10
                    , Run Com ".xmonad/volume.sh" [] "vol" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = "%StdinReader%} %cpu%  ||  %memory%  ||  %wlp3s0%  ||  %bat_indicator% %battery% {%vol%  ||  <fc=#ee9a00>%date%</fc>"
       }
