# i3-gaps-nord-nvidia

This is a fork of [i3-nord repo of Vista1nik](https://github.com/Vista1nik/i3-nord) which fixes some nvidia related driver issues and adds some minor tweaks to make it more useable in an 21:9 aspect ratio display. You can easily reused this on a 16:9 or different aspect ratio by changing some dpi values in different config files. See section "Things you might have to change".

I also added a file called `pkglist.txt` which contains all the AUR packages needed in the setup. I am expecting you to have a stable Arch linux + i3-gaps setup before hand. 

## Fixes/Changes:
- Compositor:
    - Replaced deprecated and not avaible compton-round compositor library with picom-ibhagwan-git
    - Changed compositor configuration to; 
        - Disable shadows.
        - Allow for vsync.
        - Improve gaming performance by using glx renderer.
        - Add inactive transparency so you can see which window is active.
- Terminal:
    - Allow you to open images in kitty terminal
- Nvidia: 
    - Changed some settings in compositor configuration to fix screem tearing
- Themes: 
    - Applied Nord GTK theme for applications like Google Chrome etc. 
    - Included missing base16-ocean.rasi file in Rofi theme settings
- Polybar:
    - Changed Wifi settings with Ethernet Up/Down speed
    - Fixed issue with polybar remaining visible when in fullscreen
    - Added Xwindow plugin so you can see which window is active
- I3:
    - Reduced window gaps to increasse workable screen space
    - Rediced border corners to fix issue with text getting cut off in GUI applications
    - Fixed maim screenshot exec commands to new version and added two modes:
        - Screenshot of selected area on `Print`
        - Screenshot of entire window on `mod+Print`

## Things you might want to change 
- DPI values for different files in `.config/*`
- The file `/etc/X11/xorg.conf.d/20-nvidia-conf` to reflect your own preference. Only two things that are important:
    1. You have included `Option "TripleBuffer" "True"` as this will 'fix' the screen tearing on video playback.
    2. You did **Not** include `Option "ForceFullCompositionPipeline" "on"` as this will slow down gaming performance
- The file `.config/polybar/config.ini` to add/remove/alter certain modules. For example the CPU module with a correct CPU temperature file path. 