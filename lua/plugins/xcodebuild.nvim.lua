return {}
--[[

For now this is removed - check following resources:
https://wojciechkulik.pl/ios/why-switching-from-xcode-to-neovim-can-become-the-best-decision-you-ever-made
https://github.com/wojciech-kulik/xcodebuild.nvim
https://github.com/wojciech-kulik/xcodebuild.nvim/wiki
https://github.com/CocoaPods/Xcodeproj
https://wojciechkulik.pl/ios/the-complete-guide-to-ios-macos-development-in-neovim
https://github.com/krzysztofzablocki/Inject
https://github.com/SolaWing/xcode-build-server
https://www.swift.org/documentation/articles/zero-to-swift-nvim.html
https://github.com/mmllr/neotest-swift-testing
https://github.com/swiftlang/sourcekit-lsp
https://moroz.dev/blog/learning-ios-and-swift-day-nine/
https://notes.joschua.io/50-Slipbox/Setup-Swift-LSP-in-nvim


return {
  "wojciech-kulik/xcodebuild.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-tree.lua", -- (optional) to manage project files
    "stevearc/oil.nvim", -- (optional) to manage project files
    "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
  },
  config = function()
    require("xcodebuild").setup({
        -- put some options here or leave it empty to use default settings
    })
  end,
}

]]--
