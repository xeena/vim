https://github.com/gmarik/vundle

####1. 설치준비
    $ cd
    $ touch .vimrc
    $ 
    $ git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    $ vi .vimrc

####2. .vimrc 파일 생성
https://github.com/gmarik/vundle 에서 샘플 .vimrc를 카피해서 붙여넣는다.

설치하고자 하는 plugin을 삽입

    Bundle 'scrooloose/nerdtree'              ## file 탐색기
    Bundle 'FuzzyFinder'
    Bundle 'tpope/vim-rails'                     ## rails project에서 파일 찿기 :rview post...
    Bundle 'msanders/snipmate.vim'          ## 언어 문법 자동 완성 if, for, while 등등
    Bundle 'ervandew/supertab'               ## 현재 스코프의 자동완성 기능 - snipmate와 중복되므로 설치 안함.
    Bundle 'rstacruz/sparkup',{'rtp': 'vim/'}   ## Zencoding 과 같은 기능
    Bundle 'matchparenpp'                     ## 괄호 (),[],{}에 커서를 갖다대면, 상대 괄호를 깜박여 줍니다.
    Bundle 'tComment'                           ## 주석을 치는 확장기능. Ctrl+_+_  해제도 마찬가지
    Bundle 'Lokaltog/vim-easymotion'        ## 특정 위치 찾아 가기
    Bundle 'vim-coffee-script'                 ## coffee 확장자 syntax highlight
    Bundle 'https://github.com/cakebaker/scss-syntax.vim.git'    ## scss 확장자 syntax highlight

" 마지막 줄에 키 맵핑

    map <Leader>nt <ESC>:NERDTree<CR>
    colorscheme distinguished
    set laststatus=2

     " FuzzyFinder Setting
     " 특정 파일 제외
    let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
    map <Leader>ff <ESC>:FufCoverageFile<CR>
    map <Leader>fb <ESC>:FufBuffer<CR>
    map <Leader>fd <ESC>:FufDir<CR>


####3. 설치
저장하고 나서 vi 에디터 창 내에서

    :BundleInstall

 
그럼 위의 plugin 들이 저장된다.


####4. 인기 vi plugin 알아보기

    https://github.com/akitaonrails/vimfiles


####5. 번들을 검색해 봅니다...

    :BundleSearch


####6. 원하는 번들을 검색합니다. 
머 그냥 vim 에서 항상 찾던식으로.. (주의! 대소문자)

    /SearchBundleName

찾았으면 그 라인을 복사하고,  ~/.vimrc (" 이 사이에 원하는 번들(vim plugin)을 넣어줍니다.)


####7. 설정파일을 다시 불러온후, 설치를 시작합니다.

    :so ~/.vimrc:
    :BundleInstall


####8. 삭제 
~/.vimrc에서 Bundle을 주석/삭제한후 vim을 재 시작 하신 후에
`:BundleClean`하면 됩니다. 
(BundleClean이라고 해서 전부가 초기화 되는건 아네요. 주석친거만 삭제!)


####9. 기타 자세한 내용 
    http://lowid.tistory.com/?page=5
