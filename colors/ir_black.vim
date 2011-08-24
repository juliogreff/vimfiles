" ir_black color scheme
" More at: http://blog.infinitered.com/entries/show/8


" ********************************************************************************
" Standard colors used in all ir_black themes:
" Note, x:x:x are RGB values
"
"  normal: #f6f3e8
"
"  string: #A8FF60  168:255:96
"    string inner (punc, code, etc): #00A0A0  0:160:160
"  number: #FF73FD  255:115:253
"  comments: #7C7C7C  124:124:124
"  keywords: #96CBFE  150:203:254
"  operators: white
"  class: #FFFFB6  255:255:182
"  method declaration name: #FFD2A7  255:210:167
"  regular expression: #E9C062  233:192:98
"    regexp alternate: #FF8000  255:128:0
"    regexp alternate 2: #B18A3D  177:138:61
"  variable: #C6C5FE  198:197:254
"
" Misc colors:
"  red color (used for whatever): #FF6C60   255:108:96
"     light red: #FFB6B0   255:182:176
"
"  brown: #E18964  good for special
"
"  lightpurpleish: #FFCCFF
"
" Interface colors:
"  background color: black
"  cursor (where underscore is used): #FFA560  255:165:96
"  cursor (where block is used): white
"  visual selection: #1D1E2C
"  current line: #151515  21:21:21
"  search selection: #07281C  7:40:28
"  line number: #3D3D3D  61:61:61


" ********************************************************************************
" The following are the preferred 16 colors for your terminal
"           Colors      Bright Colors
" Black     #4E4E4E     #7C7C7C
" Red       #FF6C60     #FFB6B0
" Green     #A8FF60     #CEFFAB
" Yellow    #FFFFB6     #FFFFCB
" Blue      #96CBFE     #FFFFCB
" Magenta   #FF73FD     #FF9CFE
" Cyan      #C6C5FE     #DFDFFE
" White     #EEEEEE     #FFFFFF


" ********************************************************************************
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "ir_black"



" General colors
hi Normal           guifg=#f6f3e8 ctermfg=7     guibg=black       gui=NONE
hi NonText          guifg=#3D3D3D ctermfg=237     guibg=black       gui=NONE

hi Cursor           guifg=black       guibg=white       gui=NONE
hi LineNr           guifg=#3D3D3D ctermfg=237     guibg=black       gui=NONE

hi VertSplit        guifg=#3D3D3D ctermfg=237     guibg=#3D3D3D ctermbg=237     gui=NONE
hi ColorColumn      guifg=NONE        guibg=#1A1A1A ctermbg=234     gui=NONE
hi StatusLine       guifg=#CCCCCC ctermfg=252     guibg=#202020 ctermbg=234     gui=italic
hi StatusLineNC     guifg=black       guibg=#202020 ctermbg=234     gui=NONE

hi Folded           guifg=#a0a8b0 ctermfg=248     guibg=#384048 ctermbg=238     gui=NONE
hi Title            guifg=#f6f3e8 ctermfg=7     guibg=NONE        gui=bold
hi Visual           guifg=NONE        guibg=#262D51 ctermbg=237     gui=NONE

hi SpecialKey       guifg=#3D3D3D ctermfg=237     guibg=black     gui=NONE

hi WildMenu         guifg=green       guibg=yellow      gui=NONE
hi PmenuSbar        guifg=black       guibg=white       gui=NONE
"hi Ignore           guifg=gray        guibg=black       gui=NONE

hi Error            guifg=NONE        guibg=NONE        gui=undercurl
hi ErrorMsg         guifg=white       guibg=#FF6C60 ctermbg=203     gui=BOLD
hi WarningMsg       guifg=white       guibg=#FF6C60 ctermbg=203     gui=BOLD

" Message displayed in lower left, such as --INSERT--
hi ModeMsg          guifg=black       guibg=#C6C5FE ctermbg=189     gui=BOLD

if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212 ctermbg=233     gui=NONE
  hi CursorColumn   guifg=NONE        guibg=#121212 ctermbg=233     gui=NONE
  hi MatchParen     guifg=#f6f3e8 ctermfg=7     guibg=#857b6f ctermbg=243     gui=BOLD
  hi Pmenu          guifg=#f6f3e8 ctermfg=7     guibg=#444444 ctermbg=238     gui=NONE
  hi PmenuSel       guifg=#000000 ctermfg=0     guibg=#cae682 ctermbg=186     gui=NONE
  hi Search         guifg=NONE        guibg=NONE        gui=underline
endif

" Syntax highlighting
hi Comment          guifg=#7C7C7C ctermfg=8     guibg=NONE        gui=NONE
hi String           guifg=#A8FF60 ctermfg=155     guibg=NONE        gui=NONE
hi Number           guifg=#FF73FD ctermfg=207     guibg=NONE        gui=NONE

hi Keyword          guifg=#96CBFE ctermfg=117     guibg=NONE        gui=NONE
hi PreProc          guifg=#96CBFE ctermfg=117     guibg=NONE        gui=NONE
hi Conditional      guifg=#6699CC ctermfg=68     guibg=NONE        gui=NONE

hi Todo             guifg=#8f8f8f ctermfg=245     guibg=NONE        gui=NONE
hi Constant         guifg=#99CC99 ctermfg=114     guibg=NONE        gui=NONE

hi Identifier       guifg=#C6C5FE ctermfg=189     guibg=NONE        gui=NONE
hi Function         guifg=#FFD2A7 ctermfg=223     guibg=NONE        gui=NONE
hi Type             guifg=#FFFFB6 ctermfg=229     guibg=NONE        gui=NONE
hi Statement        guifg=#6699CC ctermfg=68     guibg=NONE        gui=NONE

hi Special          guifg=#E18964 ctermfg=173     guibg=NONE        gui=NONE
hi Delimiter        guifg=#00A0A0 ctermfg=37     guibg=NONE        gui=NONE
hi Operator         guifg=white       guibg=NONE        gui=NONE

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special


" Special for Ruby
hi rubyRegexp                  guifg=#B18A3D ctermfg=137      guibg=NONE      gui=NONE
hi rubyRegexpDelimiter         guifg=#FF8000 ctermfg=208      guibg=NONE      gui=NONE
hi rubyEscape                  guifg=white        guibg=NONE      gui=NONE
hi rubyInterpolationDelimiter  guifg=#00A0A0 ctermfg=37      guibg=NONE      gui=NONE
hi rubyControl                 guifg=#6699CC ctermfg=68      guibg=NONE      gui=NONE
"hi rubyGlobalVariable          guifg=#FFCCFF ctermfg=225      guibg=NONE      gui=NONE
hi rubyStringDelimiter         guifg=#336633 ctermfg=238      guibg=NONE      gui=NONE
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

hi link rubyClass             Keyword
hi link rubyModule            Keyword
hi link rubyKeyword           Keyword
hi link rubyOperator          Operator
hi link rubyIdentifier        Identifier
hi link rubyInstanceVariable  Identifier
hi link rubyGlobalVariable    Identifier
hi link rubyClassVariable     Identifier
hi link rubyConstant          Type


" Special for Java
" hi link javaClassDecl    Type
hi link javaScopeDecl         Identifier
hi link javaCommentTitle      javaDocSeeTag
hi link javaDocTags           javaDocSeeTag
hi link javaDocParam          javaDocSeeTag
hi link javaDocSeeTagParam    javaDocSeeTag

hi javaDocSeeTag              guifg=#CCCCCC ctermfg=252     guibg=NONE        gui=NONE
hi javaDocSeeTag              guifg=#CCCCCC ctermfg=252     guibg=NONE        gui=NONE
"hi javaClassDecl              guifg=#CCFFCC ctermfg=194     guibg=NONE        gui=NONE


" Special for XML
hi link xmlTag          Keyword
hi link xmlTagName      Conditional
hi link xmlEndTag       Identifier


" Special for HTML
hi link htmlTag         Keyword
hi link htmlTagName     Conditional
hi link htmlEndTag      Identifier
hi link htmlLink        Normal


" Special for Javascript
hi link javaScriptNumber      Number


" Special for Python
"hi  link pythonEscape         Keyword


" Special for CSharp
hi  link csXmlTag             Keyword


" Special for PHP
