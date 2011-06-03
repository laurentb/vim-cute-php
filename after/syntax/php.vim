" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear phpOperator

syntax keyword phpOperator is

syntax match phpNiceOperator "||" conceal cchar=∨ contained containedin=phpRegion
syntax match phpNiceOperator "&&" conceal cchar=∧ contained containedin=phpRegion
syntax match phpNiceOperator "!" conceal cchar=¬ contained containedin=phpRegion
syntax match phpNiceOperator "<=" conceal cchar=≤ contained containedin=phpRegion
syntax match phpNiceOperator ">=" conceal cchar=≥ contained containedin=phpRegion
syntax match phpNiceOperator "==" conceal cchar=≡ contained containedin=phpRegion
syntax match phpNiceOperator "!=" conceal cchar=≠ contained containedin=phpRegion
syntax match phpNiceRelation "=>" conceal cchar=→ contained containedin=phpRegion

hi link phpNiceOperator phpOperator
hi link phpNiceStatement phpStatement
hi link phpNiceKeyword phpKeyword
hi link phpNiceRelation phpRelation
hi! link Conceal phpOperator

setlocal conceallevel=2
