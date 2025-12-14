return {
  -- 1. Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false, -- 设置为 true 可以透明背景
    },
  },

  -- 2. Kanagawa
  {
    "rebelot/kanagawa.nvim",
    opts = {
      theme = "wave", -- wave, dragon, lotus
    },
  },

  -- 3. Gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- 4. Nightfox (包含 nordfox, terafox 等)
  { "EdenEast/nightfox.nvim" },

  -- 5. Rose Pine
  { "rose-pine/neovim", name = "rose-pine" },

  -- 6. Cyberdream
  { "scottmckendry/cyberdream.nvim" },

  -- 7. OneDark (Atom 风格)
  { "navarasu/onedark.nvim" },

	 {
    "LazyVim/LazyVim",
    opts = {
      -- 在这里指定你想用的主题名称
      -- 注意：这里填的是主题名，不是插件名 (例如 "kanagawa", "catppuccin", "gruvbox")
      colorscheme = "gruvbox",
    },
  },
}
