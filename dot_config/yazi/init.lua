require("full-border"):setup()
require("smart-enter"):setup({
	open_multi = true,
})
-- 🔥 GIT CUSTOM STYLE
th.git = th.git or {}
th.git.modified = ui.Style():fg("#e96f32")
th.git.added = ui.Style():fg("green")
th.git.ignored = ui.Style():fg("#616665")
th.git.deleted = ui.Style():fg("red"):bold()

th.git.modified_sign = "M"
th.git.added_sign = "A"
th.git.ignored_sign = " "
th.git.deleted_sign = "󰗨"

require("git"):setup({
	-- Order of status signs showing in the linemode
	order = 1500,
})

Header:children_add(function()
	if ya.target_family() ~= "unix" then
		return ui.Line({})
	end
	return ui.Span(ya.user_name() .. "@" .. ya.host_name() .. ":"):fg("magenta")
end, 500, Header.LEFT)
