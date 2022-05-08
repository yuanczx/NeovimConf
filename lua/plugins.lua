return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neoclide/coc.nvim'
  use 'tjdevries/colorbuddy.vim'
  use 'Th3Whit3Wolf/onebuddy'
  use 'preservim/nerdtree'
  use 'preservim/nerdcommenter'
  use 'vim-airline/vim-airline'
  use 'iamcco/markdown-preview.nvim'
  use {'nvim-telescope/telescope.nvim',requires = { {'nvim-lua/plenary.nvim'} }  }

end)

