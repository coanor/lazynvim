return { 
  "nvim-neo-tree/neo-tree.nvim", 
  opts = { 
    -- 你可以在这里覆盖 neo-tree 的其他默认设置 
		window = {
      -- The `mappings` table holds all the keybindings for the neo-tree window
      mappings = {
				 -- 这里我们直接定义一个 Lua 函数
        -- function(state) 是 neo-tree 映射的标准写法
        ["zz"] = function(state)
          -- "normal!" 表示执行普通模式命令，感叹号表示忽略用户的其他重映射
          -- "zz" 就是我们要的命令
          vim.cmd("normal! zz")
        end,

        -- 如果你也想要 zt (置顶) 和 zb (置底)，可以用同样的方法：
        ["zt"] = function(state) vim.cmd("normal! zt") end,
        ["zb"] = function(state) vim.cmd("normal! zb") end,
      },
    },
  }, 
  keys = { 
    --[[ 
      警告：下面的快捷键会覆盖默认的 Ctrl+n 功能！ 
      取消下面一行的注释来启用它。 
    --]] 
    {
			"<C-n>",
			"<cmd>Neotree toggle<cr>",
			desc = "Toggle Neo-tree",
			mode = "n"
		}, 
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
