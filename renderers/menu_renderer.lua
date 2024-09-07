-- renderers/menu_renderer.lua
local menu = require("menu")

local function render_menu()
    if menu.main_tree:push("HellChest Farmer (EletroLuz)-V1.3") then
        -- Renderiza o checkbox para habilitar o plugin de movimento
        local enabled = menu.plugin_enabled:get()
        menu.plugin_enabled:render("Enable Movement Plugin", "Enable or disable the movement plugin")

        -- Renderiza o checkbox para habilitar o plugin de abertura de baus
        menu.main_openDoors_enabled:render("Open Chests", "Enable or disable the chest plugin")

        -- Renderiza o checkbox para habilitar o loop dos waypoints
        menu.loop_enabled:render("Enable Loop", "Enable or disable looping waypoints")

        -- Renderiza o checkbox para habilitar/desabilitar o módulo de revive
        menu.revive_enabled:render("Enable Revive Module", "Enable or disable the revive module")

        -- Subseção para Profane Mindcage
        if menu.profane_mindcage_tree:push("Profane Mindcage Settings") then
            menu.profane_mindcage_toggle:render("Enable Profane Auto Use Mindcage", "Enable or disable automatic use of Profane Mindcage")
            menu.profane_mindcage_slider:render("Profane Mindcage Count", "Number of Profane Mindcages to use")
            menu.profane_mindcage_tree:pop()
        end

        -- Subseção para Move Threshold
        if menu.move_threshold_tree:push("Chest Move Range Settings") then
            menu.move_threshold_slider:render("Move Threshold", "Set Chest Max Move distance")
            menu.move_threshold_tree:pop()
        end

        menu.main_tree:pop()
    end
end

return {
    render = render_menu
}