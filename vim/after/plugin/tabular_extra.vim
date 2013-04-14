if !exists(':Tabularize')
    finish " Give up here; the Tabular plugin musn't have been loaded
endif

" Make line wrapping possible by resetting the 'cpo' option, first saving it
let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! 1: /^[^:]*/l0
AddTabularPattern! :  /:/l1l0
AddTabularPattern! ,  /,\zs/l0l1
AddTabularPattern! =  /=
AddTabularPattern! hash  /^[^:]*:\zs/l0l1

AddTabularPipeline! :, /:.*,/ 
    \ tabular#TabularizeStrings(a:lines, ':', 'l1l0') |
    \ tabular#TabularizeStrings(a:lines, ',\zs', 'l0l1')

AddTabularPipeline! remove_leading_spaces /^ /
                \ map(a:lines, "substitute(v:val, '^ *', '', '')")

" Restore the saved value of 'cpo'
let &cpo = s:save_cpo
unlet s:save_cpo
