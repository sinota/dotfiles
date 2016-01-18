rem 本当はリンクにしたいが現状はコピー。更新するたびにこの
rem バッチファイルを実行する必要がある。

rem @echo off

setlocal
set HERE=%~dp0
set DST=%HOME%

rem Need Administrator privilege + password 
rem runas /user:administrator "mklink %DST%_vimrc %HERE%.vimrc"

rem /Y: force overwrite  /-Y: require confirm
xcopy /D /Y %HERE%.vimrc %DST%.vimrc
xcopy /D /Y %HERE%.profile_win %DST%.profile
xcopy /D /Y %HERE%.bashrc_win %DST%.bashrc
xcopy /D /Y %HERE%.bash_profile_win %DST%.bash_profile
xcopy /D /Y %HERE%.zshrc_win %DST%.zshrc
xcopy /D /Y %HERE%.tmux.win.conf %DST%.tmux.conf


pause
exit