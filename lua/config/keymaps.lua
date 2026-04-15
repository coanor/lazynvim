-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fp", function()
    local path = vim.fn.expand("%:.") -- 获取相对路径
    local buf = vim.api.nvim_create_buf(false, true)

    -- 设置路径内容
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { path })

    -- 定义窗口宽度（占用当前屏幕宽度的 60%）
    local width = math.floor(vim.o.columns * 0.6)
    -- 计算预估行数（路径长度 / 宽度，向上取整，再加 2 行 Buffer）
    local height = math.ceil(#path / width) + 2

    local opts = {
        relative = "editor",
        width = width,
        height = height,
        col = (vim.o.columns - width) / 2,
        row = (vim.o.lines - height) / 2,
        style = "minimal",
        border = "rounded",
        title = " 󰈚 Relative Path ",
        title_pos = "center",
    }

    local win = vim.api.nvim_open_win(buf, true, opts)

    -- 【关键配置】：强制开启换行并设置换行模式
    vim.api.nvim_win_set_option(win, "wrap", true)           -- 开启折行
    vim.api.nvim_win_set_option(win, "linebreak", true)      -- 尽量不在单词中间折行
    vim.api.nvim_win_set_option(win, "breakindent", true)    -- 折行时保持缩进

    -- 快捷键：按 q 或 Esc 退出弹窗
    vim.keymap.set("n", "q", "<cmd>q<cr>", { buffer = buf, silent = true })
    vim.keymap.set("n", "<Esc>", "<cmd>q<cr>", { buffer = buf, silent = true })
end, { desc = "Show Full Wrapped Path" })
