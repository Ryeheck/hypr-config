-- ███╗   ███╗ ██████╗ ███╗   ██╗██╗████████╗ ██████╗ ██████╗ ███████╗
-- ████╗ ████║██╔═══██╗████╗  ██║██║╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝
-- ██╔████╔██║██║   ██║██╔██╗ ██║██║   ██║   ██║   ██║██████╔╝███████╗
-- ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║   ██║   ██║██╔══██╗╚════██║
-- ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║██║   ██║   ╚██████╔╝██║  ██║███████║
-- ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝

-- See https://wiki.hyprland.org/Configuring/Monitors/
-- List current monitors and resolutions possible: hyprctl monitors
-- Format: monitor = [port], resolution, position, scale
-- You must relaunch Hyprland after changing any envs 

-- Optimized for retina-class 2x displays, like 13" 2.8K, 27" 5K, 32" 6K.
-- env = GDK_SCALE,2
-- monitor=,preferred,auto,auto

-- Good compromise for 27" or 32" 4K monitors (but fractional!)
-- env = GDK_SCALE,1.75
-- monitor=,preferred,auto,1.666667

-- Straight 1x setup for low-resolution displays like 1080p or 1440p
-- env = GDK_SCALE,1
-- monitor=,preferred,auto,1

-- Example for Framework 13 w/ 6K XDR Apple display
-- monitor = DP-5, 6016x3384@60, auto, 2
-- monitor = eDP-1, 2880x1920@120, auto, 2

local function on(n)
  local p = io.popen("cat /sys/class/drm/card*-" .. n .. "/status 2>/dev/null")
  local s = p:read("*a"); p:close()
  return s:match("^connected") ~= nil
end

local dp = on("DP-3")
hl.monitor({ 
    output = "DP-3",
    mode = "1920x1080@180.00Hz",
    position = "0x0",
    scale = 1, 
    disabled = not dp 
})
hl.monitor({ 
    output = "HDMI-A-1", 
    mode = "preferred", 
    position = "0x0", 
    scale = 1, 
    disabled = dp 
})

-- monitor=eDP-1,preferred,0x0,1      # Set laptop screen to the left with preferred resolution and scale 1
-- monitor=,preferred,auto,1

-- Laptop screen toggle
hl.bind("SUPER + ALT + H", hl.dsp.exec_cmd("hyprctl keyword monitor \"eDP-1,disable\""), { description = "Laptop screen off" })
hl.bind("SUPER + ALT + l", hl.dsp.exec_cmd("hyprctl keyword monitor \"eDP-1, preferred, 0x0, 1\""), { description = "Laptop screen on" })

-- #####  --------------------------------  ######
-- #####   WORKSPACE → MONITOR ASSIGNMENT   ######
-- #####  --------------------------------  ######

--  EXTERNAL MONITOR (HDMI-A-1)
-- workspace = 1, monitor:HDMI-A-1
-- workspace = 3, monitor:HDMI-A-1
-- workspace = 4, monitor:HDMI-A-1
-- workspace = 8, monitor:HDMI-A-1
-- workspace = 9, monitor:HDMI-A-1
-- workspace = 10, monitor:HDMI-A-1
--
-- # LAPTOP SCREEN (eDP-1)
-- workspace = 2, monitor:eDP-1
-- workspace = 5, monitor:eDP-1
-- workspace = 6, monitor:eDP-1
-- workspace = 7, monitor:eDP-1

-- #####  --------------------------------  ######
-- #####      WORKSPACE → APP ASSIGNMENT    ######
-- #####  --------------------------------  ######

hl.window_rule({
    match = {
        class = "(dev.zed.Zed)",
    },
    workspace = "2",
})

hl.window_rule({
    match = {
        class = "^(brave-perplexity.ai__-Default)$",
    },
    workspace = "3",
})

hl.window_rule({
    match = {
        class = "^(brave-web.whatsapp.com__-Default)$",
    },
    workspace = "5",
})

hl.window_rule({
    match = {
        class = "(org.telegram.desktop)",
    },
    workspace = "6",
})

hl.window_rule({
    match = {
        class = "^(brave-app.todoist.com__-Default)$",
    },
    workspace = "7",
})

hl.window_rule({
    match = {
        class = "(obsidian)",
    },
    workspace = "8",
})

hl.window_rule({
    match = {
        class = "(spotify)",
    },
    workspace = "9",
})

hl.window_rule({
    match = {
        class = "(vesktop)",
    },
    workspace = "10",
})

