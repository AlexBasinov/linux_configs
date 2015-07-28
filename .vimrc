set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required

"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser
Plugin 'tomtom/tcomment_vim'
Plugin 'benekastah/neomake'

"------------------=== Other ===----------------------
"Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
"Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more


" Plugin 'altercation/vim-colors-solarized'

"---------------=== Languages support ===-------------
" --- Python ---
"Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
"Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
"Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
"Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plugin 'phildawes/racer'

"Plugin 'hrp/EnhancedCommentify' 		"It provides a convenient way to comment/decomment lines of code in source files
Plugin 'ervandew/supertab'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plugin 'rust-lang/rust.vim'

call vundle#end()            		" required
filetype on
filetype plugin on
filetype plugin indent on


" Порядок применения кодировок и формата файлов
set termencoding=utf-8
set encoding=utf8
set ffs=unix,dos,mac		" формат файла по умолчанию (влияет на окончания строк)-будет перебираться в указанном порядке
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866 " варианты кодировки файла по умолчанию (все файлы по умолчанию сохраняются в этой кодировке)
set fileformat=unix

" Проверка орфографии 
"set spell
set spelllang=ru_yo,en_us

syntax on					" Влючить подстветку синтаксиса

"set nobackup				" не создавать файлы с резервной копией
"set noswapfile				" вырубаем свап файлы

set history=50				" сохранять 50 строк истории команд
set ttyfast					" коннект с терминалом быстрый
set shortmess+=tToOI		" убираем заставку при старте
set background=dark
"colorscheme solarized
set t_Co=256				" включаем  поддержку 256 цветов в терминале
set nocompatible			" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set title
set ruler					" Показывать положение курсора всё время.
set showcmd					" Показывать незавершённые команды в статусбаре
set showmode				" Показывать текущий режим Показывать текущий режим
set showmatch
set matchtime=2
set nu						" Включаем нумерацию строк
set wildmode=longest,list	" Автодополнение в коммандной строке vim как в bash
set wildmenu
set nowrap

" Настройки сворачивания блоков кода (фолдинг)
set foldenable				" Включить фолдинг
set foldmethod=indent		" Фолдинг по отсупам
set foldcolumn=1			" Показать полосу для управления фолдинга
set foldlevel=10			" Уровень фолдинга
set foldopen=all			" автоматическое открытие сверток при заходе в них

set wildmode=longest,list   " Автодополнение в коммандной стрке vim

" Настройки поиска
set incsearch				" Поиск фрагмента по мере его набора
set nohlsearch				" Отключаем подстветку найденных вариантов, и так всё видно.
"set hlsearch				" Отключаем подстветку найденных вариантов, и так всё видно.
set smartcase				" если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта

set ignorecase				" Игнорировать регистр при поиске
set scrolloff=2
"set cursorline				" Подсвечивать текущую строку
"set nocursorline
set ws						" Осуществление поиска по тексту с конца файла к началу
set ch=1					" Сделать строку команд высотой в одну строку
set mousehide				" Скрывать указатель мыши, когда печатаем
set autowrite				" Настройка автоматической записи указывает Vim писать в старый файл при переключении между файлами
set backspace=indent,eol,start whichwrap+=<,>,[,] " backspace обрабатывает отступы, концы строк
set expandtab				" заменять табуляцию на соответствующее количество пробелов
set wrap					" Переносить длинные строки
set lbr						" Переносить целые слова
set linebreak				" разрываем строки
set smartindent				" Включаем умные отспупы ( например, автоотступ после {)
set novisualbell			" Выключаем надоедливый звонок
set t_vb=					" Не пищять
set mouse=a					" Поддержка мыши
set pastetoggle=			" Переключает режим вклейки, который при вставке текста отключает некоторое форматирование
set mousemodel=popup
set timeoutlen=10
let no_buffers_menu=1
set mousemodel=popup


" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Избавляемся от меню и тулбара:
set guioptions-=T
set guioptions-=m

" Настройки отступа
"et tabstop=2				" Ширина табуляции
"et shiftwidth=2			" Размер отступов
"et softtabstop=2			" Ширина 'мягкого' таба
set autoindent				" Включить автоотступы
set smarttab				" Умные отступы
"et cin						" Отступы в стиле Си
" google
"set et

autocmd FileType * set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

"  при переходе за границу в 80 символов в Ruby/Python/js/C/C++ подсвечиваем на темном фоне текст
" the following ensures that characters longer than 80 get highlighted.
" for c, cpp, and python files.
augroup vimrc_autocmds
    autocmd!
    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%80v.*/
    autocmd FileType ruby,python,javascript,c,cpp set nowrap
augroup END

let python_highlight_all = 1


" Показывать табы и пробелы
"set list "установить режим отображения спец-символов
" установить спец-символы
"set listchars=eol:<символ_конца_строки>,tab:<начальный_символ_табуляции><последующие_символы_табуляции>,trail:<сивол_пробела_в_конце_строки>,nbsp:<символ_неразрывного_п
"set listchars=tab:→→,nbsp:↔,trail:·
"set listchars=tab:▸\ ,eol:¬
set listchars=tab:▸\ ,eol:¬
set endofline

" Формат строки состояния
"set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P 
"set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4c\ %*             "column number
set statusline +=%2*0x%04B\ %*          "character under cursor
" Цвета для строки статуса
"hi User1 guifg=#eea040 guibg=#222222
"hi User2 guifg=#dd3333 guibg=#222222
"hi User3 guifg=#ff66ff guibg=#222222
"hi User4 guifg=#a0ee40 guibg=#222222
"hi User5 guifg=#eeee40 guibg=#222222
set laststatus=2 " Всегда показывать строку статуса

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

"-------------------------- фичи --------------------------

" сохраняем файл через судо и не выводим его в vim
command! -nargs=0 -bang WSudo :silent! w !sudo tee % &>/dev/null

"" Автоматически перечитывать конфигурацию VIM после сохранения
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

" переходить в каталог текущего файла автоматически
":autocmd BufEnter * lcd %:p:h   

"vnoremap < <gv<br>vnoremap > >gv " Чтобы не пропадало выделение после сдвига блока

"let g:pydiction_location = '/usr/share/pydiction/complete-dict'

let mapleader=","
let g:mapleader = ","

"=====================================================
" User hotkeys
"=====================================================
"
"Показать/Скрыть нумерацию по ^n
"imap <S-n> <Esc>:set<Space>nu!<CR>a
"nmap <S-n> :set<Space>nu!<CR>
"inoremap <S-CR> <Esc>
"nmap <S-n> :set number! number?<cr>

" Переключать подсетку
"map  <F2>      :set hls!<bar>set hls?<CR>
"imap <F2> <Esc>:set hls!<bar>set hls?<CR>i

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" CTRL-F для omni completion
"imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste в глобальный клипборд
"vmap <C-C> "+yi
"imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-y - удаление текущей строки
"nmap <C-y> dd
"imap <C-y> <esc>ddi

" F2 - быстрое сохранение
"nmap <F2> :update<cr>
"vmap <F2> <esc>:update<cr>i
"imap <F2> <esc>:update<cr>i
"
" TaskList настройки
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2

" F3 - показать окно Tagbar
map <F3> :TagbarToggle<CR>

" F4 - обозреватель файлов
"map <F4> :Ex<cr>
"vmap <F4> <esc>:Ex<cr>i
"imap <F4> <esc>:Ex<cr>i
nmap <F4> :NERDTreeToggle<cr>
vmap <F4>v <esc>:NERDTreeToggle<cr>i
imap <F4>v <esc>:NERDTreeToggle<cr>i
nnoremap <silent> <F4> :NERDTreeToggle<cr>

"call togglebg#map("<F5>")

"F5 - просмотр списка буферов
"nmap <F5> <Esc>:BufExplorerVerticalSplit<cr>
"vmap <F5> <esc>:BufExplorerVerticalSplit<cr>
"imap <F5> <esc><esc>:BufExplorerVerticalSplit<cr>

"F6 - предыдущий буфер
"map <F6> :bp<cr>
"vmap <F6> <esc>:bp<cr>i
"imap <F6> <esc>:bp<cr>i

"F7 - следующий буфер
"map <F7> :bn<cr>
"vmap <F7> <esc>:bn<cr>i
"imap <F7> <esc>:bn<cr>i

"F8 - удалить буфер
"map <F8> :bd<cr>
"vmap <F8> <esc>:bd<cr>
"imap <F8> <esc>:bd<cr>

" Сохранение всех файлов + компиляция
map <F9> :wall \| make<Cr>

" Следующая / предыдущая ошибка
map <F10> :cn<Cr>zvzz:cc<Cr>
map <F11> :cp<Cr>zvzz:cc<Cr>

" format with goimports instead of gofmt
let g:go_fmt_command = "goimports"

" disable fmt on save
let g:go_fmt_autosave = 0

" Tabs
map <S-Home> :tabp<cr>
nmap <S-Home> :tabp<cr>
imap <S-Home> <ESC>:tabp<cr>i
map <S-End> :tabn<cr>
nmap <S-End> :tabn<cr>
imap <S-End> <ESC>:tabn<cr>i
"nmap <C-S-t> :tabnew<cr>
"imap <C-S-t> <Esc> :tabnew<cr>
"imap <S-t> <ESC>:tabnew<cr>

" Ctrl-пробел для автодополнения
inoremap <C-space> <C-x><C-o>

" Выключаем ненавистный режим замены
imap <Ins> <Esc>a

" Редко когда надо [ без пары =)
"imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" С-q - выход из Vim 
map <C-Q> <Esc>:qa<cr>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t


" -------------PLUGIN SETTINGS-------------

noremap <silent> <C-\> :TComment<cr>
vnoremap <silent> <C-\> :TCommentMaybeInline<cr>gv
inoremap <silent> <C-\> <C-o>:TComment<cr>

let g:bufExplorerFindActive=1        " Go to active window.
let g:bufExplorerShowRelativePath=1  " Show absolute paths.
let g:bufExplorerShowDirectories=1   " Show directories.
let g:bufExplorerSplitBelow=1        " Split new window below current.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSortBy='name'
let g:bufExplorerSplitVertSize=10
let g:bufExplorerSplitHorzSize =10
let g:bufExplorerOpenMode=0          " Open using current window.
let g:bufExplorerSplitType='v' 

let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_compact=1
let g:tagbar_autofocus = 0
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default

let g:CSApprox_verbose_level = 0  " Avoiding annoying CSApprox warning message.

"set completeopt=menu,menuone,longest
"set pumheight=15
"set completeopt-=preview "omni documentaion

  " Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
 " Show clang errors in the quickfix window
let g:clang_complete_copen = 1
let g:clang_snippets=1
let g:clang_hl_errors=1
let g:clang_conceal_snippets=0
"let g:clang_auto_user_options="gcc"
let g:clang_user_options = '-I /usr/lib/gcc/i686-pc-linux-gnu/4.7.0/include'

" SuperTab
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabMidWordCompletion=0
"let g:SuperTabContextDefaultCompletionType = "<c-x><c-i>"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"
"
"Make YCM/Snipmate/Supertab/Syntastic play nice together
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
"let g:SuperTabDefaultCompletionType = '<C-Tab>'


"NerdTree
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  

" tags
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/qt4

" build tags of your own project 
"map <F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
"noremap <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"inoremap <F12><ESC> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
"let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
"let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files 
"let OmniCpp_LocalSearchDecl = 1 " don't require special style of function opening braces
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowScopeInAbbr=1
"let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
"let OmniCpp_MayCompleteDot = 1 " autocompleate after .
"let OmniCpp_MayCompleteArrow = 1 " autocompleate after ->
"let OmniCpp_MayCompleteScope = 1 " autocompleate after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
" resize current buffer by +/- 5 
nnoremap <silent> <C-k> :vertical resize -5<cr>
nnoremap <silent> <C-j> :vertical resize +5<cr>
nnoremap <silent> <C-l> :resize +5<cr>
nnoremap <silent> <C-h> :resize -5<cr>

" toggles the quickfix window.
"command -bang -nargs=? QFix call QFixToggle(<bang>0)
"function! QFixToggle(forced)
"  if exists("g:qfix_win") && a:forced == 0
"    cclose
"  else
"    copen
"  endif
"endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")
 autocmd BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

map <F12> :QFix<Return>

" указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"


"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 0

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 0

" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0


" TagBar
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" racer
let g:racer_cmd = "/usr/bin/racer"
let $RUST_SRC_PATH="/home/alex/Projects/rust"
