pcall(require, "impatient")

if require("packer_installer")() then
	return
end

require("settings")
require("disables")
require("plugins")
