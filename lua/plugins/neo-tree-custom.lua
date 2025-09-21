return { 
  "nvim-neo-tree/neo-tree.nvim", 
  opts = { 
    -- 你可以在这里覆盖 neo-tree 的其他默认设置 
  }, 
  keys = { 
    --[[ 
      警告：下面的快捷键会覆盖默认的 Ctrl+n 功能！ 
      取消下面一行的注释来启用它。 
    --]] 
    { "<C-n>", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree", mode = "n" }, 
    -- 推荐的替代方案：使用 <leader>e ("e" 代表 explorer) 
    -- LazyVim 的 leader 键默认为空格键 
    { 
      "<leader>e", 
      function() 
        vim.cmd("Neotree toggle") 
      end, 
      desc = "Toggle file explorer (Neo-tree)", 
    }, 
  }, 
}
