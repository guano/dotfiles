set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'

"	Plugin 'ervandew/supertab'

	Plugin 'scrooloose/nerdtree'
	"Plugin 'Xuyuanp/nerdtree-git-plugin'
	
"	Why doesn't this status bar always work?
	Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'powerline/fonts'

"	This looks fun to use
	Plugin 'easymotion/vim-easymotion'

"	SearchComplete. Tab completion inside of search
	Plugin 'vim-scripts/SearchComplete'

" Highlight words and stuff
	Plugin 't9md/vim-quickhl'

" Rainbow Parentheses
" doesn't yet work. Needs some configuration?
    Plugin 'luochen1990/rainbow'

" Vim-Surround
    Plugin 'tpope/vim-surround'
" cs"' inside " to change to single quotes.
" cs]{ inside [] to change to curly braces (} for no space)
" ds" inside " to delete them

" Vim-repeat
    Plugin 'tpope/vim-repeat'
" can repeat vim-surround with the . command

" Vim-Commentary
    Plugin 'tpope/vim-commentary'
" gcc comments a line
" gc[motion] comments motion
" Also uncomments. gcgc uncomments a whole bunch of commented lines

" Git stuff in vim.
" To open the same file in different revision `:Gvsplit master:%`
    Plugin 'tpope/vim-fugitive'

" Stuff to help with marks
" https://github.com/kshenoy/vim-signature - a bit less than super-simple,
" seems good
"        mx           Toggle mark 'x' and display it in the leftmost column
"        dmx          Remove mark 'x' where x is a-zA-Z
"        m,           Place the next available mark
"        m.           If no mark on line, place the next available mark.  Otherwise, remove (first) existing mark.
"        m-           Delete all marks from the current line
"        m<Space>     Delete all marks from the current buffer
"        ]`           Jump to next mark
"        [`           Jump to prev mark
"        ]'           Jump to start of next line containing a mark
"        ['           Jump to start of prev line containing a mark
"        `]           Jump by alphabetical order to next mark
"        `[           Jump by alphabetical order to prev mark
"        ']           Jump by alphabetical order to start of next line having a mark
"        '[           Jump by alphabetical order to start of prev line having a mark
"        m/           Open location list and display marks from current buffer
"        m[0-9]       Toggle the corresponding marker !@#$%^&*()
"        m<S-[0-9]>   Remove all markers of the same type
"        ]-           Jump to next line having a marker of the same type
"        [-           Jump to prev line having a marker of the same type
"        ]=           Jump to next line having a marker of any type
"        [=           Jump to prev line having a marker of any type
"        m?           Open location list and display markers from current buffer
"        m<BS>        Remove all markers
  Plugin 'kshenoy/vim-signature'
" A simpler one https://github.com/jeetsukumaran/vim-markology
"  Plugin 'jeetsukumaran/vim-markology'
" This one looks exciting, with a popout display, but requires vim 8.1+
" https://github.com/Yilin-Yang/vim-markbar
"  Yilin-Yang/vim-markbar

"   Auto linter. Let's see how it looks
"   ERORR: requires vim 8; not updated on nova yet
"    Plugin 'w0rp/ale'

" Visualstar: * and # searching of arbitrary text from Visual mode
" ERROR: visualstar isn't compatible with your vim version :(
"    Plugin 'subnut/visualstar.vim'

" vim-asterisk: provides improved * motions.
" ERROR: doesn't seem to work?
"    Plugin 'haya14busa/vim-asterisk'
    "1. stay star motions (z prefixed mappings): z star motions doesn't move your cursor.
    "2. visual star motions: Search selected text
    "3. Use smartcase unlike default one
    "4. Keep cursor position across matches Add following line in your vimrc
    "to enable this feature. let g:asterisk#keeppos = 1 (Default: 0)

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorschemes
" http://vimcolors.com/ is an amazing resource for these
"
" Supposed to be like elflord but better
	Plugin 'agude/vim-eldar'

" One I saw on vim-colors that looks good
	Plugin 'gkjgh/cobalt'

" Spacecamp. Purple, white, green
    Plugin 'jaredgorski/SpaceCamp'

" Abstract. Maroon, Indico, Teal, Cyan, Yellow
    Plugin 'jdsimcoe/abstract.vim'

" meta5. Turquoise, blue, navy, purple, rust
    Plugin 'christophermca/meta5'

" I ported Xcode’s high contrast colourscheme variants to Vim
" https://www.reddit.com/r/vim/comments/f9rvrl/i_ported_xcodes_high_contrast_colourscheme/
    Plugin 'arzg/vim-colors-xcode'

" A cool colorscheme I discovered on reddit
" But installation is broken. Maybe it wants neovim?
    Plugin 'kyoz/purify', { 'rtp': 'vim' }

" Another cool one on reddit
    Plugin 'pineapplegiant/spaceduck'
    " Doesn't seem to work on vim through tmux without some configuration.
    " It's probably terminal truecolors causing issues

" Stupid. Make rainbows
    "Plugin 'sedm0784/vim-rainbow-trails'
    " RainbowTrails to turn on

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy Finders!
"
" I am told this is awesome but I don't have time to look at it right now
" It's a fuzzy finder and requires fzf to be already installed.
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plugin 'junegunn/fzf.vim'
"   Standard. People say it's slow unless you install other stuff
    Plugin 'ctrlpvim/ctrlp.vim'
    let g:ctrlp_map = '<c-p>'
    let g:ctrlp_cmd = 'CtrlPMixed'
"   New. So might not be good. Note: requires 7.4.330+
"    Plugin 'Yggdroot/LeaderF'

""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags help

"   Source Code Browser plugin for Vim - can show all the tags
" doesn't seem to work
    "Plugin 'yegappan/taglist'

" Ctags class outline viewer
    Plugin 'majutsushi/tagbar'

" Verilog stuff
"
"   Should be good stuff for verilog
    Plugin 'vhda/verilog_systemverilog.vim'

"   emacs verilog mode, but for vim. I don't know if it will be good
"   vimscripts script_id=1875
    Plugin 'verilog_emacsauto.vim'

"   A not-very-good english but simple plugin to save folding information
"   vimscripts #4021
    Plugin 'vim-scripts/restore_view.vim'

    " TODO: got from derek. Should do syntax things like folding
    Plugin 'vimtaku/hl_matchit.vim'

    " Vlime for common lisp inside of vim
    "Plugin 'vlime/vlime', {'rtp': 'vim/'}
    "prevents me from editing parentheses!
    "Plugin 'kovisoft/paredit'

    " Vim which key. timing out the leader key should pop up a help menu
    Plugin 'liuchengxu/vim-which-key'

    " Options for language servers:
    " https://bluz71.github.io/2019/10/16/lsp-in-vim-with-the-lsc-plugin.html
    " https://github.com/vim-scripts/VimCompletesMe
    " https://github.com/prabirshrestha/vim-lsp
    " https://github.com/natebosch/vim-lsc
    " https://langserver.org/
    " https://microsoft.github.io/language-server-protocol/implementors/servers/
    "
    " Systemverilog language servers
    " Veridian. Recommends installing verible as well?
    " https://github.com/vivekmalneedi/veridian?tab=readme-ov-file
    " Doesn't look good
    " https://github.com/dalance/svls
    " Verible
    " https://github.com/chipsalliance/verible
    " I think veridian and verible are the most promising

    " Language server
    " lsc needs vim 8
    "Plugin 'natebosch/vim-lsc'
    " lsp needs vim 8
    "Plugin 'prabirshrestha/vim-lsp'
    "Plugin 'vim-scripts/VimCompletesMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" powerline fonts into airline
" Couldn't ever get it working though
"let g:airline_powerline_fonts = 1
" Get us a random theme every time!
let g:airline_theme='random' " Causes a ton of errors when :source $MYVIMRC

" ctags optimization if vim doesn't find tags in $PWD it looks in parents.
" tags=tags tells vim that the tags file will always be named tags
set autochdir
set tags=tags;

" It was hardcoded to /usr/local/bin but we have a better one module loaded
let g:tagbar_ctags_bin = 'ctags'




"	quickhl setup
"	I forget what all this does. Needs learning
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>j <Plug>(quickhl-cword-toggle)
nmap <Space>] <Plug>(quickhl-tag-toggle)
"map H <Plug>(operator-quickhl-manual-this-motion)
":QuickhlCwordEnable
let g:quickhl_manual_colors = [
    \ "gui=bold ctermfg=0  ctermbg=153 guifg=#ffffff guibg=#0a7383",
    \ "gui=bold ctermfg=0   ctermbg=9   guibg=#a07040 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=10   guibg=#4070a0 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=11   guibg=#40a070 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=14   guibg=#70a040 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=13   guibg=#0070e0 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=183   guibg=#007020 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=75  guibg=#d4a00d guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=194  guibg=#06287e guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=45  guibg=#5b3674 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=16  guibg=#4c8f2f guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=50  guibg=#1060a0 guifg=#ffffff",
    \ "gui=bold ctermfg=0   ctermbg=56  guibg=#a0b0c0 guifg=black",
    \ ]

" syntax hilighting
syntax on


set shell=bash

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab "FOR WORK WE USE SPACES, NOT TABS
"set filetype indent on
"set guifont=Monospace:h11
autocmd Filetype Systemverilog setlocal ts=2 sw=2 expandtab
autocmd Filetype Verilog setlocal ts=2 sw=2 expandtab
autocmd Filetype verilog setlocal ts=2 sw=2 expandtab
autocmd Filetype verilog_systemverilog setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

" This does not seem to work :(
autocmd Filetype Systemverilog setlocal foldmethod=indent
autocmd Filetype Verilog setlocal foldmethod=indent
autocmd Filetype verilog_systemverilog setlocal foldmethod=indent

set foldmethod=syntax
autocmd FileType python setlocal foldmethod=indent
"set foldcolumn=4 "(or 1)

" Turn linenumbers on
set number

" Allow backspace do delete auto-inserted stuff like indentation
set backspace=2

"	This, among other things, will display the leader key when I press it.
set showcmd

"	Instead of beeping, I want it to flash
set visualbell

"	I always want my status bar, not just when there is a split!
set laststatus=2

"	highlight search on.
set hlsearch

" case insensitive unless there's a capital. Smartcase requires ignorecase
set ignorecase
set smartcase

"	This makes it so that you the cursor doesn't hang out at the bottom of the
"	screen; it auto-scrolls the page with it! At EOF, push zz instead
set scrolloff=10 "by 10 lines

" change direction of new splits
set splitbelow
set splitright


" LSC settings
"let g:lsc_server_commands = {
" \  'systemverilog': {
" \    'command': 'verible-verilog-ls',
" \    'log_level': -1,
" \    'suppress_stderr': v:true,
" \  },
" \  'javascript': {
" \    'command': 'typescript-language-server --stdio',
" \    'log_level': -1,
" \    'suppress_stderr': v:true,
" \  }
" \}
"let g:lsc_auto_map = {
" \  'GoToDefinition': 'gd',
" \  'FindReferences': 'gr',
" \  'Rename': 'gR',
" \  'ShowHover': 'K',
" \  'FindCodeActions': 'ga',
" \  'Completion': 'omnifunc',
" \}
"let g:lsc_enable_autocomplete  = v:true
"let g:lsc_enable_diagnostics   = v:true
"let g:lsc_reference_highlights = v:false
"let g:lsc_trace_level          = 'off'
"

"" LSP settings
"if executable('verible-verilog-ls')
"    au User lsp_setup call lsp#register_server({
"        \ 'name': 'verible-verilog-ls',
"        \ 'cmd': {server_info->['verible-verilog-ls']},
"        \ 'allowlist': ['verilog', 'systemverilog'],
"        \ })
"endif

"function! s:on_lsp_buffer_enabled() abort
"    setlocal omnifunc=lsp#complete
"    setlocal signcolumn=yes
"    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"    nmap <buffer> gd <plug>(lsp-definition)
"    nmap <buffer> gs <plug>(lsp-document-symbol-search)
"    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"    nmap <buffer> gr <plug>(lsp-references)
"    nmap <buffer> gi <plug>(lsp-implementation)
"    nmap <buffer> gt <plug>(lsp-type-definition)
"    nmap <buffer> <leader>rn <plug>(lsp-rename)
"    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"    nmap <buffer> K <plug>(lsp-hover)
"    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
"
"    let g:lsp_format_sync_timeout = 1000
"    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
"
"    " refer to doc to add more commands
"endfunction
"
"augroup lsp_install
"    au!
"    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
"augroup END

" set completeopt=menu,menuone,noinsert,noselect,preview

""""""""""""""""""""""''''''''''''''''''''
" Color settings
" TrailingWhitespace has to happen before colorscheme
"   This hilights trailing spaces (among other things) in C code
" colorscheme clears all highlight groups, so set it before doing all your
" extra stuff
colorscheme cobalt
if has('gui_running')
    "colorscheme eldar
    " eldar doesn't work well with ctrl-p
    " but cobalt in gvim is blue background. bad. make black.
    hi Normal guibg=black
endif

let c_space_errors = 1
hi TrailingWhitespace ctermbg=1   
hi TrailingWhitespace guibg=red   
match TrailingWhitespace / \+$/
    
autocmd colorscheme * hi TrailingWhitespace guibg=red
autocmd colorscheme * hi TrailingWhitespace ctermbg=1
autocmd BufReadPre,FileReadPre * match TrailingWhitespace / \+$/
"hi link TrailingWhitespace Error is an option; the Error highlight group already exists
" see https://vi.stackexchange.com/questions/38433/how-can-i-use-the-error-color-for-guibg-and-ctermbg

" We want to get an existing highlight group and make one small change. Looks
" like that's not possible until vim 8.2+ with hlget() and hlset()
hi SignatureMarkLine ctermbg=53  guibg=#5f005f



"	sets the background color for hilighted text to be darker than normal
"	but only for gvim. not for terminal vim. I prefer cobalt in terminal vim,
"	but may want to change the highlight color later
hi Visual guibg=#555555
hi Folded guibg=#444444

"   Highlights the 80th column and changes the color to a very dull gray
"   For color options look up "xterm-256-color chart"
set colorcolumn=80
hi colorcolumn ctermbg=234
" a very dark light blue
hi colorcolumn guibg=#111126
hi folded ctermbg=023
"   I got tired of the withe hilighting of text. A more gray makes the cursor
"   more visible
hi Visual ctermbg=246
hi Search ctermbg=32


"   mostly for NERDtree. directories were a dark blue. make them a green
hi Directory ctermfg=40
hi Directory guifg=#00d700

" Colors for rainbow
let g:rainbow_active = 1
" Pink, Yellow, Green, White, Blue
let g:rainbow_conf = {
\   'ctermfgs': [13, 11, 10, 15, 39],
\}


" For gvim. Size 16 for 4K monitor
set guifont=Hack\ 16


"   This lets the mouse work in terminal vim like it does in gvim.
"   2 downsides: it lets you use the mouse (bad form) and copy/paste no longer
"   works (hilighting with mouse goes into visual mode)
"   sometimes I get weird hilight errors with cobalt, but I am pretty sure
"   that just happens when I use the mouse in terminal vim without the
"   following set. Will update if it keeps happening.
"   UPDATE- to copy/paste use \"+y and \"+p instead of y and p
set ttymouse=xterm2
set mouse=a

" Change autocomplete to bring up a list, and autocomplete the string until
" there's a mismatch. Change this to list:full if you want the menu but like
" the old behavior better
set wildmenu
set wildmode:list:longest
"   Not supported until vim 9
"set wildoptions=pum
"   Ignore case when in wildmenu (filenames, etc)
set wildignorecase

"set omnifunc=syntaxcomplete#Complete

