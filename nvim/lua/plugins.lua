-- Bootstrap packer
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({
        "git", "clone", "--depth", "1",
        "https://github.com/wbthomason/packer.nvim", install_path
    })
    vim.cmd('packadd packer.nvim')
end

-- Load plugins
require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- Base
    use("Shougo/unite.vim")
    use("Shougo/vimfiler.vim")
    use("Shougo/vimshell.vim")
    use({"Shougo/vimproc.vim", run = "make"})
    use("tpope/vim-abolish")
    use("tpope/vim-endwise")
    use("tpope/vim-ragtag")
    use("tpope/vim-repeat")
    use("tpope/vim-surround")
    use("tpope/vim-unimpaired")
    use("xolox/vim-misc")
    use("xolox/vim-session")
    use("editorconfig/editorconfig-vim")
    use({
        "gelguy/wilder.nvim",
        config = function()
            local wilder = require('wilder')
            wilder.setup({modes = {':', '/', '?'}})
        end
    })

    -- Appearance
    use("chrisbra/colorizer")
    use("lifepillar/vim-solarized8")
    use("itchyny/lightline.vim")
    use("ncm2/float-preview.nvim")

    -- Git
    use("gregsexton/gitv")
    use("mattn/gist-vim")
    use("tpope/vim-fugitive")
    use("tpope/vim-git")
    use("airblade/vim-gitgutter")

    -- Language
    use("dense-analysis/ale")
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})

    -- Search
    use("vim-scripts/IndexedSearch")
    use("nelstrom/vim-visual-star-search")
    -- See :help easymotion, triggered as <leader><leader><motion>
    use("Lokaltog/vim-easymotion")
    -- File finder
    use({"junegunn/fzf", run = ":call fzf#install()"})
    use("junegunn/fzf.vim")

    -- Snippets
    use("roxma/nvim-yarp")
    use("roxma/vim-hug-neovim-rpc")
    use("Shougo/neosnippet.vim")
    use("Shougo/neosnippet-snippets")

    -- Text Objects
    use("austintaylor/vim-indentobject")
    use("bootleq/vim-textobj-rubysymbol")
    use("coderifous/textobj-word-column.vim")
    use("kana/vim-textobj-datetime")
    use("kana/vim-textobj-entire")
    use("kana/vim-textobj-function")
    use("kana/vim-textobj-user")
    use("lucapette/vim-textobj-underscore")
    use("nathanaelkane/vim-indent-guides")
    use("nelstrom/vim-textobj-rubyblock")
    use("thinca/vim-textobj-function-javascript")
    use("vim-scripts/argtextobj.vim")

    -- Other
    use("AndrewRadev/splitjoin.vim")
    use("Raimondi/delimitMate")

    -- Enables vim to understand filename:line_number format
    use("bogado/file-line")

    use("chaoren/vim-wordmotion")

    use("briandoll/change-inside-surroundings.vim")
    use("godlygeek/tabular")
    use("tomtom/tcomment_vim")
    use("vim-scripts/matchit.zip")
    use("Keithbsmiley/investigate.vim")
    use("chrisbra/NrrwRgn")
    use("mattn/webapi-vim")
    use("sjl/gundo.vim")
    use("tomtom/tlib_vim")

    use("vim-scripts/AnsiEsc.vim")
    use("vim-scripts/AutoTag")
    use("vim-scripts/lastpos.vim")
    use("vim-scripts/sudo.vim")
    use("vim-scripts/todo-txt.vim")
    use("goldfeld/ctrlr.vim")
end)

-- Hook packer to execute on changes to this file
local current_file = string.sub(debug.getinfo(1).source, 2)
vim.cmd(string.format([[
augroup packer_user_config
autocmd!
autocmd BufWritePost %s source %s | PackerCompile
autocmd User PackerCompileDone PackerInstall
augroup end
]], current_file, current_file))

if packer_bootstrap then
    require("packer").sync()
else
    require('packer').compile()
end
