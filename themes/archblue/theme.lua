----------------------------------------------
-- ArchBlue theme based on xresources theme -- 
--       Optimized for a 13" laptop         --
--    By Daniel Rees https://danrees.me     --
----------------------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local themes_path = ("~/.config/awesome/themes/")
local theme = dofile("/usr/share/awesome/themes/default/theme.lua")

-- Fonts and other properties are optimized for a 13" laptop
-- so size is large compared to most themes. Adjust font size
-- and other sizes including set by dpi function as required.

theme.font          = "Noto Sans 14"
theme.taglist_font  = "Noto Sans Bold 14"

-- Regular theme color settings
theme.bg_normal     = "#000028"
theme.bg_focus      = "#1793d0"
theme.bg_urgent     = "#ef8171"
theme.bg_minimize   = "#666666"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ffffff"
theme.fg_focus      = theme.bg_normal
theme.fg_urgent     = theme.bg_normal
theme.fg_minimize   = theme.bg_normal

theme.titlebar_bg_focus = theme.bg_normal
theme.titlebar_fg_focus = theme.fg_normal

-- Set gap between windows
theme.useless_gap   = dpi(3)

-- Set window border properties
theme.border_width  = dpi(3)
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_focus
theme.border_marked = "#e5f779"

-- Set variables for hotkeys popup
theme.hotkeys_font  = "Noto Sans Mono Bold 11"
theme.hotkeys_description_font = "Noto Sans 11"
theme.hotkeys_group_margin = 50 
theme.hotkeys_border_width = theme.border_width
theme.hotkeys_border_color = theme.border_focus
theme.hotkeys_modifiers_fg = theme.bg_focus

-- Set tooltil colors
theme.tooltip_fg = theme.fg_normal
theme.tooltip_bg = theme.bg_normal

-- Set icon size for notifications 
theme.notification_icon_size = 64

theme.awesome_icon = themes_path .. "archblue/archicon.png"
theme.menu_submenu_icon = "/usr/share/awesome/themes/default/submenu.png"
theme.menu_height = dpi(32)
theme.menu_width  = dpi(200)

theme.awesome_submenu_icon = theme_assets.awesome_icon(
    dpi(32), theme.bg_focus, theme.fg_focus
)

-- Generate taglist squares:
local taglist_square_size = dpi(6)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Try to determine if we are running light or dark colorscheme:
local bg_numberic_value = 0;
for s in theme.bg_normal:gmatch("[a-fA-F0-9][a-fA-F0-9]") do
    bg_numberic_value = bg_numberic_value + tonumber("0x"..s);
end
local is_dark_bg = (bg_numberic_value < 383)

theme.wallpaper = themes_path .. "archblue/background.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
