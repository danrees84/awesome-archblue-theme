---------------------------------------------------
-- Firefox hotkeys for awful.hotkeys_widget      --
--     by Daniel Rees https://danrees.me         --
-- Based on original included in Awesome package --
--     by Jonathan jonathan@tinypulse.com        -- 
---------------------------------------------------

local hotkeys_popup = require("awful.hotkeys_popup.widget")
local fire_rule = { class = { "firefox", "Firefox" } }
for group_name, group_data in pairs({
    ["Firefox: Navigation"] = { color = "#cb9542", rule_any = fire_rule},
    ["Firefox: Windows and Tabs"] = { color = "#cb9542", rule_any = fire_rule },
    ["Firefox: Bookmarks"] = { color = "#cb9542", rule_any = fire_rule },
    
}) do
    hotkeys_popup.add_group_rules(group_name, group_data)
end

local firefox_keys = {

    ["Firefox: Windows and Tabs"] = {{
        modifiers = { "Mod1" },
        keys = {
            ["1..9"] = "go to tab"
        }
    }, {
        modifiers = { "Ctrl" },
        keys = {
            t = "new tab",
            w = 'close tab',
            ['Tab'] = "next tab",
            q = 'quit',
            n = 'new window'
        }
    }, {
        modifiers = { "Ctrl", "Shift" },
        keys = {
          ['Tab'] = "previous tab",
          w = 'close window',
          ['Page Up'] = 'move tab left',
          ['Page Down'] = 'move tab right',
          ['End'] = 'move tab to end',
          p = 'new private window'
        }
    }},

    ["Firefox: Navigation"] = {{
        modifiers = { "Mod1" },
        keys = {
            ['Left'] = "back",
            ['Right'] = "forward",
            ['Home'] = "home"
        }
    }, {
        modifiers = { "Ctrl" },
        keys = {
            O = "open file",
            R = "reload",
        }
    }, {
        modifiers = { "Ctrl", "Shift" },
        keys = {
          R = "reload (override cache)"
        }
    }},

    ["Firefox: Bookmarks"] = {{
        modifiers = { "Ctrl" },
        keys = {
            d = "bookmark this page",
            b = "bookmark sidebar",
        }
    }, {
        modifiers = { "Ctrl", "Shift" },
        keys = {
          b = "show/hide bookmarks toolbar",
          o = "show/hide all bookmarks",
        }
    }},

}

hotkeys_popup.add_hotkeys(firefox_keys)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
