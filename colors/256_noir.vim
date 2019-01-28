" 256 noir. Basically: dark background, numerals & errors red,
" rest different shades of gray.

highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = '256_noir'

if !has('gui_running') && &t_Co != 256
  finish
endif

let s:WHITE      = '255'
let s:GRAY       = '250'
let s:MID_GRAY   = '245'
let s:DARK_GRAY  = '234'
let s:BLACK      = '16'
let s:BRIGHT_RED = '196'
let s:DARK_RED   = '88'
let s:PURPLE     = '98'
let s:ADD        = '120'
let s:DEL        = '167'
let s:CHANGE     = s:PURPLE
let s:UI_FG      = s:MID_GRAY
let s:UI_BG      = s:DARK_GRAY

" https://groups.google.com/forum/#!msg/vim_dev/QUzGeJsx-Cs/nEfVWxhlUq4J
exe 'hi Normal ctermbg='.s:BLACK.' ctermfg='.s:GRAY
set background=dark

exe 'hi Boolean        ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Character      ctermbg=NONE             ctermfg='.s:BRIGHT_RED
exe 'hi Constant       ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi Debug          ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi Define         ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Delimiter      ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi Error          ctermbg='.s:DARK_RED.'   ctermfg='.s:WHITE
exe 'hi Exception      ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi Float          ctermbg=NONE             ctermfg='.s:BRIGHT_RED
exe 'hi Function       ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Include        ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Label          ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi Macro          ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi Number         ctermbg=NONE             ctermfg='.s:BRIGHT_RED
exe 'hi Operator       ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi PreCondit      ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Repeat         ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi SpecialChar    ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi SpecialComment ctermbg=NONE             ctermfg='.s:MID_GRAY
exe 'hi String         ctermbg=NONE             ctermfg='.s:MID_GRAY
exe 'hi Structure      ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Tag            ctermbg=NONE             ctermfg='.s:BRIGHT_RED
exe 'hi Todo           ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Typedef        ctermbg=NONE             ctermfg='.s:WHITE

exe 'hi Comment        ctermbg=NONE             ctermfg='.s:MID_GRAY
exe 'hi Conditional    ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Directory      ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi Identifier     ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi Keyword        ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi PreProc        ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi Special        ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi SpecialKey     ctermbg=NONE             ctermfg='.s:WHITE.'    cterm=bold'
exe 'hi Statement      ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi StorageClass   ctermbg=NONE             ctermfg='.s:WHITE
exe 'hi Type           ctermbg=NONE             ctermfg='.s:WHITE
hi! link Title Directory
hi! link MoreMsg Comment
hi! link Question Comment

" interface
exe 'hi Cursor         ctermbg='.s:WHITE.'      ctermfg='.s:BLACK
exe 'hi ErrorMsg       ctermbg=124              ctermfg='.s:WHITE
exe 'hi FoldColumn     ctermbg='.s:BLACK.'      ctermfg='.s:GRAY
exe 'hi Folded         ctermbg=NONE             ctermfg='.s:BRIGHT_RED
exe 'hi IncSearch      ctermbg=NONE             ctermfg='.s:GRAY
exe 'hi CursorLineNr   ctermbg='.s:BLACK.'      ctermfg='.s:BRIGHT_RED
exe 'hi LineNr         ctermbg='.s:BLACK.'      ctermfg='.s:UI_FG
exe 'hi ModeMsg        ctermbg='.s:BLACK.'      ctermfg='.s:GRAY
exe 'hi Search         ctermbg='.s:PURPLE.'     ctermfg='.s:WHITE
exe 'hi Signcolumn     ctermbg='.s:BLACK.'      ctermfg='.s:UI_FG
exe 'hi StatusLine     ctermbg='.s:WHITE.'      ctermfg='.s:DARK_RED
exe 'hi StatusLineNC   ctermbg='.s:UI_FG.'      ctermfg='.s:UI_BG
exe 'hi VertSplit      ctermbg='.s:UI_FG.'      ctermfg='.s:UI_BG
exe 'hi Visual         ctermbg='.s:GRAY.'       ctermfg='.s:BLACK
exe 'hi VisualNOS      ctermbg='.s:GRAY.'       ctermfg='.s:BLACK
exe 'hi WarningMsg     ctermbg='.s:BLACK.'      ctermfg='.s:BRIGHT_RED
exe 'hi WildMenu       ctermbg='.s:WHITE.'      ctermfg='.s:MID_GRAY
hi! link NonText LineNr

if version >= 700
  exe 'hi CursorColumn   ctermbg='.s:BLACK.'      ctermfg=NONE           cterm=NONE'
  exe 'hi CursorLine     ctermbg='.s:DARK_GRAY.'  ctermfg=NONE           cterm=NONE'
  exe 'hi MatchParen     ctermbg='.s:PURPLE.'     ctermfg='.s:WHITE
  exe 'hi Pmenu          ctermbg='.s:MID_GRAY.'   ctermfg='.s:WHITE
  exe 'hi PmenuSbar      ctermbg='.s:GRAY.'       ctermfg='.s:BLACK
  exe 'hi PmenuSel       ctermbg='.s:GRAY.'       ctermfg='.s:BLACK
  exe 'hi PmenuThumb     ctermbg='.s:MID_GRAY.'   ctermfg='.s:DARK_GRAY
  exe 'hi TabLine        ctermbg='.s:DARK_GRAY.'  ctermfg='.s:UI_FG.'    cterm=NONE'
  exe 'hi TabLineFill    ctermbg='.s:DARK_GRAY.'  ctermfg='.s:DARK_GRAY
  exe 'hi TabLineSel     ctermbg='.s:DARK_GRAY.'  ctermfg='.s:GRAY
endif

if has("spell")
  exe 'hi SpellBad       ctermbg=NONE             ctermfg='.s:DARK_RED.' cterm=underline'
  exe 'hi SpellCap       ctermbg=NONE             ctermfg=NONE           cterm=underline'
  exe 'hi SpellLocal     ctermbg=NONE             ctermfg=NONE           cterm=underline'
  exe 'hi SpellRare      ctermbg=NONE             ctermfg=124            cterm=underline'
endif

" diff
exe 'hi SignifySignAdd    ctermbg='.s:UI_BG.'   ctermfg='.s:ADD
exe 'hi SignifySignDelete ctermbg='.s:UI_BG.'   ctermfg='.s:DEL
exe 'hi SignifySignChange ctermbg='.s:UI_BG.'   ctermfg='.s:CHANGE

exe 'hi DiffAdd           ctermbg=NONE          ctermfg='.s:ADD
exe 'hi DiffChange        ctermbg=NONE          ctermfg='.s:CHANGE
exe 'hi DiffDelete        ctermbg=NONE          ctermfg='.s:DEL
exe 'hi DiffText          ctermbg='.s:CHANGE.'  ctermfg='.s:BLACK

hi! link diffCommon   Statement
hi! link diffRemoved  DiffDelete
hi! link diffChanged  DiffChange
hi! link diffAdded    DiffAdd
