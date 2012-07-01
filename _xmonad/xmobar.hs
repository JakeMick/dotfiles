-- xmobar config used by Vic Fryzel
-- Author: Vic Fryzel
-- http://github.com/vicfryzel/xmonad-config

-- This is setup for dual 1920x1080 monitors, with the right monitor as primary
Config {
    font = "xft:Ubuntu Mono:pixelsize=16",
    bgColor = "#1b1d1e",
    fgColor = "#ffffff",
    position = Static { xpos = 0, ypos = 0, width = 1920, height = 16 },
    lowerOnStart = True,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3> <total4> <total5> <total6> <total7>","-L","30","-H","60","-h","#D197D9","-l","#CCDF32","-n","#EFB571","-w","3"] 100,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#D197D9","-l","#CCDF32","-n","#EFB571"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#D197D9","-l","#CCDF32","-n","#EFB571"] 10,
        Run Network "eth0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#D197D9","-l","#CCDF32","-n","#EFB571"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }{ %multicpu%   %memory%   %swap%   %eth0%   <fc=#EFB571>%date%</fc> "

