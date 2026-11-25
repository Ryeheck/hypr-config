-- Theme: Omarchy midnight (omarchy)

local activeBorderColor = "rgba(81a2beaa)"
local secondary = activeBorderColor
local outline_variant = "rgba(969896ff)"

hl.config({
  general = { col = { active_border = activeBorderColor } },
  group = { col = { border_active = activeBorderColor } },
  decoration = {
    shadow = {
      color = "rgba(00000080)",
      color_inactive = "rgba(0000004d)",
      offset = "2 2",
      range = 20,
      render_power = 3,
    },
  },
})
