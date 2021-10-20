let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Documentos/previser/aplicativo-front-end
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 src/components/ListOfUser/index.js
badd +1 src/index.js
badd +3 public/index.html
badd +25 src/components/Modal/index.js
badd +2 src/context/AppContext.js
badd +20 src/context/ModalProvider.js
badd +20 src/components/Modal/styles.js
badd +25 src/styled/animation.js
badd +14 src/components/ComponentForm/Button.js
badd +1 src/components/ComponentForm/Title.js
badd +18 src/components/ComponentForm/TextInput.js
badd +46 src/components/LoginForm/styles.js
badd +19 src/components/NavBar2/styles.js
badd +17 src/components/SubNav/styles.js
argglobal
%argdel
$argadd ./
set splitbelow splitright
set nosplitbelow
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFAc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
