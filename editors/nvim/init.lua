pcall(require, "impatient")

if require("alpha.packer_installer")() then
	return
end

require("alpha.settings")
require("alpha.globals")
require("alpha.disables")
require("alpha.plugins")

require("alpha.telescope.setup")
require("alpha.telescope.mappings")
