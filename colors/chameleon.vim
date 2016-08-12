" Chameleon
" =========
" A 16 colors scheme that use your terminal colors
" Inspired by z3bra's shblah.vim 

if version > 580
    highlight clear
    if exists("g:syntax_on")
        syntax reset
    endif
endif
let g:colors_name="chameleon"

"  0:black 1:red 2:green 3:yellow 4:blue 5:purple 6:cyan 7:white
"b 8:black 9:red 10:green 11:yellow 12:blue 13:purple 14:cyan 15:white

" Transform the similar and contrast colors

" Light background
let s:similar = 0
let s:bsimilar = 8
let s:contrast = 7
let s:bcontrast = 15

if &background ==# "dark"
    let s:similar = 7
    let s:bsimilar = 15
    let s:contrast = 0
    let s:bcontrast = 8
endif

function! s:ApplyStyle(type, fg, extras)
    let str = "hi ".a:type." ctermfg=".a:fg." ".a:extras
    exec str
endfunc

" Actual colours and styles.

" Comments are less-contrasted.

call s:ApplyStyle("Comment", s:bsimilar, "")
call s:ApplyStyle("Normal", s:contrast, "")

" Constant values. (green)
highlight Constant     term=none cterm=none ctermfg=3    ctermbg=none
highlight String       term=none cterm=none ctermfg=2    ctermbg=none
highlight Character    term=none cterm=none ctermfg=10    ctermbg=none
highlight Number       term=none cterm=none ctermfg=11    ctermbg=none
highlight Boolean      term=none cterm=none ctermfg=3    ctermbg=none
highlight Float        term=none cterm=none ctermfg=10    ctermbg=none

" Variables and functions. (yellow)
call s:ApplyStyle("Identifier", s:contrast, "cterm=bold")
highlight Function     term=none cterm=bold ctermfg=4   ctermbg=none

" Statement (red)
highlight Statement    term=none cterm=none ctermfg=9    ctermbg=none
highlight Conditional  term=none cterm=none ctermfg=1    ctermbg=none
highlight Repeat       term=none cterm=none ctermfg=1    ctermbg=none
highlight Label        term=none ctermfg=1    ctermbg=none
call s:ApplyStyle("Operator", s:contrast, "")
highlight Keyword      term=none cterm=none ctermfg=1    ctermbg=none
highlight Exception    term=none cterm=bold ctermfg=1    ctermbg=none

" Macros and preprocessor stuff (purple)
highlight PreProc      term=none cterm=none ctermfg=5    ctermbg=none
highlight Include      term=none cterm=none ctermfg=5    ctermbg=none
highlight Define       term=none cterm=none ctermfg=5    ctermbg=none
highlight Macro        term=none cterm=none ctermfg=5    ctermbg=none
highlight PreCondit    term=none cterm=bold ctermfg=5    ctermbg=none

" Typing (blue)
highlight Type         term=none cterm=none ctermfg=4    ctermbg=none
highlight StorageClass term=none cterm=none ctermfg=12    ctermbg=none
highlight Structure    term=none cterm=none ctermfg=4    ctermbg=none
highlight Typedef      term=none cterm=bold ctermfg=4    ctermbg=none

" Other symbols. (cyan)
highlight Special        term=none cterm=none ctermfg=6    ctermbg=none
highlight SpecialChar    term=none cterm=bold ctermfg=2    ctermbg=none
highlight Tag            term=none cterm=none ctermfg=6    ctermbg=none
highlight Delimiter      term=none cterm=none ctermfg=6    ctermbg=none
highlight Debug          term=none cterm=none ctermfg=6    ctermbg=none
highlight SpecialComment term=none cterm=none ctermfg=6    ctermbg=none


highlight ColorColumn  term=none cterm=none ctermfg=none ctermbg=3
highlight Cursor       term=none cterm=none ctermfg=3    ctermbg=none
highlight CursorLine   term=none cterm=none ctermfg=none ctermbg=none
highlight DiffAdd      term=none cterm=none ctermfg=2    ctermbg=none
highlight DiffChange   term=none cterm=none ctermfg=none ctermbg=none
highlight DiffDelete   term=none cterm=none ctermfg=7    ctermbg=1
highlight DiffText     term=none cterm=none ctermfg=7    ctermbg=4
highlight Directory    term=none cterm=none ctermfg=4    ctermbg=none
highlight Error        term=none cterm=none ctermfg=0    ctermbg=1
highlight ErrorMsg     term=none cterm=none ctermfg=1    ctermbg=0
highlight FoldColumn   term=none cterm=none ctermfg=0    ctermbg=none
highlight Folded       term=none cterm=none ctermfg=8    ctermbg=15
highlight IncSearch    term=none cterm=none ctermfg=0    ctermbg=5
highlight NonText      term=none cterm=bold ctermfg=0    ctermbg=none
highlight Pmenu        term=none cterm=none ctermfg=0    ctermbg=7
highlight Search       term=none cterm=none ctermfg=7    ctermbg=5
highlight SpecialKey   term=none cterm=none ctermfg=0    ctermbg=none

highlight StatusLine   term=none cterm=none ctermfg=0    ctermbg=4
highlight StatusLineNC term=none cterm=bold ctermfg=7    ctermbg=0

highlight TabLineSel   term=none cterm=none ctermfg=7    ctermbg=none
highlight Todo         term=none cterm=none ctermfg=3    ctermbg=1
highlight Underlined   term=underline cterm=underline ctermfg=none   ctermbg=none
highlight VertSplit    term=none cterm=none ctermfg=6    ctermbg=0
highlight Visual       term=none cterm=none ctermfg=0    ctermbg=7
highlight WarningMsg   term=none cterm=none ctermfg=3    ctermbg=none

" General highlighting group links.
highlight! link diffAdded       DiffAdd
highlight! link diffRemoved     DiffDelete
highlight! link diffChanged     DiffChange
highlight! link Title           Normal
highlight! link LineNr          NonText
highlight! link MoreMsg         Normal
highlight! link Question        DiffChange
highlight! link TabLine         StatusLineNC
highlight! link TabLineFill     StatusLineNC
highlight! link VimHiGroup      VimGroup
highlight! link VimHiGroup      VimGroup

highlight! link lispDecl      Define

call s:ApplyStyle("lispFunc", s:bcontrast, "")
call s:ApplyStyle("lispFunc", s:bcontrast, "")



" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
syn match Folded       "\"__Folded.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match Keyword    "\"__Keyword.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PreProc      "\"__PreProc.*"
syn match Search       "\"__Search.*"
syn match Special      "\"__Special.*"
syn match SpecialKey   "\"__SpecialKey.*"
syn match Statement    "\"__Statement.*"
syn match StatusLine   "\"__StatusLine.*"
syn match StatusLineNC "\"__StatusLineNC.*"
syn match String       "\"__String.*"
syn match Todo         "\"__Todo.*"
syn match Type         "\"__Type.*"
syn match Underlined   "\"__Underlined.*"
syn match VertSplit    "\"__VertSplit.*"
syn match Visual       "\"__Visual.*"

"__Comment              /* this is a comment */
"__Constant             var = SHBLAH
"__Cursor               char under the cursor?
"__CursorLine           Line where the cursor is
"__DiffAdd              +line added from file.orig
"__DiffChange           line changed from file.orig
"__DiffText             actual changes on this line
"__DiffDelete           -line removed from file.orig
"__Folded               +--- 1 line : Folded line ---
"__Function             function sblah()
"__Identifier           Never ran into that actually...
"__IncSearch            Next search term
"__Keyword              Default keywords
"__NonText              This is not a text, move on
"__Normal               Typical text goes like this
"__Pmenu                Currently selected menu item
"__PreProc              #define SHBLAH true
"__Search               This is what you're searching for
"__Special              true false NULL SIGTERM
"__SpecialKey           Never ran into that either
"__Statement            if else return for switch
"__StatusLine           Statusline of current windows
"__StatusLineNC         Statusline of other windows
"__String               "Hello, World!"
"__Todo                 TODO: remove todos from source
"__Type                 int float char void unsigned uint32_t
"__Underlined           Anything underlined
"__VertSplit            :vsplit will only show ' | '
"__Visual               Selected text looks like this

