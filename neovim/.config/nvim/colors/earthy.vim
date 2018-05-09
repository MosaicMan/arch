" Vim color file - Earthy

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "earthy"

hi SpecialKey term=bold ctermfg=8 ctermbg=236 guifg=#808080 guibg=#343434 guisp=#343434
hi NonText term=bold ctermfg=8 guifg=#cfcfcf guibg=#141414 guisp=#141414
hi Directory term=bold ctermfg=159 guifg=Cyan
hi ErrorMsg term=standout ctermfg=15 ctermbg=1 guifg=White guibg=Red
hi IncSearch term=reverse cterm=reverse gui=reverse
hi Search term=reverse ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi MoreMsg term=bold ctermfg=121 gui=bold guifg=SeaGreen
hi ModeMsg term=bold cterm=bold gui=bold
hi LineNr term=underline ctermfg=8 guifg=#808080 guibg=#141414 guisp=#141414
hi CursorLineNr term=bold ctermfg=172 gui=bold guifg=Yellow
hi Question term=standout ctermfg=121 gui=bold guifg=Green
hi StatusLine term=bold,reverse ctermfg=255 ctermbg=239 gui=italic guifg=#f0f0f0 guibg=#4f4a50 guisp=#4f4a50
hi StatusLineNC term=reverse ctermfg=7 ctermbg=59 gui=italic guifg=#c0c0c0 guibg=#5f5a60 guisp=#5f5a60
hi VertSplit term=reverse ctermfg=59 ctermbg=59 gui=italic guifg=#5f5a60 guibg=#5f5a60 guisp=#5f5a60
hi Title term=bold ctermfg=225 gui=bold guifg=Magenta
hi Visual term=reverse ctermbg=242 guibg=DarkGrey
"hi VisualNOS cleared
hi WarningMsg term=standout ctermfg=224 guifg=Red
hi WildMenu term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
hi Folded term=standout ctermfg=103 ctermbg=238 guifg=#a0a8b0 guibg=#384048 guisp=#384048
hi FoldColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi DiffAdd term=bold ctermbg=4 guibg=DarkBlue
hi DiffChange term=bold ctermbg=5 guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=12 ctermbg=6 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText term=reverse cterm=bold ctermbg=9 gui=bold guibg=Red
hi SignColumn term=standout ctermfg=14 ctermbg=242 guifg=Cyan guibg=Grey
hi Conceal ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad term=reverse ctermbg=9 gui=undercurl guisp=Red
hi SpellCap term=reverse ctermbg=12 gui=undercurl guisp=Blue
hi SpellRare term=reverse ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal term=underline ctermbg=14 gui=undercurl guisp=Cyan
hi Pmenu ctermfg=15 ctermbg=8 guifg=#ffffff guibg=#808080 guisp=#808080
hi PmenuSel ctermfg=255 ctermbg=239 guifg=#f0f0f0 guibg=#4f4a50 guisp=#4f4a50
hi PmenuSbar ctermbg=233 guibg=#141414 guisp=#141414
hi PmenuThumb ctermbg=8 guibg=#808080 guisp=#808080
hi TabLine term=underline ctermbg=7 gui=italic guifg=#000000 guibg=#b0b8c0 guisp=#b0b8c0
hi TabLineSel term=bold cterm=bold ctermbg=255 gui=bold,italic guifg=#000000 guibg=#f0f0f0 guisp=#f0f0f0
hi TabLineFill term=reverse ctermfg=247 guifg=#9098a0
hi CursorColumn term=reverse ctermbg=235 guibg=#182028 guisp=#182028
hi CursorLine cterm=NONE term=NONE ctermfg=172 ctermbg=NONE
hi ColorColumn term=reverse ctermbg=1 guibg=DarkRed
hi MatchParen term=reverse cterm=bold ctermfg=15 ctermbg=108 gui=bold guifg=#ffffff guibg=#80a090 guisp=#80a090
hi Comment ctermfg=8
hi Constant term=underline ctermfg=9 guifg=Magenta
hi Special term=bold ctermfg=51 guifg=SlateBlue
hi Identifier term=underline ctermfg=6 guifg=DarkCyan
hi Statement term=bold ctermfg=179 gui=bold guifg=Brown
hi PreProc term=underline ctermfg=51 guifg=Purple
hi Type term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore ctermfg=15 guifg=bg
hi Error term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
hi String ctermfg=65 guifg=#6b8522
hi Character ctermfg=173 guifg=#cf6a4c
hi Number ctermfg=9 guifg=#cf6a4c
hi Boolean ctermfg=1 guifg=#dad085
"hi Float links to Number
hi Function ctermfg=58 guifg=#947d38
"hi Conditional links to Statement
"hi Repeat links to Statement
"hi Label links to Statement
"hi Operator links to Statement
"hi Keyword links to Statement
"hi Exception links to Statement
hi Include ctermfg=179 guifg=#cda869
hi Define cterm=bold ctermfg=58 guifg=#cda869
hi Macro ctermfg=179 guifg=#cda869
hi PreCondit ctermfg=179 guifg=#cda869
"hi StorageClass links to Type
hi Structure ctermfg=247 guifg=#9B859D
"hi Typedef links to Type
"hi Tag links to Special
"hi SpecialChar links to Special
"hi Delimiter links to Special
"hi SpecialComment links to Special
"hi Debug links to Special
hi Normal ctermfg=252 guifg=#cfcfcf guibg=#141414 guisp=#141414
"hi ColumnMargin cleared
"hi Symbol cleared
hi Method ctermfg=58
"hi Interpolation cleared
"hi pythonFunction links to Method
"hi htmlTag links to Method
"hi htmlEndTag links to Method
"hi htmlArg links to Method
"hi htmlLink links to Identifier
"hi javaScriptFunction links to Keyword
"hi javaScriptNumber links to Number
"hi javascriptMember links to Method
"hi javascriptBraces links to Normal
"hi javascriptNull links to Method
"hi cssBraces links to Normal
"hi erlangAtom links to Keyword
"hi erlangBitType links to Keyword
"hi rubyBeginend links to Keyword
"hi rubyClass links to Keyword
"hi rubyModule links to Keyword
"hi rubyKeyword links to Keyword
"hi rubyOperator links to Method
"hi rubyIdentifier links to Keyword
"hi rubyClassVariable links to Method
"hi rubyInstanceVariable links to Constant
"hi rubyGlobalVariable links to Constant
"hi rubyConstant links to Constant
"hi rubySymbol links to Symbol
"hi rubyFunction links to Constant
"hi rubyControl links to Keyword
"hi rubyConditional links to Keyword
"hi rubyInterpolation links to Interpolation
"hi rubyInterpolationDelimiter links to Interpolation
"hi rubyRailsMethod links to Method
"hi pythonStatement links to Statement
"hi pythonConditional links to Conditional
"hi pythonRepeat links to Repeat
"hi pythonOperator links to Operator
"hi pythonException links to Exception
"hi pythonInclude links to Include
"hi pythonAsync links to Statement
"hi pythonDecorator links to Define
"hi pythonTodo links to Todo
"hi pythonComment links to Comment
"hi pythonQuotes links to String
"hi pythonEscape links to Special
"hi pythonString links to String
"hi pythonTripleQuotes links to pythonQuotes
"hi pythonSpaceError cleared
"hi pythonDoctest links to Special
"hi pythonRawString links to String
"hi pythonNumber links to Number
hi pythonBuiltin ctermfg=130
"hi pythonAttribute cleared
"hi pythonExceptions links to Structure
"hi pythonDoctestValue links to Define
"hi pythonSync cleared
hi Cursor ctermbg=242 guibg=#586068 guisp=#586068
hi cursorim ctermfg=235 ctermbg=60 guifg=#192224 guibg=#536991 guisp=#536991
"hi helpHeadline links to Statement
"hi helpSectionDelim links to PreProc
"hi helpIgnore links to Ignore
"hi helpExample links to Comment
"hi helpBar links to Ignore
"hi helpStar links to Ignore
"hi helpHyperTextJump links to Identifier
"hi helpHyperTextEntry links to String
"hi helpBacktick links to Ignore
"hi helpNormal cleared
"hi helpVim links to Identifier
"hi helpOption links to Type
"hi helpCommand links to Comment
"hi helpHeader links to PreProc
"hi helpGraphic cleared
"hi helpNote links to Todo
"hi helpSpecial links to Special
"hi helpLeadBlank cleared
"hi helpNotVi links to Special
"hi helpComment links to Comment
"hi helpConstant links to Constant
"hi helpString links to String
"hi helpCharacter links to Character
"hi helpNumber links to Number
"hi helpBoolean links to Boolean
"hi helpFloat links to Float
"hi helpIdentifier links to Identifier
"hi helpFunction links to Function
"hi helpStatement links to Statement
"hi helpConditional links to Conditional
"hi helpRepeat links to Repeat
"hi helpLabel links to Label
"hi helpOperator links to Operator
"hi helpKeyword links to Keyword
"hi helpException links to Exception
"hi helpPreProc links to PreProc
"hi helpInclude links to Include
"hi helpDefine links to Define
"hi helpMacro links to Macro
"hi helpPreCondit links to PreCondit
"hi helpType links to Type
"hi helpStorageClass links to StorageClass
"hi helpStructure links to Structure
"hi helpTypedef links to Typedef
"hi helpSpecialChar links to SpecialChar
"hi helpTag links to Tag
"hi helpDelimiter links to Delimiter
"hi helpSpecialComment links to SpecialComment
"hi helpDebug links to Debug
"hi helpUnderlined links to Underlined
"hi helpError links to Error
"hi helpTodo links to Todo
"hi helpURL links to String
