---------------------------------------------------
-- Simple tag hotkeys for awful.hotkeys_widget   --
--     by Daniel Rees https://danrees.me         --
-- Based on original included in Awesome package --
--     by      nahsi nashi@airmail.cc            -- 
---------------------------------------------------

local hotkeys_popup = require("awful.hotkeys_popup.widget")

local tags = {}

function tags.add_rules_for_terminal(rule)
    for group_name, group_data in pairs({
        ["Awesome: Tags"] = rule,
    }) do
        hotkeys_popup.add_group_rules(group_name, group_data)
    end
end

local tags_keys = {
    ["Awesome: Tags"] = {
        {
        modifiers = { "Mod4" },
        keys = {
            ["1..9"]     = "view tag",
        }
    },

        {
        modifiers = { "Mod4", "Control" },
        keys = {
            ["1..9"]     = "toggle tag",
        }
    },

        {
        modifiers = { "Mod4", "Control", "Shift" },
        keys = {
            ["1..9"]     = "toggle focused client",
        }
    },

    {
        modifiers = { "Mod4", "Shift" },
        keys = {
            ["1..9"]     = "move focused client",
        }
    }
}
}

hotkeys_popup.add_hotkeys(tags_keys)

return tags

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
