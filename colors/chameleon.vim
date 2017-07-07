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

let s:red = "9"
let s:green = "10"
let s:yellow = "11"
let s:blue = "12"
let s:purple = "13"
let s:cyan = "14"

let s:bred = "1"
let s:bgreen = "2"
let s:byellow = "3"
let s:bblue = "4"
let s:bpurple = "5"
let s:bcyan = "6"


" Transform the similar and contrast colors
" Similar is the shade closely matching the background
" Contrast is the opposite
" bright of either is the easier shade to see

" Light backgrounds
let s:similar = 15
let s:bsimilar = 7
let s:contrast = 0
let s:bcontrast = 8

if &background ==# "dark"

    let s:red = "1"
    let s:green = "2"
    let s:yellow = "3"
    let s:blue = "4"
    let s:purple = "5"
    let s:cyan = "6"

    let s:bred = "9"
    let s:bgreen = "10"
    let s:byellow = "11"
    let s:bblue = "12"
    let s:bpurple = "13"
    let s:bcyan = "14"


    let s:similar = 0
    let s:bsimilar = 8
    let s:contrast = 7
    let s:bcontrast = 15

endif

function! s:ApplyStyle(type, ...)
    let str = "highlight ".a:type
    for o in a:000
        let str = str." ".o
    endfor
    exec str
endfunc

" Actual colours and styles.

" Comments are less-contrasted.
call s:ApplyStyle("Comment", "ctermfg=".s:bsimilar)

" Constants
call s:ApplyStyle("Constant", "ctermfg=".s:green)
call s:ApplyStyle("String", "ctermfg=".s:bgreen)
call s:ApplyStyle("Character", "ctermfg=".s:bgreen)
call s:ApplyStyle("SpecialChar", "ctermfg=".s:green)

" Variables
call s:ApplyStyle("Identifier", "ctermfg=".s:bcontrast, "cterm=none")

" Functions
call s:ApplyStyle("Function", "ctermfg=".s:contrast, "cterm=none")

" Statements
call s:ApplyStyle("Statement", "ctermfg=".s:red)
call s:ApplyStyle("Keyword", "ctermfg=".s:bred)
call s:ApplyStyle("Conditional", "ctermfg=".s:bred)
call s:ApplyStyle("Repeat", "ctermfg=".s:bred)

" Macros
call s:ApplyStyle("PreProc", "ctermfg=".s:purple)
call s:ApplyStyle("Define", "ctermfg=".s:bpurple)
call s:ApplyStyle("Macro", "ctermfg=".s:purple)

" Types
call s:ApplyStyle("Type", "ctermfg=".s:blue)
call s:ApplyStyle("StorageClass", "ctermfg=".s:similar)
call s:ApplyStyle("Structure", "ctermfg=".s:bblue)

" Other
call s:ApplyStyle("Special", "ctermfg=".s:contrast)
call s:ApplyStyle("Tag", "ctermfg=".s:bcyan)
call s:ApplyStyle("Operator", "ctermfg=".s:bsimilar)

" Display
call s:ApplyStyle("ColorColumn", "ctermbg=".s:yellow)
call s:ApplyStyle("CursorLine", "ctermbg=".s:similar)
call s:ApplyStyle("Directory", "ctermfg=".s:blue, "cterm=bold")
call s:ApplyStyle("Error", "ctermfg=".s:similar, "ctermbg=".s:red)
call s:ApplyStyle("ErrorMsg", "ctermfg=".s:red, "ctermbg=".s:similar)
call s:ApplyStyle("FoldColumn", "ctermfg=".s:red)
call s:ApplyStyle("Folded", "ctermfg=".s:bsimilar, "ctermbg=".s:bcontrast)
call s:ApplyStyle("LineNr", "ctermfg=".s:similar, "ctermbg=".s:contrast)


call s:ApplyStyle("Search", "ctermfg=".s:contrast, "ctermbg=".s:bsimilar, "cterm=none")
call s:ApplyStyle("IncSearch", "ctermfg=".s:contrast, "ctermbg=".s:bsimilar, "cterm=bold")
call s:ApplyStyle("NonText", "ctermfg=".s:similar, "cterm=none")

" Popup menu
call s:ApplyStyle("Pmenu", "ctermfg=".s:contrast, "ctermbg=".s:bsimilar)
call s:ApplyStyle("PmenuSel", "ctermfg=".s:bsimilar, "ctermbg=".s:contrast, "cterm=none")
call s:ApplyStyle("PmenuSbar", "ctermfg=".s:similar, "cterm=none")
call s:ApplyStyle("PmenuThumb", "ctermfg=".s:similar, "cterm=none")

" Borders around the splits
call s:ApplyStyle("StatusLine", "ctermfg=".s:similar, "ctermbg=".s:contrast, "cterm=none")
call s:ApplyStyle("StatusLineNC", "ctermfg=".s:contrast, "ctermbg=".s:bsimilar, "cterm=none")
call s:ApplyStyle("VertSplit", "ctermfg=".s:contrast, "ctermbg=".s:bsimilar, "cterm=none")

" Quickfix
call s:ApplyStyle("QuickFixLine", "ctermbg=".s:bsimilar, "cterm=bold")
call s:ApplyStyle("qfFileName", "ctermfg=".s:blue, "cterm=none")
call s:ApplyStyle("qfLineNr", "ctermfg=".s:yellow, "cterm=none")
call s:ApplyStyle("qfSeperator", "ctermfg=".s:similar, "ctermbg=".s:bsimilar, "cterm=none")

call s:ApplyStyle("DiffAdd",    "ctermbg=".s:bgreen, "ctermfg=".s:similar, "cterm=none")
call s:ApplyStyle("DiffDelete", "ctermbg=".s:bred,   "ctermfg=".s:similar,"cterm=none")
call s:ApplyStyle("DiffChange", "ctermbg=".s:similar, "ctermfg=".s:bsimilar, "cterm=none")
call s:ApplyStyle("DiffText",   "ctermbg=".s:similar, "ctermfg=".s:blue, "cterm=bold")


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

call s:ApplyStyle("lispFunc", "ctermfg=".s:bcontrast)

" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
syn match Error        "\"__Error.*"
syn match ErrorMsg     "\"__ErrorMsg.*"
syn match Folded       "\"__Folded.*"
syn match FoldColumn   "\"__FoldColumn.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PmenuSel     "\"__PmenuSel.*"
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
"__Error                Error!
"__ErrorMsg             +--- 1 line : Folded line ---
"__Folded               +--- 1 line : Folded line ---
"__FoldColumn               +--- 1 line : Folded line ---
"__Function             function sblah()
"__Identifier           Never ran into that actually...
"__IncSearch            Next search term
"__NonText              This is not a text, move on
"__Normal               Typical text goes like this
"__PmenuSel             Currently selected menu item
"__Pmenu                Not currently selected menu item
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

