-- ██╗      ██████╗  ██████╗ ██╗  ██╗       ██╗       ███████╗███████╗███████╗██╗     
-- ██║     ██╔═══██╗██╔═══██╗██║ ██╔╝       ██║       ██╔════╝██╔════╝██╔════╝██║     
-- ██║     ██║   ██║██║   ██║█████╔╝     ████████╗    █████╗  █████╗  █████╗  ██║     
-- ██║     ██║   ██║██║   ██║██╔═██╗     ██╔═██╔═╝    ██╔══╝  ██╔══╝  ██╔══╝  ██║     
-- ███████╗╚██████╔╝╚██████╔╝██║  ██╗    ██████║      ██║     ███████╗███████╗███████╗
-- ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝    ╚═════╝      ╚═╝     ╚══════╝╚══════╝╚══════╝

require("theme.colors")

-- https://wiki.hyprland.org/Configuring/Variables/#general

hl.layer_rule({
    match = { namespace = "blur on" },
    -- TODO: manual review — unmapped layer rule: "match:namespace rofi"
})

hl.layer_rule({
    match = { namespace = "ignore_alpha 0" },
    -- TODO: manual review — unmapped layer rule: "match:namespace rofi"
})

hl.layer_rule({
    match = { namespace = "animation slide bottom" },
    -- TODO: manual review — unmapped layer rule: "match:namespace rofi"
})

hl.layer_rule({
    match = { namespace = "blur on" },
    -- TODO: manual review — unmapped layer rule: "match:namespace waybar"
})

hl.layer_rule({
    match = { namespace = "ignore_alpha 0" },
    -- TODO: manual review — unmapped layer rule: "match:namespace waybar"
})

hl.layer_rule({
    match = { namespace = "blur on" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swayosd"
})

hl.layer_rule({
    match = { namespace = "ignore_alpha 0" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swayosd"
})

hl.layer_rule({
    match = { namespace = "blur on" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-control-center"
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-notification-window"
})

hl.layer_rule({
    match = { namespace = "ignore_alpha 0" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-control-center"
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-notification-window"
})

hl.layer_rule({
    match = { namespace = "ignore_alpha 0.5" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-control-center"
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-notification-window"
})

hl.layer_rule({
    match = { namespace = "animation slide right" },
    -- TODO: manual review — unmapped layer rule: "match:namespace swaync-control-center"
})

hl.env("GUM_CONFIRM_PROMPT_FOREGROUND", "6")
hl.env("GUM_CONFIRM_SELECTED_FOREGROUND", "0")
hl.env("GUM_CONFIRM_SELECTED_BACKGROUND", "2")
hl.env("GUM_CONFIRM_UNSELECTED_FOREGROUND", "0")
hl.env("GUM_CONFIRM_UNSELECTED_BACKGROUND", "8")

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 12,
        border_size = 2,
        col = {
            active_border = secondary,
            inactive_border = outline_variant,
        },
        resize_on_border = true,
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#decoration
    decoration = {
        rounding = 10,
        blur = {
            enabled = true,
            size = 7,
            passes = 4,
            ignore_opacity = true,
            noise = 0.0117,
            contrast = 0.8916,
            brightness = 0.8172,
            xray = false,
            popups = true,
        },
    },
    -- App launcher
    -- Top bar
    -- Notification
    -- Style Gum confirm to match terminal theme
    misc = {
        disable_hyprland_logo = true,
        -- force_default_wallpaper = 0  # Disables anime mascot wallpapers
        disable_splash_rendering = true,
        focus_on_activate = true,
        anr_missed_pings = 3,
        on_focus_under_fullscreen = 1,
    },
})

