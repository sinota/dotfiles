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


pause
exit