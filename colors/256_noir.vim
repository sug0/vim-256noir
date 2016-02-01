" 256 noir. Basically: dark background, numerals & errors red,
" rest different shades of gray.

set background=dark
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = '256_noir'

if (has('gui_running'))
  let s:M = 'gui'
  " TODO
else
  let s:M = 'cterm'

  let s:WHITE      = '255'
  let s:GRAY       = '250'
  let s:MID_GRAY   = '242'
  let s:DARK_GRAY  = '233'
  let s:BRIGHT_RED = '196'
  let s:BLACK      = '16'
  let s:DARK_RED   = '88'
  let s:PURPLE     = '98'

  let s:ADD        = '120'
  let s:DEL        = '167'
  let s:CHANGE     = '228'

  let s:UI_FG      = s:MID_GRAY
  let s:UI_BG      = s:DARK_GRAY
endif

exe 'hi Boolean         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Character       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi Comment         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:MID_GRAY
exe 'hi Conditional     '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Constant        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE.'     '.s:M.'=bold'
exe 'hi Debug           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Define          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Delimiter       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Directory       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Error           '.s:M.'bg='.s:DARK_RED.'   '.s:M.'fg='.s:WHITE
exe 'hi Exception       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Float           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi Function        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Identifier      '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Include         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Keyword         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Label           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Macro           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi NonText         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:MID_GRAY
exe 'hi Normal          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Number          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi Operator        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi PreCondit       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi PreProc         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Question        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Repeat          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Special         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi SpecialChar     '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi SpecialComment  '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:MID_GRAY
exe 'hi SpecialKey      '.s:M.'bg='.s:WHITE.'      '.s:M.'fg='.s:BLACK
exe 'hi Statement       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi StorageClass    '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi String          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:MID_GRAY
exe 'hi Structure       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Tag             '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi Title           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Todo            '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Type            '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE
exe 'hi Typedef         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:WHITE

exe 'hi SpellBad        '.s:M.'bg=NONE             '.s:M.'fg='.s:DARK_RED.'  '.s:M.'=underline'
exe 'hi SpellCap        '.s:M.'bg=NONE             '.s:M.'fg=NONE            '.s:M.'=underline'
exe 'hi SpellLocal      '.s:M.'bg=NONE             '.s:M.'fg=NONE            '.s:M.'=underline'
exe 'hi SpellRare       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg=124             '.s:M.'=underline'

" interface
exe 'hi Cursor          '.s:M.'bg='.s:WHITE.'      '.s:M.'fg='.s:BLACK
exe 'hi CursorColumn    '.s:M.'bg='.s:DARK_GRAY.'  '.s:M.'fg=NONE            '.s:M.'=NONE'
exe 'hi CursorLine      '.s:M.'bg='.s:DARK_GRAY.'  '.s:M.'fg=NONE            '.s:M.'=NONE'
exe 'hi ErrorMsg        '.s:M.'bg=124              '.s:M.'fg='.s:WHITE
exe 'hi FoldColumn      '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Folded          '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi IncSearch       '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi LineNr          '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:UI_FG
exe 'hi MatchParen      '.s:M.'bg='.s:PURPLE.'     '.s:M.'fg='.s:WHITE
exe 'hi ModeMsg         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi MoreMsg         '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:GRAY
exe 'hi Pmenu           '.s:M.'bg='.s:MID_GRAY.'   '.s:M.'fg='.s:WHITE
exe 'hi PmenuSbar       '.s:M.'bg='.s:GRAY.'       '.s:M.'fg='.s:BLACK
exe 'hi PmenuSel        '.s:M.'bg='.s:GRAY.'       '.s:M.'fg='.s:BLACK
exe 'hi PmenuThumb      '.s:M.'bg='.s:MID_GRAY.'   '.s:M.'fg='.s:DARK_GRAY
exe 'hi Search          '.s:M.'bg='.s:PURPLE.'     '.s:M.'fg='.s:WHITE
exe 'hi Signcolumn      '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:UI_FG
exe 'hi StatusLine      '.s:M.'bg='.s:WHITE.'      '.s:M.'fg='.s:DARK_RED
exe 'hi StatusLineNC    '.s:M.'bg='.s:UI_FG.'      '.s:M.'fg='.s:UI_BG
exe 'hi TabLine         '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:UI_FG.'     '.s:M.'=NONE'
exe 'hi TabLineFill     '.s:M.'bg=NONE             '.s:M.'fg='.s:UI_BG
exe 'hi TabLineSel      '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:GRAY.'      '.s:M.'=underline'
exe 'hi VertSplit       '.s:M.'bg='.s:UI_FG.'      '.s:M.'fg='.s:UI_BG
exe 'hi Visual          '.s:M.'bg='.s:GRAY.'       '.s:M.'fg='.s:BLACK
exe 'hi VisualNOS       '.s:M.'bg='.s:GRAY.'       '.s:M.'fg='.s:BLACK
exe 'hi WarningMsg      '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:BRIGHT_RED
exe 'hi WildMenu        '.s:M.'bg='.s:WHITE.'      '.s:M.'fg='.s:MID_GRAY

" diff
exe 'hi SignifySignAdd    '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:ADD
exe 'hi SignifySignDelete '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:DEL
exe 'hi SignifySignChange '.s:M.'bg='.s:UI_BG.'      '.s:M.'fg='.s:CHANGE

exe 'hi DiffAdd           '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:ADD
exe 'hi DiffChange        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:CHANGE
exe 'hi DiffDelete        '.s:M.'bg='.s:BLACK.'      '.s:M.'fg='.s:DEL
exe 'hi DiffText          '.s:M.'bg='.s:BRIGHT_RED.' '.s:M.'fg='.s:GRAY

hi def link diffCommon   Statement
hi def link diffRemoved  DiffDelete
hi def link diffChanged  DiffChange
hi def link diffAdded    DiffAdd
