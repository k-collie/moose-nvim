vim.filetype.add({
  extension = {
	-- override .i files to be hit
    i = 'hit',
  },
  pattern = {
	-- any file call tests under test/tests/ directories matches as hit
    ['.*/test/tests/.*/tests'] = {'hit', { priority = 10} },
  },
})
