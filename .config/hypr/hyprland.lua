-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")


------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "highres",
    position = "auto",
    scale    = "auto",
})


---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal    = "alacritty"
local fileManager = "nemo"
local menu        = "hyprlauncher"
local browser     = "helium-browser"


-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
-- hl.on("hyprland.start", function ()
--   hl.exec_cmd(terminal)
--   hl.exec_cmd("nm-applet")
--   hl.exec_cmd("waybar & hyprpaper & firefox")
-- end)


-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("XCURSOR_THEME", "capitaine-cursors")
hl.env("XCURSOR_SIZE", "32")
hl.env("HYPRCURSOR_SIZE", "32")
hl.env("SDL_VIDEODRIVER", "wayland")

--nvidia
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("__NV_PRIME_RENDER_OFFLOAD", "0")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("WLR_RENDERER_ALLOW_SOFTWARE", "1")
hl.env("EGL_PLATFORM", "wayland")



-----------------------
----- PERMISSIONS -----
-----------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

hl.config({
  ecosystem = {
    enforce_permissions = true,
  },
})


-- hl.permission("/usr/(bin|local/bin)/grim", "screencopy", "allow")
-- hl.permission("/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", "screencopy", "allow")
-- hl.permission("/usr/(bin|local/bin)/hyprpm", "plugin", "allow")
hl.permission({ binary = "power-button", type = "keyboard", mode = "allow" })
hl.permission({ binary = "keyd-virtual-keyboard", type = "keyboard", mode = "allow" })
hl.permission({ binary = ".*", type = "keyboard", mode = "deny" })
hl.permission({ binary = "/usr/(bin|local/bin)/grim", type = "screencopy", mode = "ask" })
hl.permission({ binary = "/usr/(lib|libexec|lib64)/xdg-desktop-portal-hyprland", type = "screencopy", mode = "ask" })

-----------------------
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    general = {
        gaps_in  = 2,
        gaps_out = 10,

        border_size = 3,

        col = {
            active_border   = "rgba(1a1249ff)",
            inactive_border = "rgba(e5e1e9ff)",
        },

        -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = true,

        -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
        allow_tearing = true,

        layout = "dwindle",
    },

    decoration = {
        rounding       = 0,

        -- Change transparency of focused and unfocused windows
        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = false,
        },

        blur = {
            enabled   = true,
        },
    },

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("winIn",          { type = "bezier", points = { {0.07, 0.88}, {0.04, 0.99} } })
hl.curve("winOut",         { type = "bezier", points = { {0.20, -0.15}, {0, 1} } })
hl.curve("liner",          { type = "bezier", points = { {1, 1},       {1, 1} } })
hl.curve("md3_standard",   { type = "bezier", points = { {0.12, 0},    {0, 1} } })
hl.curve("md3_decel",      { type = "bezier", points = { {0.05, 0.80}, {0.10, 0.97} } })
hl.curve("md3_accel",      { type = "bezier", points = { {0.20, 0},    {0.80, 0.08} } })
hl.curve("crazyshot",      { type = "bezier", points = { {0.1, 1.22},  {0.68, 0.98} } })
hl.curve("hyprnostretch",  { type = "bezier", points = { {0.05, 0.82}, {0.03, 0.94} } })
hl.curve("menu_decel",     { type = "bezier", points = { {0.05, 0.82}, {0, 1} } })
hl.curve("menu_accel",     { type = "bezier", points = { {0.20, 0},    {0.82, 0.10} } })
hl.curve("easeOutCirc",    { type = "bezier", points = { {0, 0.48},    {0.38, 1} } })
hl.curve("easeOutExpo",    { type = "bezier", points = { {0.10, 0.94}, {0.23, 0.98} } })
hl.curve("softAcDecel",    { type = "bezier", points = { {0.20, 0.20}, {0.15, 1} } })
hl.curve("md2",            { type = "bezier", points = { {0.30, 0},    {0.15, 1} } })
hl.curve("OutBack",        { type = "bezier", points = { {0.28, 1.40}, {0.58, 1} } })
hl.curve("easeInOutCirc",  { type = "bezier", points = { {0.78, 0},    {0.15, 1} } })
hl.curve("wind",           { type = "bezier", points = { {0.12, 0.92}, {0.08, 1.0} } })
hl.curve("overshot",       { type = "bezier", points = { {0.18, 0.95}, {0.22, 1.03} } })

hl.animation({ leaf = "windows",          enabled = true,  speed = 3,   bezier = "wind",       style = "popin 60%" })
hl.animation({ leaf = "windowsIn",        enabled = true,  speed = 4,   bezier = "overshot",   style = "popin 60%" })
hl.animation({ leaf = "windowsOut",       enabled = true,  speed = 5,   bezier = "overshot",   style = "popin 60%" })
hl.animation({ leaf = "windowsMove",      enabled = true,  speed = 4,   bezier = "overshot",   style = "slide" })
hl.animation({ leaf = "border",           enabled = false, speed = 1.6, bezier = "liner" })
hl.animation({ leaf = "borderangle",      enabled = true,  speed = 82,  bezier = "liner",      style = "loop" })
hl.animation({ leaf = "fade",             enabled = true,  speed = 1.8, bezier = "md3_decel" })
hl.animation({ leaf = "layersIn",         enabled = true,  speed = 1.8, bezier = "menu_decel", style = "slide" })
hl.animation({ leaf = "layersOut",        enabled = true,  speed = 1.5, bezier = "menu_accel" })
hl.animation({ leaf = "fadeLayersIn",     enabled = true,  speed = 1.6, bezier = "menu_decel" })
hl.animation({ leaf = "fadeLayersOut",    enabled = true,  speed = 1.8, bezier = "menu_accel" })
hl.animation({ leaf = "workspaces",       enabled = false, speed = 0.3, bezier = "menu_decel", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true,  speed = 2.3, bezier = "md3_decel",  style = "slidefadevert 15%" })

-- Ref https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- "Smart gaps" / "No gaps when only"
-- uncomment all if you wish to use that.
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({
--     name  = "no-gaps-wtv1",
--     match = { float = false, workspace = "w[tv1]" },
--     border_size = 0,
--     rounding    = 0,
-- })
-- hl.window_rule({
--     name  = "no-gaps-f1",
--     match = { float = false, workspace = "f[1]" },
--     border_size = 0,
--     rounding    = 0,
-- })

-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})

----------------
----  MISC  ----
----------------

hl.config({
    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,
        sensitivity  = -0.5, -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "adaptive",
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
-- hl.device({
--     name        = "epic-mouse-v1",
--     sensitivity = -0.5,
-- })


---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd("pkill rofi || rofi -modi drun,run -show drun -show-icons"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only



hl.bind("ALT + SHIFT + 3", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh"))
hl.bind("ALT + SHIFT + 4", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot-area.sh"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })


--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule {
    focus_on_activate = true,
    match = {
        class = ".*"
    }
}

hl.window_rule {
    no_focus = true,
    match = {
        class = "^(steam)$",
        title = "^(notificationtoasts_.*_desktop)"
    }
}

hl.window_rule {
    float = true,
    match = {
        class = "(?i).*(Pavucontrol|Blueman-manager|nm-connection-editor|qalculate-gtk|Pygame window).*",
    },
}

hl.window_rule {
    tile = true,
    match = {
        title = "(?i).*(Brave-browser|Chromium|Helium).*",
    },
}

hl.window_rule {
    float = true,
    pin   = true,
    match = {
        title = "^(Picture-in-Picture)$"
    },
}

-- Discord
hl.window_rule {
    workspace = "1 silent",
    match = {
        class = "^(discord)$",
    },
}
-- Discord Popup
hl.window_rule {
    float = true,
    pin   = true,
    match = {
        class = "^(discord)$",
        initial_title = "^(.* Popout)$"
    },
}

hl.window_rule {
    workspace = "9 silent",
    match = {
        class = "^(steam)$",
    },
}

-- screenshare
hl.window_rule {
    name = "no screenshare",
    no_screen_share = true,
    match = {
        class = "^(obs|obsidian|obs-studio|discord)$"
    },
}

hl.window_rule {
    match = {
        class = "(?i).*whatsapp.*"
    },
    no_screen_share = true,
}

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function ()
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("awww-daemon -q")
    hl.exec_cmd("uwsm app -- swaync")
    hl.exec_cmd("uwsm app -- wl-paste --watch cliphist store")
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    hl.exec_cmd("~/.config/hypr/scripts/gtk.sh")
end)
