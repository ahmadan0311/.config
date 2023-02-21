require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		typescript = "deno run",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
    c = "cd $dir && gcc $fileName -lm && $dir/a.out",
    cpp = "cd $dir && gcc -o $fileNameWithoutExt $fileName -lm && $dir/$fileNameWithoutExt",
    html = "brave $fileName"
	},
})

vim.api.nvim_set_keymap( "n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true } )
vim.api.nvim_set_keymap( "n", "<leader>q", ":q<CR>", { noremap = true, silent = true } )
