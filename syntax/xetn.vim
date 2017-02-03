if exists("b:current_syntax")
	finish
end

setlocal iskeyword+=.,/

syn keyword XetnKey user
syn keyword XetnKey log
syn keyword XetnKey nproc
syn keyword XetnKey listen
syn keyword XetnKey root
syn keyword XetnKey index
syn keyword XetnKey host


syn keyword XetnBlock global
syn keyword XetnBlock template
syn keyword XetnBlock server
syn keyword XetnBlock location
syn keyword XetnBlock page
syn keyword XetnBlock if

syn keyword XetnDirective rewrite
syn keyword XetnDirective return
syn keyword XetnDirective use
syn keyword XetnDirective set

syn keyword XetnBoolean true
syn keyword XetnBoolean false

syn region XetnString start=/"/ skip=/\\"/ end=/"/

syn match XetnVariable '\$\w\+'
syn match XetnComment ' *#.*$'

hi link XetnBoolean Boolean
hi link XetnComment Comment
hi link XetnBlock Statement
hi link XetnDirective Identifier
hi link XetnVariable Constant
hi link XetnKey Identifier
hi link XetnString String

let b:current_syntax = "xetn"
