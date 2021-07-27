" =============================================================================
" Filename: autoload/lightline/colorscheme/mask.vim
" =============================================================================

let s:black = [ '#d8d8c7', 233 ]
let s:gray = [ '#47474f', 244 ]
let s:white = [ '#47474f', 234 ]
let s:cyan = [ '#2c403c', 81 ]
let s:green = [ '#ba1a0a', 118 ]
let s:orange = [ '#6f9ca7', 166 ]
let s:pink = [ '#2c403c', 161 ]
let s:red = [ '#47474f', 160 ]
let s:yellow = [ '#c96901', 229 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.normal.left = [ [ s:black, s:cyan ], [ s:orange, s:black ] ]
let s:p.normal.middle = [ [ s:orange, s:black ] ]
let s:p.normal.right = [ [ s:pink, s:black ], [ s:black, s:pink ] ]
let s:p.normal.error = [ [ s:pink, s:black ] ]
let s:p.normal.warning = [ [ s:yellow, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:green, s:black ] ]
let s:p.visual.left = [ [ s:black, s:yellow ], [ s:yellow, s:black ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:red, s:black ] ]
let s:p.inactive.left =  [ [ s:pink, s:black ], [ s:white, s:black ] ]
let s:p.inactive.middle = [ [ s:gray, s:black ] ]
let s:p.inactive.right = [ [ s:white, s:pink ], [ s:pink, s:black ] ]
let s:p.tabline.left = [ [ s:pink, s:black ] ]
let s:p.tabline.middle = [ [ s:pink, s:black] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.tabline.tabsel = [ [ s:black, s:pink ] ]

let g:lightline#colorscheme#george#palette = lightline#colorscheme#flatten(s:p)