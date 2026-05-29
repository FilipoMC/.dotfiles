local mainMod = "SUPER"

local terminal = "kitty"
local file_manager = "kitty --class file_manager -o confirm_os_window_close=0 zsh -lic yazi"

hl.bind(mainMod .. " + return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + ALT + CTRL + Q", hl.dsp.window.kill())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(mainMod .. " + V", hl.dsp.window.float())
hl.bind(mainMod .. " + ALT + V", hl.dsp.window.pin())
hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("fuzzel"))
hl.bind(mainMod .. " + D", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + CTRL + F", hl.dsp.window.fullscreen({ mode = "maximized" }))

-- Keyboard

hl.bind("CTRL + Menu", hl.dsp.exec_cmd("~/.config/hypr/switch-layout.sh"))
hl.bind("Menu", hl.dsp.exec_cmd("~/.config/hypr/toggle-caps2esc.sh"))

-- Gammastep

hl.bind(
	mainMod .. " + bracketleft",
	hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh temp_down"),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + bracketright",
	hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh temp_up"),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + bracketleft",
	hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh bright_down"),
	{ repeating = true }
)
hl.bind(
	mainMod .. " + SHIFT + bracketright",
	hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh bright_up"),
	{ repeating = true }
)
hl.bind(mainMod .. " + CTRL + bracketleft", hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh reset"))
hl.bind(mainMod .. " + CTRL + bracketright", hl.dsp.exec_cmd("~/.config/hypr/gammastep-change.sh off"))

-- Windows

hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))

hl.bind(mainMod .. " + ALT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + ALT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + ALT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + ALT + L", hl.dsp.window.move({ direction = "right" }))

hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.resize({ x = -20, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.resize({ x = 0, y = -20, relative = true }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.resize({ x = 0, y = 20, relative = true }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.resize({ x = 20, y = 0, relative = true }))

hl.bind(mainMod .. " + CTRL + SHIFT + H", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(mainMod .. " + CTRL + SHIFT + J", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod .. " + CTRL + SHIFT + K", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
hl.bind(mainMod .. " + CTRL + SHIFT + L", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Other binds

local screenshotCommand =
	"grimblast --freeze copysave area ~/Pictures/Screenshots/grimblast_$(date +%Y-%m-%d_%H-%m-%s).png"
local drawScreenshotCommand = "flameshot gui"

hl.bind(mainMod .. " + CTRL + SHIFT + S", hl.dsp.exec_cmd(screenshotCommand))
hl.bind(mainMod .. " + ALT + SHIFT + S", hl.dsp.exec_cmd("pkill -9 hyprpicker"))
hl.bind("Print", hl.dsp.exec_cmd(drawScreenshotCommand))

hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("killall -SIGUSR1 gpu-screen-recorder"))
hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd("~/.config/hypr/fuzzel-hyprpicker.sh"))
hl.bind(mainMod .. " + CTRL + V", hl.dsp.exec_cmd("~/.config/hypr/fuzzel-cliphist.sh"))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + CTRL + escape", hl.dsp.exec_cmd("nwg-bar"))

hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("nmcli device wifi rescan"))

-- Pyprland scratchpads toggle

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("pypr toggle music"))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("pypr toggle spotify"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("pypr toggle taskbar"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("pypr toggle calc"))
hl.bind(mainMod .. " + tab", hl.dsp.exec_cmd("pypr toggle term"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("pypr toggle network"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pypr toggle bt"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("pypr toggle onps"))

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("hyprctl dispatch darkwindow:shadeactive invert"))

-- Workspaces

for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
	hl.bind(mainMod .. " + ALT + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end

hl.bind(mainMod .. " + grave", hl.dsp.focus({ workspace = "empty" }))
hl.bind(mainMod .. " + SHIFT + grave", hl.dsp.window.move({ workspace = "empty" }))
hl.bind(mainMod .. " + ALT + grave", hl.dsp.window.move({ workspace = "empty", follow = false }))

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + A", hl.dsp.workspace.toggle_special("a"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(mainMod .. " + SHIFT + A", hl.dsp.window.move({ workspace = "special:a" }))
hl.bind(mainMod .. " + ALT + S", hl.dsp.window.move({ workspace = "special:magic", follow = false }))
hl.bind(mainMod .. " + ALT + A", hl.dsp.window.move({ workspace = "special:a", follow = false }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

-- PTT - mouse5
hl.bind("mouse:276", hl.dsp.pass({ window = "class:^(discord)$" }), { non_consuming = true })

-- Autoclicker toggle
hl.bind("CTRL + Y", hl.dsp.pass({ window = "class:^(BlurAutoClicker)$" }, { non_consuming = true }))

-- Discord overlay toggle
hl.bind(mainMod .. " + G", function()
	local handle = io.popen("pgrep -f discover-overlay")
	if handle ~= nil then
		local pid = handle:read("*a"):gsub("\n$", "")
		handle:close()

		if pid ~= "" then
			hl.exec_cmd("kill " .. pid)
		else
			hl.exec_cmd("discover-overlay")
		end
	end
end)
