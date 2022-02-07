version 6.0
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(cmp.u.k.fallback:22) 
inoremap <silent> <Plug>(cmp.u.k.fallback:21) 
inoremap <silent> <Plug>(cmp.u.k.fallback:20) <NL>
inoremap <silent> <expr> <Plug>(cmp.u.k.fallback:19) v:lua.cmp.utils.keymap.set_map(19)
inoremap <silent> <Plug>(cmp.u.k.fallback:18) 
inoremap <silent> <Plug>(cmp.u.k.fallback:17) 
cnoremap <silent> <S-Tab> <Cmd>call v:lua.cmp.utils.keymap.set_map(15)
inoremap <silent> <S-Tab> <Cmd>call v:lua.cmp.utils.keymap.set_map(14)
inoremap <silent> <Plug>(cmp.u.k.fallback:14) <S-Tab>
inoremap <silent> <Plug>(cmp.u.k.fallback:11) 	
inoremap <silent> <Plug>(cmp.u.k.fallback:10) 
inoremap <silent> <C-Space> <Cmd>call v:lua.cmp.utils.keymap.set_map(9)
inoremap <silent> <Plug>(cmp.u.k.fallback:9) <C-Space>
cnoremap <silent> <Down> <Cmd>call v:lua.cmp.utils.keymap.set_map(8)
inoremap <silent> <Down> <Cmd>call v:lua.cmp.utils.keymap.set_map(7)
inoremap <silent> <Plug>(cmp.u.k.fallback:7) <Down>
inoremap <silent> <Plug>(cmp.u.k.fallback:5) 
inoremap <silent> <Plug>(cmp.u.k.fallback:3) 
cnoremap <silent> <Up> <Cmd>call v:lua.cmp.utils.keymap.set_map(2)
inoremap <silent> <Up> <Cmd>call v:lua.cmp.utils.keymap.set_map(1)
inoremap <silent> <Plug>(cmp.u.k.fallback:1) <Up>
cnoremap <silent> <Plug>(TelescopeFuzzyCommandSearch) e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"
noremap! <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap! <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
inoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
inoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
inoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
inoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
inoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
inoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
inoremap <silent> <M-j> :m .+1==gi
inoremap <silent> <M-k> :m .-2==gi
inoremap <silent> <M-Down> j
inoremap <silent> <M-Up> k
inoremap <silent> <M-Right> l
inoremap <silent> <M-Left> h
nnoremap <silent>  h
tnoremap <silent>  h
snoremap <silent> 	 <Cmd>call v:lua.cmp.utils.keymap.set_map(13)
nnoremap <silent> 	 :BufferNext
nnoremap <silent> <NL> j
tnoremap <silent> <NL> j
nnoremap <silent>  k
tnoremap <silent>  k
tnoremap <silent>  l
nnoremap <silent>  l
nnoremap <silent>  :call QuickFixToggle()
nnoremap <silent>  :w
nnoremap <silent>  <Cmd>execute v:count . "ToggleTerm"
nnoremap <silent> Þ <Nop>
nnoremap <silent>  <Cmd>lua require("which-key").show("\23", {mode = "n", auto = true})
nnoremap <silent>  Þ <Nop>
nnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "n", auto = true})
nnoremap <silent>  lpÞ <Nop>
nnoremap <silent>  lÞ <Nop>
nnoremap <silent>  sÞ <Nop>
nnoremap <silent>  TÞ <Nop>
nnoremap <silent>  gÞ <Nop>
nnoremap <silent>  bÞ <Nop>
nnoremap <silent>  LlÞ <Nop>
nnoremap <silent>  LÞ <Nop>
nnoremap <silent>  pÞ <Nop>
xnoremap <silent>  Þ <Nop>
xnoremap <silent>   <Cmd>lua require("which-key").show(" ", {mode = "v", auto = true})
vnoremap <nowait> <silent>  / <Cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())
nnoremap <nowait> <silent>  pc <Cmd>PackerCompile
nnoremap <nowait> <silent>  pS <Cmd>PackerStatus
nnoremap <nowait> <silent>  pr <Cmd>lua require('lvim.plugin-loader').recompile()
nnoremap <nowait> <silent>  pu <Cmd>PackerUpdate
nnoremap <nowait> <silent>  ps <Cmd>PackerSync
nnoremap <nowait> <silent>  pi <Cmd>PackerInstall
nnoremap <nowait> <silent>  lpt <Cmd>lua require('lvim.lsp.peek').Peek('typeDefinition')
nnoremap <nowait> <silent>  lpi <Cmd>lua require('lvim.lsp.peek').Peek('implementation')
nnoremap <nowait> <silent>  lpd <Cmd>lua require('lvim.lsp.peek').Peek('definition')
nnoremap <nowait> <silent>  la <Cmd>lua require('lvim.core.telescope').code_actions()
nnoremap <nowait> <silent>  lk <Cmd>lua vim.diagnostic.goto_prev()
nnoremap <nowait> <silent>  ld <Cmd>Telescope diagnostics bufnr=0 theme=get_ivy
nnoremap <nowait> <silent>  lw <Cmd>Telescope diagnostics
nnoremap <nowait> <silent>  lj <Cmd>lua vim.diagnostic.goto_next()
nnoremap <nowait> <silent>  ll <Cmd>lua vim.lsp.codelens.run()
nnoremap <nowait> <silent>  lI <Cmd>LspInstallInfo
nnoremap <nowait> <silent>  lr <Cmd>lua vim.lsp.buf.rename()
nnoremap <nowait> <silent>  ls <Cmd>Telescope lsp_document_symbols
nnoremap <nowait> <silent>  lS <Cmd>Telescope lsp_dynamic_workspace_symbols
nnoremap <nowait> <silent>  lq <Cmd>lua vim.diagnostic.setloclist()
nnoremap <nowait> <silent>  lf <Cmd>lua vim.lsp.buf.formatting()
nnoremap <nowait> <silent>  li <Cmd>LspInfo
nnoremap <nowait> <silent>  h <Cmd>nohlsearch
nnoremap <nowait> <silent>  ; <Cmd>Dashboard
nnoremap <nowait> <silent>  w <Cmd>w!
nnoremap <nowait> <silent>  sp <Cmd>lua require('telescope.builtin.internal').colorscheme({enable_preview = true})
nnoremap <nowait> <silent>  sh <Cmd>Telescope help_tags
nnoremap <nowait> <silent>  sr <Cmd>Telescope oldfiles
nnoremap <nowait> <silent>  sC <Cmd>Telescope commands
nnoremap <nowait> <silent>  sk <Cmd>Telescope keymaps
nnoremap <nowait> <silent>  sM <Cmd>Telescope man_pages
nnoremap <nowait> <silent>  sb <Cmd>Telescope git_branches
nnoremap <nowait> <silent>  sc <Cmd>Telescope colorscheme
nnoremap <nowait> <silent>  sR <Cmd>Telescope registers
nnoremap <nowait> <silent>  sf <Cmd>Telescope find_files
nnoremap <nowait> <silent>  st <Cmd>Telescope live_grep
nnoremap <nowait> <silent>  / <Cmd>lua require('Comment.api').toggle_current_linewise()
nnoremap <nowait> <silent>  be <Cmd>BufferCloseAllButCurrent
nnoremap <nowait> <silent>  bl <Cmd>BufferCloseBuffersRight
nnoremap <nowait> <silent>  bh <Cmd>BufferCloseBuffersLeft
nnoremap <nowait> <silent>  bw <Cmd>BufferWipeout
nnoremap <nowait> <silent>  bj <Cmd>BufferPick
nnoremap <nowait> <silent>  bb <Cmd>b#
nnoremap <nowait> <silent>  bL <Cmd>BufferOrderByLanguage
nnoremap <nowait> <silent>  bD <Cmd>BufferOrderByDirectory
nnoremap <nowait> <silent>  bf <Cmd>Telescope buffers
nnoremap <nowait> <silent>  gp <Cmd>lua require 'gitsigns'.preview_hunk()
nnoremap <nowait> <silent>  gl <Cmd>lua require 'gitsigns'.blame_line()
nnoremap <nowait> <silent>  gr <Cmd>lua require 'gitsigns'.reset_hunk()
nnoremap <nowait> <silent>  gj <Cmd>lua require 'gitsigns'.next_hunk()
nnoremap <nowait> <silent>  gs <Cmd>lua require 'gitsigns'.stage_hunk()
nnoremap <nowait> <silent>  go <Cmd>Telescope git_status
nnoremap <nowait> <silent>  gk <Cmd>lua require 'gitsigns'.prev_hunk()
nnoremap <nowait> <silent>  gb <Cmd>Telescope git_branches
nnoremap <nowait> <silent>  gc <Cmd>Telescope git_commits
nnoremap <nowait> <silent>  gC <Cmd>Telescope git_bcommits
nnoremap <nowait> <silent>  gR <Cmd>lua require 'gitsigns'.reset_buffer()
nnoremap <nowait> <silent>  gu <Cmd>lua require 'gitsigns'.undo_stage_hunk()
nnoremap <nowait> <silent>  gd <Cmd>Gitsigns diffthis HEAD
nnoremap <nowait> <silent>  c <Cmd>BufferClose!
nnoremap <nowait> <silent>  Ti :TSConfigInfo
nnoremap <nowait> <silent>  LI <Cmd>lua require('lvim.core.telescope.custom-finders').view_lunarvim_changelog()
nnoremap <nowait> <silent>  Llp <Cmd>lua require('lvim.core.terminal').toggle_log_view('packer.nvim')
nnoremap <nowait> <silent>  Lll <Cmd>lua require('lvim.core.terminal').toggle_log_view(vim.lsp.get_log_path())
nnoremap <nowait> <silent>  Lld <Cmd>lua require('lvim.core.terminal').toggle_log_view(require('lvim.core.log').get_path())
nnoremap <nowait> <silent>  LlN <Cmd>edit $NVIM_LOG_FILE
nnoremap <nowait> <silent>  LlP <Cmd>exe 'edit '.stdpath('cache').'/packer.nvim.log'
nnoremap <nowait> <silent>  LlL <Cmd>lua vim.fn.execute('edit ' .. vim.lsp.get_log_path())
nnoremap <nowait> <silent>  LlD <Cmd>lua vim.fn.execute('edit ' .. require('lvim.core.log').get_path())
nnoremap <nowait> <silent>  Lln <Cmd>lua require('lvim.core.terminal').toggle_log_view(os.getenv('NVIM_LOG_FILE'))
nnoremap <nowait> <silent>  Lr <Cmd>LvimReload
nnoremap <nowait> <silent>  Lk <Cmd>Telescope keymaps
nnoremap <nowait> <silent>  Lg <Cmd>lua require('lvim.core.telescope.custom-finders').grep_lunarvim_files()
nnoremap <nowait> <silent>  Lc <Cmd>edit /home/nobreakh/.config/lvim/config.lua
nnoremap <nowait> <silent>  Lu <Cmd>LvimUpdate
nnoremap <nowait> <silent>  Lf <Cmd>lua require('lvim.core.telescope.custom-finders').find_lunarvim_files()
nnoremap <nowait> <silent>  Li <Cmd>lua require('lvim.core.info').toggle_popup(vim.bo.filetype)
nnoremap <nowait> <silent>  e <Cmd>NvimTreeToggle
nnoremap <nowait> <silent>  q <Cmd>q!
nnoremap <nowait> <silent>  f <Cmd>lua require("which-key").execute(1)
nnoremap <silent> " <Cmd>lua require("which-key").show("\"", {mode = "n", auto = true})
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap <silent> ' <Cmd>lua require("which-key").show("'", {mode = "n", auto = true})
vnoremap <silent> < <gv
vnoremap <silent> > >gv
nnoremap <silent> @Þ <Nop>
nnoremap <silent> @ <Cmd>lua require("which-key").show("@", {mode = "n", auto = true})
xnoremap <silent> J :move '>+1gv-gv
xnoremap <silent> K :move '<-2gv-gv
nnoremap Y y$
nnoremap <silent> [Þ <Nop>
nnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "n", auto = true})
xnoremap <silent> [Þ <Nop>
xnoremap <silent> [ <Cmd>lua require("which-key").show("[", {mode = "v", auto = true})
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
nnoremap <silent> [q :cprev
nnoremap <silent> ]Þ <Nop>
nnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "n", auto = true})
xnoremap <silent> ]Þ <Nop>
xnoremap <silent> ] <Cmd>lua require("which-key").show("]", {mode = "v", auto = true})
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
nnoremap <silent> ]q :cnext
nnoremap <silent> ` <Cmd>lua require("which-key").show("`", {mode = "n", auto = true})
xnoremap <silent> aÞ <Nop>
xnoremap <silent> a <Cmd>lua require("which-key").show("a", {mode = "v", auto = true})
xmap a% <Plug>(MatchitVisualTextObject)
nnoremap <silent> gÞ <Nop>
nnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "n", auto = true})
xnoremap <silent> gÞ <Nop>
xnoremap <silent> g <Cmd>lua require("which-key").show("g", {mode = "v", auto = true})
xnoremap <silent> gb <Cmd>lua require("Comment.api").toggle_blockwise_op(vim.fn.visualmode())
xnoremap <silent> gc <Cmd>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())
nnoremap <silent> gb <Cmd>lua require("Comment.api").call("toggle_blockwise_op")g@
nnoremap <silent> gc <Cmd>lua require("Comment.api").call("toggle_linewise_op")g@
nnoremap <silent> <expr> gbc v:count == 0 ? '<Cmd>lua require("Comment.api").call("toggle_current_blockwise_op")g@$' : '<Cmd>lua require("Comment.api").toggle_blockwise_count()'
nnoremap <silent> <expr> gcc v:count == 0 ? '<Cmd>lua require("Comment.api").call("toggle_current_linewise_op")g@$' : '<Cmd>lua require("Comment.api").toggle_linewise_count()'
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
xnoremap <silent> iÞ <Nop>
xnoremap <silent> i <Cmd>lua require("which-key").show("i", {mode = "v", auto = true})
nnoremap <silent> zÞ <Nop>
nnoremap <silent> z <Cmd>lua require("which-key").show("z", {mode = "n", auto = true})
snoremap <silent> <S-Tab> <Cmd>call v:lua.cmp.utils.keymap.set_map(16)
snoremap <silent> <Plug>(cmp.u.k.fallback:16) <S-Tab>
snoremap <silent> <Plug>(cmp.u.k.fallback:13) 	
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_directory(vim.fn.expand("%:p"))
nnoremap <Plug>(nlsp-local-buf-config) <Cmd>lua require('nlspsettings.command').open_local_buf_config()
nnoremap <Plug>(nlsp-buf-config) <Cmd>lua require('nlspsettings.command').open_buf_config()
snoremap <silent> <Plug>luasnip-jump-prev <Cmd>lua require'luasnip'.jump(-1)
snoremap <silent> <Plug>luasnip-jump-next <Cmd>lua require'luasnip'.jump(1)
snoremap <silent> <Plug>luasnip-prev-choice <Cmd>lua require'luasnip'.change_choice(-1)
snoremap <silent> <Plug>luasnip-next-choice <Cmd>lua require'luasnip'.change_choice(1)
snoremap <silent> <Plug>luasnip-expand-snippet <Cmd>lua require'luasnip'.expand()
snoremap <silent> <Plug>luasnip-expand-or-jump <Cmd>lua require'luasnip'.expand_or_jump()
noremap <silent> <Plug>luasnip-expand-repeat <Cmd>lua require'luasnip'.expand_repeat()
noremap <silent> <Plug>luasnip-delete-check <Cmd>lua require'luasnip'.unlink_current_if_deleted()
tmap <Plug>(cmp.utils.keymap.normalize) 
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
nnoremap <silent> <C-Left> :vertical resize -2
nnoremap <silent> <C-Down> :resize +2
nnoremap <silent> <C-Up> :resize -2
nnoremap <silent> <S-Tab> :BufferPrevious
nnoremap <silent> <M-j> :m .+1==
nnoremap <silent> <M-k> :m .-2==
nnoremap <silent> <C-Right> :vertical resize +2
xnoremap <silent> <M-k> :m '<-2gv-gv
xnoremap <silent> <M-j> :m '>+1gv-gv
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(23)
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(18)
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(10)
cnoremap <silent> 	 <Cmd>call v:lua.cmp.utils.keymap.set_map(12)
inoremap <silent> 	 <Cmd>call v:lua.cmp.utils.keymap.set_map(11)
inoremap <silent> <NL> <Cmd>call v:lua.cmp.utils.keymap.set_map(21)
cnoremap <expr> <NL> pumvisible() ? "\" : "\<NL>"
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(17)
cnoremap <expr>  pumvisible() ? "\" : "\"
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(20)
cnoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(6)
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(5)
cnoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(4)
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(3)
cnoremap <silent> Þ <Nop>
cnoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "c", auto = true})
inoremap <silent> Þ <Nop>
inoremap <silent>  <Cmd>lua require("which-key").show("\18", {mode = "i", auto = true})
inoremap <silent>  <Cmd>ToggleTerm
inoremap  u
inoremap  u
inoremap <silent>  <Cmd>call v:lua.cmp.utils.keymap.set_map(22)
inoremap <silent> jk 
inoremap <silent> jj 
inoremap <silent> kj 
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set cmdheight=2
set completeopt=menuone,noselect
set eventignore=CursorHoldI,CursorHold
set expandtab
set guifont=JetBrains\ Mono\ Regular:h17
set helplang=pt
set ignorecase
set mouse=a
set packpath=~/.config/lvim,~/.local/share/lunarvim/site,/etc/xdg/nvim,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/usr/lib/nvim,/usr/share/nvim/site/after,/var/lib/snapd/desktop/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,/etc/xdg/nvim/after,~/.local/share/lunarvim/lvim,~/.local/share/lunarvim/site/after,~/.config/lvim/after
set pumheight=10
set runtimepath=~/.config/lvim,~/.local/share/lunarvim/site,~/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim,~/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim,~/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim,~/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim,~/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim,~/.local/share/lunarvim/site/pack/packer/opt/nvim-notify,~/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim,~/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring,~/.local/share/lunarvim/site/pack/packer/start/packer.nvim,~/.local/share/lunarvim/site/pack/*/start/*,/etc/xdg/nvim,~/.local/share/flatpak/exports/share/nvim/site,/var/lib/flatpak/exports/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/usr/share/nvim/runtime,/usr/share/nvim/runtime/pack/dist/opt/matchit,/usr/lib/nvim,~/.local/share/lunarvim/site/pack/*/start/*/after,/usr/share/nvim/site/after,/var/lib/snapd/desktop/nvim/site/after,/usr/local/share/nvim/site/after,/var/lib/flatpak/exports/share/nvim/site/after,~/.local/share/flatpak/exports/share/nvim/site/after,/etc/xdg/nvim/after,~/.local/share/lunarvim/lvim,~/.local/share/lunarvim/site/after,~/.config/lvim/after
set scrolloff=8
set shadafile=~/.cache/nvim/lvim.shada
set shiftwidth=2
set shortmess=ifncTFtOolxI
set noshowmode
set showtabline=2
set sidescrolloff=8
set smartcase
set smartindent
set spellfile=~/.config/lvim/spell/en.utf-8.add
set splitbelow
set splitright
set statusline=%{%v:lua.require'lualine'.statusline()%}
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.snap
set noswapfile
set tabline=%#BufferOffset#\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ %1@BufferlineMainClickHandler@%#BufferInactiveSign#▎\ \ \ \ %#BufferInactive#\ %#BufferInactive#app.js\ \ \ \ \ %1@BufferlineCloseClickHandler@%#BufferInactive#\ %5@BufferlineMainClickHandler@%#BufferCurrentSign#▎\ \ \ \ %#DevIconMdCurrent#\ %#BufferCurrent#README.md\ \ \ \ \ %5@BufferlineCloseClickHandler@%#BufferCurrent#\ %0@BufferlineMainClickHandler@%#BufferTabpageFill#▎%#BufferTabpageFill#
set tabstop=2
set termguicolors
set timeoutlen=100
set title
set undodir=~/.cache/nvim/undo
set undofile
set updatetime=300
set whichwrap=<,>,[,],b,h,l,s
set window=34
set nowritebackup
" vim: set ft=vim :
