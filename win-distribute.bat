rem �{���̓����N�ɂ�����������̓R�s�[�B�X�V���邽�тɂ���
rem �o�b�`�t�@�C�������s����K�v������B

rem @echo off

setlocal
set HERE=%~dp0
set DST=%HOME%

rem Need Administrator privilege + password 
rem runas /user:administrator "mklink %DST%_vimrc %HERE%.vimrc"

rem /Y: force overwrite
copy /-Y %HERE%.vimrc %DST%.vimrc
copy /-Y %HERE%.profile_win %DST%.profile
copy /-Y %HERE%.bashrc_win %DST%.bashrc
copy /-Y %HERE%.bash_profile_win %DST%.bash_profile

pause
exit