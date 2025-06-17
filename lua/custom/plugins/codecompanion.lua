-- AI agent and chat

return {
  {
    'olimorris/codecompanion.nvim',

    config = function()
      require('codecompanion').setup {
        strategies = {
          chat = {
            adapter = 'openai',
          },
          inline = {
            adapter = 'openai',
          },
        },
        adapters = {
          openai = function()
            return require('codecompanion.adapters').extend('openai', {
              schema = {
                model = {
                  default = 'o3-mini',
                },
              },
            })
          end,
        },
      }
    end,

    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'j-hui/fidget.nvim', -- Display status

      { -- render the markdown in the chat buffer
        'MeanderingProgrammer/render-markdown.nvim',
        ft = { 'markdown', 'codecompanion' },
      },
      { -- copy images from your system clipboard into a chat buffer via :PasteImage
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        cmd = 'PasteImage',
        opts = {
          filetypes = {
            codecompanion = {
              prompt_for_file_name = false,
              template = '[Image]($FILE_PATH)',
              use_absolute_path = true,
            },
          },
        },
      },
    },

    -- opts = { log_level = 'DEBUG', -- or "TRACE" }, -- Turn on logging

    init = function()
      vim.cmd [[cab cc CodeCompanion]] -- `cc + space` in command line mode
    end,
  },
}
