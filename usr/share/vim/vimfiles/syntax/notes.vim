" Vim syntax file
" " Language: notes
"

if exists("b:current_syntax")
  finish
end

syn match odpowiedz 'O:.*'
syn match pytanie 'P:.*'
syn match tag '-> .*'
syn match tytul '#.*'

hi link odpowiedz SpecialComment
hi link pytanie String
hi link tag Statement
hi link tytul LibraryIdent
