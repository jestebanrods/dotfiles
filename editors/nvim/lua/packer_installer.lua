local downloadPacker = function()
  if vim.fn.input "Download Packer ? [Y/n] " ~= "Y" then
    return
  end

  local directory = string.format("%s/site/pack/packer/start", vim.fn.stdpath "data")

  vim.fn.mkdir(directory, "p")

  local out = vim.fn.system(
    string.format("git clone %s %s", "https://github.com/wbthomason/packer.nvim", directory .. "/packer.nvim")
  )

  print " "
  print "Downloading packer.nvim ..."
  print(out)
  print "( You'll need to restart now )"
end

return function()
  if not pcall(require, "packer") then
    downloadPacker()
    return true
  end

  return false
end
