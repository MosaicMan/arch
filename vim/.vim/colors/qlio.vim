" Qlio.vim -- Vim color scheme.
" Author:      MosaicMan (MosaicMan@foo.bar)
" Webpage:     https://github.com/MosaicMan
" Description: Dark theme based on Twilight

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "Qlio"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#bcbcbc gui=NONE
    set background=dark
    hi Cursor ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi LineNr ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=130 cterm=bold guibg=NONE guifg=#af5f00 gui=bold
    hi helpLeadBlank ctermbg=NONE ctermfg=130 cterm=NONE guibg=NONE guifg=#af5f00 gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#9e9e9e gui=NONE
    hi CursorColumn ctermbg=NONE ctermfg=237 cterm=NONE guibg=NONE guifg=#3a3a3a gui=NONE
    hi SignColumn ctermbg=59 ctermfg=14 cterm=NONE guibg=#5f5f5f guifg=#00ffff gui=NONE
    hi FoldColumn ctermbg=59 ctermfg=14 cterm=NONE guibg=#5f5f5f guifg=#00ffff gui=NONE
    hi Folded ctermbg=237 ctermfg=103 cterm=NONE guibg=#3a3a3a guifg=#8787af gui=NONE
    hi VertSplit ctermbg=59 ctermfg=59 cterm=NONE guibg=#5f5f5f guifg=#5f5f5f gui=NONE
    hi ColorColumn ctermbg=130 ctermfg=NONE cterm=NONE guibg=#af5f00 guifg=NONE gui=NONE
    hi TabLineFill ctermbg=NONE ctermfg=247 cterm=NONE guibg=NONE guifg=#9e9e9e gui=NONE
    hi TabLineSel ctermbg=250 ctermfg=NONE cterm=NONE guibg=#bcbcbc guifg=NONE gui=NONE
    hi Directory ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Search ctermbg=137 ctermfg=237 cterm=NONE guibg=#af875f guifg=#3a3a3a gui=NONE
    hi IncSearch ctermbg=NONE ctermfg=NONE cterm=reverse guibg=NONE guifg=NONE gui=reverse
    hi StatusLine ctermbg=237 ctermfg=250 cterm=NONE guibg=#3a3a3a guifg=#bcbcbc gui=NONE
    hi StatusLineNC ctermbg=59 ctermfg=247 cterm=NONE guibg=#5f5f5f guifg=#9e9e9e gui=NONE
    hi WildMenu ctermbg=137 ctermfg=237 cterm=NONE guibg=#af875f guifg=#3a3a3a gui=NONE
    hi Question ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi Title ctermbg=NONE ctermfg=103 cterm=NONE guibg=NONE guifg=#8787af gui=NONE
    hi ModeMsg ctermbg=NONE ctermfg=NONE cterm=bold guibg=NONE guifg=NONE gui=bold
    hi MoreMsg ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi MatchParen ctermbg=103 ctermfg=250 cterm=bold guibg=#8787af guifg=#bcbcbc gui=bold
    hi Visual ctermbg=103 ctermfg=NONE cterm=NONE guibg=#8787af guifg=NONE gui=NONE
    hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi NonText ctermbg=NONE ctermfg=59 cterm=NONE guibg=NONE guifg=#5f5f5f gui=NONE
    hi Todo ctermbg=237 ctermfg=247 cterm=NONE guibg=#3a3a3a guifg=#9e9e9e gui=NONE
    hi Underlined ctermbg=NONE ctermfg=103 cterm=underline guibg=NONE guifg=#8787af gui=underline
    hi Error ctermbg=9 ctermfg=250 cterm=NONE guibg=#ff0000 guifg=#bcbcbc gui=NONE
    hi ErrorMsg ctermbg=1 ctermfg=250 cterm=NONE guibg=#800000 guifg=#bcbcbc gui=NONE
    hi WarningMsg ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi Ignore ctermbg=NONE ctermfg=59 cterm=NONE guibg=NONE guifg=#5f5f5f gui=NONE
    hi SpecialKey ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi Constant ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi String ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi StringDelimiter ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Character ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Number ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Boolean ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Float ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Identifier ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Function ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Statement ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Conditional ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Repeat ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Label ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Operator ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Keyword ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Exception ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Special ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi SpecialChar ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Tag ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Delimiter ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi SpecialComment ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Debug ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi PreProc ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Include ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Define ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Macro ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi PreCondit ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Type ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi StorageClass ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Structure ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Typedef ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi DiffAdd ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi DiffChange ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi DiffDelete ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi DiffText ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE guisp=#ff0000
    hi SpellCap ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE guisp=#0000ff
    hi SpellLocal ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE guisp=#ff00ff
    hi SpellRare ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE guisp=#00ffff
    hi Pmenu ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi PmenuSbar ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi PmenuSel ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi jsImport ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsModuleKeyword ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi jsFrom ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsModuleBraces ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi jsModuleAsterisk ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi jsModuleAs ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsString ctermbg=NONE ctermfg=101 cterm=NONE guibg=NONE guifg=#87875f gui=NONE
    hi jsClassKeyword ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsClassDefinition ctermbg=NONE ctermfg=94 cterm=NONE guibg=NONE guifg=#875f00 gui=NONE
    hi jsVariableDef ctermbg=NONE ctermfg=94 cterm=NONE guibg=NONE guifg=#875f00 gui=NONE
    hi jsExtendsKeyword ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsClassFuncName ctermbg=NONE ctermfg=94 cterm=NONE guibg=NONE guifg=#875f00 gui=NONE
    hi jsFuncArgs ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi jsFunction ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsFuncName ctermbg=NONE ctermfg=94 cterm=NONE guibg=NONE guifg=#875f00 gui=NONE
    hi jsSuper ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi jsThis ctermbg=NONE ctermfg=59 cterm=NONE guibg=NONE guifg=#5f5f5f gui=NONE
    hi jsStorageClass ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsConditional ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsReturn ctermbg=NONE ctermfg=130 cterm=NONE guibg=NONE guifg=#af5f00 gui=NONE
    hi jsObjectProp ctermbg=NONE ctermfg=250 cterm=NONE guibg=NONE guifg=#bcbcbc gui=NONE
    hi jsBlockLabel ctermbg=NONE ctermfg=59 cterm=NONE guibg=NONE guifg=#5f5f5f gui=NONE
    hi jsExport ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi jsExportDefault ctermbg=NONE ctermfg=130 cterm=NONE guibg=NONE guifg=#af5f00 gui=NONE
    hi jsBooleanFalse ctermbg=NONE ctermfg=130 cterm=NONE guibg=NONE guifg=#af5f00 gui=NONE
    hi jsBooleanTrue ctermbg=NONE ctermfg=130 cterm=NONE guibg=NONE guifg=#af5f00 gui=NONE
    hi xmlAttrib ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
    hi xmlTag ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi xmlTagName ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi xmlEndTag ctermbg=NONE ctermfg=137 cterm=NONE guibg=NONE guifg=#af875f gui=NONE
    hi xmlString ctermbg=NONE ctermfg=101 cterm=NONE guibg=NONE guifg=#87875f gui=NONE
    hi jsArrowFunction ctermbg=NONE ctermfg=67 cterm=NONE guibg=NONE guifg=#5f87af gui=NONE
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=white cterm=NONE
    set background=dark
    hi Cursor ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=NONE cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=darkred cterm=bold
    hi helpLeadBlank ctermbg=NONE ctermfg=darkred cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=gray cterm=NONE
    hi CursorColumn ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SignColumn ctermbg=gray ctermfg=cyan cterm=NONE
    hi FoldColumn ctermbg=gray ctermfg=cyan cterm=NONE
    hi Folded ctermbg=darkgray ctermfg=darkmagenta cterm=NONE
    hi VertSplit ctermbg=gray ctermfg=gray cterm=NONE
    hi ColorColumn ctermbg=darkred ctermfg=NONE cterm=NONE
    hi TabLineFill ctermbg=NONE ctermfg=gray cterm=NONE
    hi TabLineSel ctermbg=white ctermfg=NONE cterm=NONE
    hi Directory ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Search ctermbg=red ctermfg=darkgray cterm=NONE
    hi IncSearch ctermbg=NONE ctermfg=NONE cterm=reverse
    hi StatusLine ctermbg=darkgray ctermfg=white cterm=NONE
    hi StatusLineNC ctermbg=gray ctermfg=gray cterm=NONE
    hi WildMenu ctermbg=red ctermfg=darkgray cterm=NONE
    hi Question ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi Title ctermbg=NONE ctermfg=darkmagenta cterm=NONE
    hi ModeMsg ctermbg=NONE ctermfg=NONE cterm=bold
    hi MoreMsg ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi MatchParen ctermbg=darkmagenta ctermfg=white cterm=bold
    hi Visual ctermbg=darkmagenta ctermfg=NONE cterm=NONE
    hi VisualNOS ctermbg=NONE ctermfg=NONE cterm=NONE
    hi NonText ctermbg=NONE ctermfg=gray cterm=NONE
    hi Todo ctermbg=darkgray ctermfg=gray cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=darkmagenta cterm=underline
    hi Error ctermbg=red ctermfg=white cterm=NONE
    hi ErrorMsg ctermbg=darkred ctermfg=white cterm=NONE
    hi WarningMsg ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=gray cterm=NONE
    hi SpecialKey ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi Constant ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi String ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi StringDelimiter ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Character ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Number ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Boolean ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Float ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Function ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Statement ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Conditional ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Repeat ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Label ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Operator ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Keyword ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Exception ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Comment ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Special ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpecialChar ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Tag ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Delimiter ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpecialComment ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Debug ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Include ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Define ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Macro ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PreCondit ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Type ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi StorageClass ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Structure ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Typedef ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi DiffAdd ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi DiffChange ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi DiffDelete ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi DiffText ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi Pmenu ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PmenuSbar ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PmenuSel ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=darkgray cterm=NONE
    hi jsImport ctermbg=NONE ctermfg=red cterm=NONE
    hi jsModuleKeyword ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi jsFrom ctermbg=NONE ctermfg=red cterm=NONE
    hi jsModuleBraces ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi jsModuleAsterisk ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi jsModuleAs ctermbg=NONE ctermfg=red cterm=NONE
    hi jsString ctermbg=NONE ctermfg=darkyellow cterm=NONE
    hi jsClassKeyword ctermbg=NONE ctermfg=red cterm=NONE
    hi jsClassDefinition ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsVariableDef ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsExtendsKeyword ctermbg=NONE ctermfg=red cterm=NONE
    hi jsClassFuncName ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsFuncArgs ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi jsFunction ctermbg=NONE ctermfg=red cterm=NONE
    hi jsFuncName ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsSuper ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi jsThis ctermbg=NONE ctermfg=gray cterm=NONE
    hi jsStorageClass ctermbg=NONE ctermfg=red cterm=NONE
    hi jsConditional ctermbg=NONE ctermfg=red cterm=NONE
    hi jsReturn ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsObjectProp ctermbg=NONE ctermfg=white cterm=NONE
    hi jsBlockLabel ctermbg=NONE ctermfg=gray cterm=NONE
    hi jsExport ctermbg=NONE ctermfg=red cterm=NONE
    hi jsExportDefault ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsBooleanFalse ctermbg=NONE ctermfg=darkred cterm=NONE
    hi jsBooleanTrue ctermbg=NONE ctermfg=darkred cterm=NONE
    hi xmlAttrib ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi xmlTag ctermbg=NONE ctermfg=red cterm=NONE
    hi xmlTagName ctermbg=NONE ctermfg=red cterm=NONE
    hi xmlEndTag ctermbg=NONE ctermfg=red cterm=NONE
    hi xmlString ctermbg=NONE ctermfg=darkyellow cterm=NONE
    hi jsArrowFunction ctermbg=NONE ctermfg=darkcyan cterm=NONE
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
