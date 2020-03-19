@echo off
set prover=1.1zh
title Onetext easy creater Version %prover%
cls
goto lselect

:lselect
echo.English(E) or Chinese(C)?
echo.����(C)��Ӣ��(E)?
set /p ench=
if %ench%==E goto beginen
if %ench%==e goto beginen
if %ench%==C goto beginzh
if %ench%==c goto beginzh
goto lselect

:beginzh
cls
echo.���С�ű����԰����㴴�����Լ���һ������
echo.(һ����@lz233����)
echo.�������������Ϊ?(����.json)
set /p cfgname=
echo.[ >>%userprofile%/desktop/%cfgname%.json
goto creatp1zh

:beginen
cls
echo.This bat allows you to DIY your own Onetext config.
echo.(Onetext was creat by @lz233)
echo.Name your config as? (xxx.json)
set /p cfgname=
echo.[ >>%userprofile%/desktop/%cfgname%.json
goto creatp1en

:creatp1en
echo.{>>%userprofile%/desktop/%cfgname%.json
echo.What's the text you want to show?
set /p text=
echo.Who said this?
set /p said=
echo.Where did it from?(it couid be a letter,a book,a group and so on.)
set /p from=
echo.What's the date today?(yyyy.mm.dd)
set /p date1=
echo.When did he(or she) said?(if you don't know,type "skip")
set /p date2=
if %date2%==skip goto setdate2en
set date2ok=ok
goto creatp2en

:creatp1zh
echo.{>>%userprofile%/desktop/%cfgname%.json
echo.������ʾʲô���Ծ���?
set /p text=
echo.˭˵���������?
set /p said=
echo.���ĳ���������(������һ���飬һ�������)
set /p from=
echo.���������(��������.����.����)
set /p date1=
echo.��(����)ʲôʱ��˵����仰(����㲻֪���������롰skip��)
set /p date2=
if %date2%==skip goto setdate2zh
set date2ok=ok
goto creatp2zh

:setdate2en
set date2ok=nope
goto creatp2en

:setdate2zh
set date2ok=nope
goto creatp2zh

:creatp2en
echo.Wait......
echo."text":"%text%",>>%userprofile%/desktop/%cfgname%.json
echo."by":"%said%",>>%userprofile%/desktop/%cfgname%.json
echo "from":"%from%",>>%userprofile%/desktop/%cfgname%.json
if %date2ok%==ok goto creatp3en
goto creatp4en

:creatp2zh
echo.���Ժ�......
echo."text":"%text%",>>%userprofile%/desktop/%cfgname%.json
echo."by":"%said%",>>%userprofile%/desktop/%cfgname%.json
echo "from":"%from%",>>%userprofile%/desktop/%cfgname%.json
if %date2ok%==ok goto creatp3zh
goto creatp4zh

:creatp3en
echo."time":["%date1%,%date2%"]>>%userprofile%/desktop/%cfgname%.json
goto creatp5en

:creatp3zh
echo."time":["%date1%,%date2%"]>>%userprofile%/desktop/%cfgname%.json
goto creatp5zh

:creatp4en
echo."time":["%date1%"]>>%userprofile%/desktop/%cfgname%.json
goto creatp5en

:creatp4zh
echo."time":["%date1%"]>>%userprofile%/desktop/%cfgname%.json
goto creatp5zh

:creatp5en
set /p add=Add another one? YES(Y) OR NO(N)
if %add%==Y goto add1en
if %add%==y goto add1en
goto exiten

:creatp5zh
set /p add=�����һ��������? ��(Y)���(N)
if %add%==Y goto add1zh
if %add%==y goto add1zh
goto exitzh

:add1en
echo.},>>%userprofile%/desktop/%cfgname%.json
goto creatp1en

:add1zh
echo.},>>%userprofile%/desktop/%cfgname%.json
goto creatp1zh

:exiten
echo.}>>%userprofile%/desktop/%cfgname%.json
echo.]>>%userprofile%/desktop/%cfgname%.json
echo.All done!
echo.The %cfgname%.json file is in your desktop.
echo.Now you can directly use it into the OneText!
echo.(Onetext created by @lz233)
pause >nul
exit

:exitzh
echo.}>>%userprofile%/desktop/%cfgname%.json
echo.]>>%userprofile%/desktop/%cfgname%.json
echo.ȫ����ɣ�
echo.�ļ�%cfgname%.json������ĵ���������
echo.�����ڿ���ֱ�ӽ������һ���У�
echo.(һ����@lz233����)
pause >nul
exit