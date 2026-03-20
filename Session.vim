let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd L:/codigo/rust/gameboy-emulator
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 L:/codigo/rust/gameboy-emulator
badd +287 term://L:/codigo/rust/gameboy-emulator//26532:C:/Windows/system32/cmd.exe
badd +60 src/cpu.rs
badd +1 src/main.rs
badd +1 src/memory.ts
badd +4 src/memory.rs
badd +1 term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe
argglobal
%argdel
$argadd L:/codigo/rust/gameboy-emulator
edit src/memory.rs
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 29 + 21) / 42)
exe '2resize ' . ((&lines * 10 + 21) / 42)
argglobal
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd L:/codigo/rust/gameboy-emulator
wincmd w
argglobal
if bufexists(fnamemodify("term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe", ":p")) | buffer term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe | else | edit term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe | endif
if &buftype ==# 'terminal'
  silent file term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe
endif
balt term://L:/codigo/rust/gameboy-emulator//10888:C:/Windows/system32/cmd.exe
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd L:/codigo/rust/gameboy-emulator
wincmd w
exe '1resize ' . ((&lines * 29 + 21) / 42)
exe '2resize ' . ((&lines * 10 + 21) / 42)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
