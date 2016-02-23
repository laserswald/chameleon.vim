" =============================================================================
" Filename: autoload/lightline/colorscheme/chameleon.vim
" Author: Laserswald
" License: MIT License
" =============================================================================
let s:blk = 0
let s:red = 1
let s:grn = 2
let s:ylw = 3
let s:blu = 4
let s:vio = 5
let s:cyn = 6
let s:wht = 7

let s:bblk = 8
let s:bred = 9 
let s:bgrn = 10
let s:bylw = 11
let s:bblu = 12
let s:bvio = 13
let s:bcyn = 14
let s:bwht = 15

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:bgrn, s:grn ], [ s:bgrn, s:bblk ] ]
let s:p.normal.right = [ [ s:bblk , s:wht ], [ s:wht , s:bblk ], [ s:bwht, s:bblk ]]
let s:p.inactive.right = s:p.normal.right
let s:p.inactive.left = s:p.inactive.right[1:]
let s:p.insert.left = [ [ s:bblu, s:blu ], [ s:bblu, s:bblk ] ]
let s:p.insert.right = s:p.normal.right
let s:p.replace.left = [ [ s:bred, s:red ], [ s:bred, s:bblk ] ]
let s:p.visual.left = [ [ s:ylw, s:bylw ], [s:bylw, s:bblk] ]
let s:p.normal.middle = [ [ s:bblk, s:blk ] ]
let s:p.insert.middle = s:p.normal.middle
let s:p.replace.middle = s:p.normal.middle
let s:p.replace.right = s:p.normal.right
let s:p.tabline.left = [ [ s:wht , s:bblk ] ]
let s:p.tabline.middle = [ [ s:bblk, s:blk ] ]
let s:p.tabline.tabsel = [ [ s:bblk, s:wht ] ]
let s:p.tabline.right = [ [ s:blk, s:red ] ]
let s:p.normal.error = [ [ 'gray9', 'brightestred' ] ]
let s:p.normal.warning = [ [ 'brightblack', 'yellow' ] ]

let g:lightline#colorscheme#chameleon#palette = lightline#colorscheme#fill(s:p)
