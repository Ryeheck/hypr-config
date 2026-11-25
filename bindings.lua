-- ██╗  ██╗███████╗██╗   ██╗██████╗ ██╗███╗   ██╗█████╗ ██╗███╗   ██╗ ██████╗ ███████╗
-- ██║ ██╔╝██╔════╝╚██╗ ██╔╝██╔══██╗██║████╗  ██║██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
-- █████╔╝ █████╗   ╚████╔╝ ██████╔╝██║██╔██╗ ██║██║  ██║██║██╔██╗ ██║██║  ███╗███████╗
-- ██╔═██╗ ██╔══╝    ╚██╔╝  ██╔══██╗██║██║╚██╗██║██║  ██║██║██║╚██╗██║██║   ██║╚════██║
-- ██║  ██╗███████╗   ██║   ██████╔╝██║██║ ╚████║██████╔╝██║██║ ╚████║╚██████╔╝███████║
-- ╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═════╝ ╚═╝╚═╝  ╚═══╝╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝

-- Assign apps

local terminal = "kitty"
local browser = "~/.config/hypr/scripts/launch-browser"
local browser2 = "zen-browser"
local webapp = "~/.config/hypr/scripts/launch-webapp"
local focus = "~/.config/hypr/scripts/focus"
local osdclient = "swayosd-client --monitor \"$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')\""
local telegram = "~/my_apps/Telegram/Telegram"
local csgo = "\"sudo reflector --latest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist\""

-- Assign Dir
local rofiDir = "~/.config/rofi/scripts"
local scrDir = "~/.config/hypr/scripts"

-- Apps
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("uwsm-app -- " .. terminal .. " --dir=\"$(cwd-terminal)\""), { description = "Terminal" })
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd(browser), { description = "Browser" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("uwsm app -- nautilus --new-window"), { description = "File manager" })
hl.bind("SUPER + M", hl.dsp.exec_cmd(focus .. " spotify-launcher"), { description = "Music" })
hl.bind("SUPER + D", hl.dsp.exec_cmd("uwsm app --  vesktop"), { description = "Discord" })
hl.bind("SUPER + O", hl.dsp.exec_cmd("obsidian"), { description = "obsidian" })
hl.bind("SUPER + slash", hl.dsp.exec_cmd("uwsm app -- bitwarden-desktop"), { description = "Passwords" })
hl.bind("SUPER + C", hl.dsp.exec_cmd("uwsm app -- zeditor"), { description = "zed" })
hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd(terminal .. " -e lazydocker"), { description = "Docker" })
hl.bind("ALT + slash", hl.dsp.exec_cmd(terminal .. " -e btop"), { description = "Activity" })
hl.bind("ALT + M", hl.dsp.exec_cmd(terminal .. " -e deadbeef"), { description = "Music" })
hl.bind("ALT + Q", hl.dsp.exec_cmd(terminal .. " -e yazi"), { description = "yazi" })
hl.bind("ALT + N", hl.dsp.exec_cmd(terminal .. " -e nvim"), { description = "Neovim" })
hl.bind("SUPER + S", hl.dsp.exec_cmd(terminal .. " --class=Wiremix -e wiremix"), { description = "Wiremix" })
hl.bind("SUPER + ALT + M", hl.dsp.exec_cmd("easyeffects"), { description = "easyeffects" })
hl.bind("SUPER + CTRL + V", hl.dsp.exec_cmd("code"), { description = "Visual Studio code" })
hl.bind("SUPER + CTRL + T", hl.dsp.exec_cmd(telegram), { description = "Telegram" })
hl.bind("SUPER + CTRL + I", hl.dsp.exec_cmd("incy"), { description = "Incy" })
hl.bind("SUPER + CTRL + O", hl.dsp.exec_cmd("obsidian"), { description = "Obsidian" })

-- WebApps
hl.bind("SUPER + CTRL + A", hl.dsp.exec_cmd(webapp .. " \"https://gemini.google.com\""), { description = "Gemini" })
hl.bind("SUPER + CTRL + C", hl.dsp.exec_cmd(webapp .. " \"https://claude.ai/new\""), { description = "Claude" })

hl.bind("SUPER + CTRL + G", hl.dsp.exec_cmd(webapp .. " \"https://github.com/vyrx-dev\""), { description = "Github" })
hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd(webapp .. " \"https://mail.google.com/mail/u/1/\""), { description = "Gmail" })
hl.bind("SUPER + CTRL + Y", hl.dsp.exec_cmd(webapp .. " \"https://youtube.com/\""), { description = "YouTube" })

-- Tmux
hl.bind("SUPER + SHIFT + return", hl.dsp.exec_cmd(terminal .. " -e tmux a"))
hl.bind("SUPER + ALT + return", hl.dsp.exec_cmd(terminal .. " -e tmux new -As main"))

hl.bind("SUPER + SHIFT + N", hl.dsp.exec_cmd(rofiDir .. "/wifi"), { description = "Wifi Menu" })
hl.bind("SUPER + N", hl.dsp.exec_cmd("swaync-client -t -sw"), { description = "Notification Centre" })
hl.bind("SUPER + SHIFT + I", hl.dsp.exec_cmd("kitty --title webapp-install -e " .. scrDir .. "/webapp-install"), { description = "Web App Install" })

-- Close Windows
hl.bind("SUPER + Q", hl.dsp.window.close(), { description = "Close window" })

-- Kill Windows
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.kill(), { description = "Kill window" })

-- Rofi
hl.bind("ALT + comma", hl.dsp.exec_cmd(rofiDir .. "/clipboard"), { description = "clipboard" })
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd(rofiDir .. "/rofibeats"), { description = "rofibeats" })
hl.bind("ALT + period", hl.dsp.exec_cmd(rofiDir .. "/emoji"), { description = "emoji" })
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(rofiDir .. "/rofisearch"), { description = "Find" })
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -show drun"), { description = "app-launcher" })
hl.bind("SUPER + SHIFT + B", hl.dsp.exec_cmd(rofiDir .. "/power-profiles"), { description = "Power Profiles" })

hl.bind("SUPER + SHIFT + O", hl.dsp.exec_cmd(scrDir .. "/pop-window"), { description = "Pop window out (float & pin)" })
hl.bind("SUPER + SHIFT + SPACE", hl.dsp.exec_cmd(scrDir .. "/toggle-waybar"))
hl.bind("SUPER + CTRL + N", hl.dsp.exec_cmd(scrDir .. "/nightlight"))

-- local send
hl.bind("SUPER + ALT + S", hl.dsp.exec_cmd("kitty --title share -e " .. scrDir .. "/fileshare file"))
hl.bind("SUPER + CTRL + S", hl.dsp.exec_cmd("kitty --title share -e " .. scrDir .. "/fileshare folder"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("kitty --title share -e " .. scrDir .. "/fileshare clipboard"))

-- Themes
hl.bind("SUPER + CTRL + SPACE", hl.dsp.exec_cmd(rofiDir .. "/selectWall"), { description = "Matugen Themes Apply" })
hl.bind("SUPER + ALT + SPACE", hl.dsp.exec_cmd(rofiDir .. "/wallPicker"), { description = "Wallpaper Picker" })
hl.bind("CTRL + ALT + SPACE", hl.dsp.exec_cmd(scrDir .. "/change-theme"), { description = "select swww wall" })
hl.bind("SUPER + CTRL + SHIFT + SPACE", hl.dsp.exec_cmd("~/dotfiles/install/themes/symphony switch"), { description = "Theme Switcher" })
hl.bind("SUPER + I", hl.dsp.exec_cmd("kitty --title symphony-tui -e ~/dotfiles/install/themes/symphony-tui"), { description = "Symphony TUI" })
hl.bind("SUPER + ALT + I", hl.dsp.exec_cmd("kitty --title symphony-browse -e ~/dotfiles/install/themes/symphony browse"), { description = "Browse Themes" })

-- Current Theme Wallpaper Cycling
hl.bind("SUPER + ALT + up", hl.dsp.exec_cmd(scrDir .. "/cycle-wallpaper"), { description = "Theme Wallpapers" })
hl.bind("SUPER + ALT + right", hl.dsp.exec_cmd(scrDir .. "/cycle-wallpaper next"), { description = "Next Wallpaper" })
hl.bind("SUPER + ALT + left", hl.dsp.exec_cmd(scrDir .. "/cycle-wallpaper prev"), { description = "Previous Wallpaper" })

-- Power
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd(scrDir .. "/lock-screen"), { description = "lock screen" })
hl.bind("SUPER + CTRL + up", hl.dsp.exec_cmd(scrDir .. "/graceful-reboot"), { description = "reboot" })
hl.bind("SUPER + BACKSPACE", hl.dsp.exec_cmd(scrDir .. "/toggle-terminal-transparency"), { description = "Terminal Transparency" })
hl.bind("SUPER + CTRL + BACKSPACE", hl.dsp.exec_cmd(scrDir .. "/toggle-focus"), { description = "Toggle focus & vibe mode" })
hl.bind("SUPER + ESCAPE", hl.dsp.exec_cmd(rofiDir .. "/powermenu"), { description = "powermenu" })
hl.bind("XF86PowerOff", hl.dsp.exec_cmd(rofiDir .. "/powermenu"), { locked = true, description = "Power menu" })

hl.bind("SUPER + K", hl.dsp.exec_cmd(rofiDir .. "/keyhints"), { description = "Show all keybindings" })

-- Screenshots
hl.bind("SUPER + P", hl.dsp.exec_cmd(scrDir .. "/screenshot"), { description = "Screenshot with editing" })
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd(scrDir .. "/screenshot smart clipboard"), { description = "Screenshot to clipboard" })

-- Screen recordings
hl.bind("SUPER + R", hl.dsp.exec_cmd(scrDir .. "/screenrecord --with-desktop-audio"), { description = "Record Screen" })
hl.bind("SUPER + SHIFT + R", hl.dsp.exec_cmd(scrDir .. "/screenrecord --with-microphone-audio"), { description = "Record + Mic" })
hl.bind("SUPER + ALT + R", hl.dsp.exec_cmd("~/Scripts/screenrecord --with-desktop-audio --with-microphone-audio --with-webcam"), { description = "Record + Mic + Webcam" })

-- Conversion
-- bindd = SUPER SHIFT, G, Convert mp4 video to gif, exec, $scrDir/video-to-gif 

-- Color picker
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker -a"), { description = "Color picker" })

-- Laptop Brightness adjusts (very useful for keyboard knob)
hl.bind("SUPER + ALT + XF86AudioRaiseVolume", hl.dsp.exec_cmd(osdclient .. " --brightness raise"), { description = "Brightness up" })
hl.bind("SUPER + ALT + XF86AudioLowerVolume", hl.dsp.exec_cmd(osdclient .. " --brightness lower"), { description = "Brightness up" })

-- External Monitor (for more options use "ddcutil capabilities")
hl.bind("SUPER + XF86AudioRaiseVolume", hl.dsp.exec_cmd("ddcutil setvcp 10 + 10"), { description = "Monitor Brightness up" })
hl.bind("SUPER + XF86AudioLowerVolume", hl.dsp.exec_cmd("ddcutil setvcp 10 - 10"), { description = "Monitor Brightness down" })
hl.bind("SUPER + F1", hl.dsp.exec_cmd(scrDir .. "/toggle-monitor"), { description = "Toggle Monitor Power" })

