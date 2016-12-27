if exists("b:current_syntax")
	finish
end

setlocal iskeyword+=.,:,/

syn keyword XetnBlock global template server location
syn keyword XetnDirective rewrite use return
syn match XetnVariable '\$\w\+'
syn match XetnComment ' *#.*$'
syn match XetnKey     '\w\+\(?!:\)'

hi link XetnComment Comment
hi link XetnBlock Statement
hi link XetnDirective PreProc
hi link XetnVariable Constant
hi link XetnKey Identifier

let b:current_syntax = "xetn"
