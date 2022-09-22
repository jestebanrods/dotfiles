local ok, _ = pcall(require, "feline")
if not ok then
	return
end

require('feline').setup()
