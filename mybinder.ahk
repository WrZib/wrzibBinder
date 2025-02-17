; 0.1 alpha
#SingleInstance, Force
#NoEnv
#UseHook
SetWorkingDir %A_ScriptDir%
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0





SplashTextoff
ListLines Off
Process, Priority, , A
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
reloadStatus = 0
DayANS = 0
WeekANS = 0

localFile := A_ScriptFullPath
tempFile := localFile . ".tmp"

FormatTime, CurrentDate,, ddMM
IniRead, Week, Settings.ini, ANS, Week
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
if CurrentDateT=%CurrentDate%
{
IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
IniRead, DayANS, Settings.ini, ANS, DayANS
}
else
{
    IniWrite, %CurrentDate%, Settings.ini, ANS, CurrentDateT
    IniWrite, %DayANS%, Settings.ini, ANS, DayANS
    IniRead, DayANS, Settings.ini, ANS, DayANS
    IniRead, CurrentDateT, Settings.ini, ANS, CurrentDateT
}
if Week=%A_YWeek%
{
IniRead, Week, Settings.ini, ANS, Week
IniRead, WeekANS, Settings.ini, ANS, WeekANS
}
else
{
    IniWrite, %A_YWeek%, Settings.ini, ANS, Week
    IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
    IniRead, WeekANS, Settings.ini, ANS, WeekANS
    IniRead, Week, Settings.ini, ANS, Week
}
IniRead, Radio1, Settings.ini, Settings, 1920x1080
IniRead, Radio2, Settings.ini, Settings, 2554x1411
IniRead, Radio3, Settings.ini, Settings, Male
IniRead, Radio4, Settings.ini, Settings, Female
IniRead, Radio7, Settings.ini, Settings, 1600x900
IniRead, Radio5, Settings.ini, Settings, 1440x900
IniRead, Radio6, Settings.ini, Settings, 1680x1050
IniRead, Radio13, Settings.ini, Settings, 1366x768
IniRead, Radio22, Settings.ini, Settings, 1366x7682
IniRead, Radio14, Settings.ini, Settings, 1280x960
;IniRead, Radio15, Settings.ini, Settings, 2560х1440
IniRead, Radio16, Settings.ini, Settings, 2560х1440
IniRead, Radio19, Settings.ini, Settings, 1920x10802
IniRead, Radio20, Settings.ini, Settings, 1280х1024
IniRead, Radio8, Settings.ini, Settings, /gm
IniRead, Radio9, Settings.ini, Settings, /esp
IniRead, Radio10, Settings.ini, Settings, /dl
IniRead, Radio11, Settings.ini, Settings, /chide
IniRead, Radio12, Settings.ini, Settings, /templeader
IniRead, Radio18, Settings.ini, Settings, /prange 1000 0
IniRead, Radio21, Settings.ini, Settings, /netstat
IniRead, key1, Settings.ini, KeySetup, KEY1
IniRead, key2, Settings.ini, KeySetup, KEY2
IniRead, key3, Settings.ini, KeySetup, KEY3
IniRead, key4, Settings.ini, KeySetup, KEY4
IniRead, key5, Settings.ini, KeySetup, KEY5
IniRead, key6, Settings.ini, KeySetup, KEY6
IniRead, key7, Settings.ini, KeySetup, KEY7
IniRead, key8, Settings.ini, KeySetup, KEY8
IniRead, key9, Settings.ini, KeySetup, KEY9
IniRead, key10, Settings.ini, KeySetup, KEY10
IniRead, key11, Settings.ini, KeySetup, KEY11
IniRead, key12, Settings.ini, KeySetup, KEY12
IniRead, key13, Settings.ini, KeySetup, KEY13
IniRead, key14, Settings.ini, KeySetup, KEY14
IniRead, key15, Settings.ini, KeySetup, KEY15
IniRead, key16, Settings.ini, KeySetup, KEY16
IniRead, key17, Settings.ini, KeySetup, KEY17
IniRead, key18, Settings.ini, KeySetup, KEY18
IniRead, key19, Settings.ini, KeySetup, KEY19
IniRead, key20, Settings.ini, KeySetup, KEY20
IniRead, qdis, Settings.ini, Discord, qdis
IniRead, gadis, Settings.ini, Discord, gadis
IniRead, zgadis, Settings.ini, Discord, zgadis
if qdis=ERROR
{
IniWrite, wrzib, Settings.ini, Discord, qdis
IniWrite, kato1, Settings.ini, Discord, gadis
IniWrite, sincerity.a, Settings.ini, Discord, zgadis
}
IniRead, qX, Settings.ini, Coords, qX
IniRead, qY, Settings.ini, Coords, qY
if qX=ERROR
{
IniWrite, 0, Settings.ini, Coords, qX
IniWrite, 0, Settings.ini, Coords, qY
Reload
}
Hotkey, %KEY1%, Off, UseErrorLevel
Hotkey, %KEY1%, Reports, On, UseErrorLevel
Hotkey, %KEY2%, Off, UseErrorLevel
Hotkey, %KEY2%, delv, On, UseErrorLevel
Hotkey, %KEY3%, Off, UseErrorLevel
Hotkey, %KEY3%, gm, On, UseErrorLevel
Hotkey, %KEY4%, Off, UseErrorLevel
Hotkey, %KEY4%, tp, On, UseErrorLevel
Hotkey, %KEY5%, Off, UseErrorLevel
Hotkey, %KEY5%, fastrep, On, UseErrorLevel
Hotkey, %KEY6%, Off, UseErrorLevel
Hotkey, %KEY6%, fastans, On, UseErrorLevel
Hotkey, %KEY7%, Off, UseErrorLevel
Hotkey, %KEY7%, dl, On, UseErrorLevel
Hotkey, %KEY8%, Off, UseErrorLevel
Hotkey, %KEY8%, mtp, On, UseErrorLevel
Hotkey, %KEY9%, Off, UseErrorLevel
Hotkey, %KEY9%, gcar, On, UseErrorLevel
Hotkey, %KEY10%, Off, UseErrorLevel
Hotkey, %KEY10%, rep, On, UseErrorLevel
Hotkey, %KEY11%, vhod, On, UseErrorLevel
Hotkey, %KEY12%, resc, On, UseErrorLevel
Hotkey, %KEY13%, PunishmentHandler, On, UseErrorLevel
Hotkey, %KEY14%, memo, On, UseErrorLevel
Hotkey, %KEY15%, gh, On, UseErrorLevel
Hotkey, %KEY16%, chide, On, UseErrorLevel
Hotkey, %KEY17%, zzdebug, On, UseErrorLevel
Hotkey, %KEY18%, esp, On, UseErrorLevel
Hotkey, %KEY19%, killplayer, On, UseErrorLevel
Hotkey, %KEY20%, vetir, On, UseErrorLevel

;; Левый блок кнопок
Gui, 2: Add, Button, x10 y10 w113 h33 gПомощь , Помощь
Gui, 2: Add, Button, x10 y50 w113 h33 gТелепорты, Телепорты
Gui, 2: Add, Button, x10 y90 w113 h33 gКоманды, Команды
Gui, 2: Add, Button, x10 y130 w113 h33 gОтветы, Ответы
Gui, 2: Add, Button, x10 y170 w113 h33 gОтветыдва, Ответы 2
Gui, 2: Add, Button, x10 y210 w113 h33 gОтветытри, Ответы 3
Gui, 2: Add, Button, x10 y250 w113 h33 gОтветыобн, Ответы 4
Gui, 2: Add, Button, x10 y290 w113 h33 gНаказания, Наказания
Gui, 2: Add, Button, x10 y330 w113 h33 gСкилы, Скилы
Gui, 2: Add, Button, x10 y370 w113 h33 gИнфо, Инфо
Gui, 2: Add, Button, x10 y520 w113 h33 gSaveData, Сохранить
Gui, 2: Add, Button, x10 y560 w113 h50 gcoord, Изменить расположение счетчика

;; Правый блок кнопок
Gui, 2: Add, Button, x600 y50 w138 h37 gdiscord , Ввод Вашего дискорда
Gui, 2: Add, Button, x600 y95 w138 h37 gdiscordga , Дискорд ГА
Gui, 2: Add, Button, x600 y140 w138 h37 gdiscordzga , Дискорд зГА

Gui, 2: Add, Button, x601 y570 w67 h37 gcheckupd , Проверить обновление

; Файлы:
IfNotExist, %A_ScriptDir%\Punishment.txt 
{
FileAppend,, %A_ScriptDir%\Punishment.txt 
}
IfnotExist, %A_ScriptDir%\img
{
FileCreateDir, %A_ScriptDir%\img
}

IfnotExist, %A_ScriptDir%\img\logo1.png 
{
sleep, 1000
URLDownloadToFile, https://64.media.tumblr.com/8021aacdebf995f0a3dabbe0db23c0d3/2ef0df989fdfae99-87/s540x810/3b5aba8abe18ac2de8c22f7ba7f298d1bc966520.pnj,%A_ScriptDir%\img\logo1.png
}

; Не надо менять вора
FileGetSize, size, %A_ScriptDir%\img\logo1.png
If (size != 98744) and (size != 0){
Run https://www.youtube.com/watch?v=M0Wbb_8f6z4
Filedelete, %A_ScriptDir%\img\logo1.png
URLDownloadToFile, https://64.media.tumblr.com/8021aacdebf995f0a3dabbe0db23c0d3/2ef0df989fdfae99-87/s540x810/3b5aba8abe18ac2de8c22f7ba7f298d1bc966520.pnj,%A_ScriptDir%\img\logo1.png
MsgBox Не наебывай меня Тони.
}

;Общая инфа, версия, картинки, цвета окна
Gui, 2: -MaximizeBox
Gui, 2: Show, w750 h620, Мой Binder
Gui, 2: Color, 1e2124
Gui, 2: Font, c0xFFFFFF
Gui, 2: Add, Picture, x600 y190 w140 h200, %A_ScriptDir%\img\logo1.png
Gui, 2: Add, Picture, x750 y140, %A_ScriptDir%\img\logo2.png

Gui, 2: Add, Text, x184 y14 w120 h23 +0x200 +Border +0x1, Горячие клавиши
Gui, 2: Add, Hotkey, x156 y50 w48 h21 vHot1, %KEY1%
Gui, 2: Add, Hotkey, x156 y80 w48 h21 vHot2, %KEY2%
Gui, 2: Add, Hotkey, x156 y110 w48 h21 vHot3, %KEY3%
Gui, 2: Add, Hotkey, x156 y140 w48 h21 vHot4, %KEY4%
Gui, 2: Add, Hotkey, x156 y170 w48 h21 vHot5, %KEY5%
Gui, 2: Add, Hotkey, x156 y200 w48 h21 vHot6, %KEY6%
Gui, 2: Add, Hotkey, x156 y230 w48 h21 vHot7, %KEY7%
Gui, 2: Add, Hotkey, x156 y260 w48 h21 vHot8, %KEY8%
Gui, 2: Add, Hotkey, x156 y290 w48 h21 vHot9, %KEY9%
Gui, 2: Add, Hotkey, x156 y320 w48 h21 vHot10, %KEY10%
Gui, 2: Add, Hotkey, x530 y324 w48 h21 vHot11, %KEY11% ; Команды при входе
Gui, 2: Add, Hotkey, x156 y380 w48 h21 vHot12, %KEY12%
Gui, 2: Add, Hotkey, x156 y440 w48 h21 vHot14, %KEY14%
Gui, 2: Add, Hotkey, x156 y410 w48 h21 vHot15, %KEY15%
Gui, 2: Add, Hotkey, x156 y500 w48 h21 vHot16, %KEY16%
Gui, 2: Add, Hotkey, x156 y470 w48 h21 vHot13, %KEY13%
Gui, 2: Add, Hotkey, x156 y530 w48 h21 vHot17, %KEY17%
Gui, 2: Add, Hotkey, x156 y560 w48 h21 vHot18, %KEY18%
Gui, 2: Add, Hotkey, x156 y350 w48 h21 vHot19, %KEY19%
Gui, 2: Add, Hotkey, x156 y590 w48 h21 vHot20, %KEY20%

Gui, 2: Add, Text, x213 y53 w120 h14 +0x200, Открыть репорты
Gui, 2: Add, Text, x213 y83 w120 h14 +0x200, Удалить транспорт
Gui, 2: Add, Text, x213 y113 w120 h14 +0x200, GM
Gui, 2: Add, Text, x213 y143 w120 h14 +0x200, ТП к игроку
Gui, 2: Add, Text, x213 y173 w120 h14 +0x200, Быстрый репорт
Gui, 2: Add, Text, x213 y203 w120 h14 +0x200, Быстрый ответ
Gui, 2: Add, Text, x213 y233 w120 h14 +0x200, Вкл/Выкл /dl
Gui, 2: Add, Text, x213 y263 w120 h14 +0x200, ТП на метку
Gui, 2: Add, Text, x213 y293 w120 h14 +0x200, ТП авто к себе
Gui, 2: Add, Text, x213 y323 w120 h14 +0x200, Добавить +1 репорт
Gui, 2: Add, Text, x213 y353 w120 h14 +0x200, Убить игрока
Gui, 2: Add, Text, x213 y383 w120 h14 +0x200, Воскресить игрока
Gui, 2: Add, Text, x213 y443 w120 h14 +0x200, Памятка
Gui, 2: Add, Text, x213 y413 w120 h14 +0x200, Телепорт игрока к себе
Gui, 2: Add, Text, x213 y473 w120 h14 +0x200, Выдача наказаний
Gui, 2: Add, Text, x213 y503 w120 h14 +0x200, Вкл/Выкл /chide
Gui, 2: Add, Text, x213 y533 w120 h14 +0x200, Вкл/Выкл /zzdebug
Gui, 2: Add, Text, x213 y563 w220 h14 +0x200, Вкл/Выкл ESP for monseti & J. Katana
Gui, 2: Add, Text, x213 y593 w220 h14 +0x200, /veh vetir
Gui, 2: Add, Text, x400 y14 w120 h23 +0x200 +Border +0x1, Настройки
Gui, 2: Add, Text, x400 y52 w120 h23 +0x200 +Border +0x1, Разрешение экрана
Gui, 2: Add, Radio, x360 y82 w120 h23 Group vRadio1 Checked%Radio1%, 1920x1080
Gui, 2: Add, Radio, x360 y112 w100 h23 vRadio7 Checked%Radio7%, 1600x900
Gui, 2: Add, Radio, x360 y142 w100 h23 vRadio2 Checked%Radio2%, 2554x1411
Gui, 2: Add, Radio, x360 y172 w100 h23 vRadio5 Checked%Radio5%, 1440x900
Gui, 2: Add, Radio, x490 y82 w100 h23 vRadio6 Checked%Radio6%, 1680x1050
Gui, 2: Add, Radio, x490 y112 w100 h23 vRadio13 Checked%Radio13%, 1366x768
Gui, 2: Add, Radio, x360 y232 w100 h23 vRadio22 Checked%Radio22%, 1366x768 | 5:3
Gui, 2: Add, Radio, x490 y142 w100 h23 vRadio14 Checked%Radio14%, 1280x960
;Gui, 2: Add, Radio, x490 y172 w100 h23 vRadio15 Checked%Radio15%, 2560х1440
Gui, 2: Add, Radio, x490 y172 w100 h23 vRadio16 Checked%Radio16%, 2560х1440
Gui, 2: Add, Radio, x490 y202 w100 h23 vRadio20 Checked%Radio20%, 1280x1024
Gui, 2: Add, Radio, x360 y202 w120 h23 vRadio19 Checked%Radio19%, 1920x1080 | 5:4
Gui, 2: Add, Text, x600 y14 w138 h23 +0x200 +Border +0x1, Персонализация
Gui, 2: Add, Text, x400 y262 w120 h23 +0x200 +Border +0x1, Ваш пол
Gui, 2: Add, Radio, x360 y292 w100 h23 Group vRadio3 Checked%Radio3%, Мужской пол
Gui, 2: Add, Radio, x490 y292 w100 h23 vRadio4 Checked%Radio4%, Женский пол
Gui, 2: Add, Text, x400 y322 w120 h23 +0x200 +Border +0x1, Команды при входе
Gui, 2: Add, CheckBox, x401 y350 w120 h23 vRadio8 Checked%Radio8%, /gm
Gui, 2: Add, CheckBox, x401 y375 w120 h23 vRadio9 Checked%Radio9%, /netstat
Gui, 2: Add, CheckBox, x401 y400 w120 h23 vRadio10 Checked%Radio10%, /dl
Gui, 2: Add, CheckBox, x401 y425 w120 h23 vRadio11 Checked%Radio11%, /esp
Gui, 2: Add, CheckBox, x401 y450 w180 h23 vRadio12 Checked%Radio12%, /templeader 7 (15k PayDay)
Gui, 2: Add, CheckBox, x401 y475 w120 h23 vRadio18 Checked%Radio18%, /chide
Gui, 2: Add, CheckBox, x401 y500 w120 h23 vRadio21 Checked%Radio21%, /zzdebug

WinSet_Click_Through(I, T="254") {
IfWinExist, % "ahk_id " I
{
If (T == "Off")
{
WinSet, AlwaysOnTop, Off, % "ahk_id " I
WinSet, Transparent, Off, % "ahk_id " I
WinSet, ExStyle, -0x20, % "ahk_id " I
}
Else
{
WinSet, AlwaysOnTop, On, % "ahk_id " I
If(T < 0 || T > 254 || T == "On")
T := 254
WinSet, Transparent, % T, % "ahk_id " I
WinSet, ExStyle, +0x20, % "ahk_id " I
}
}
Else
Return 0
}
Gui, +LastFound +ToolWindow
ID := WinExist()
Gui, Show, NoActivate, Hide x0 y0 w0 h0, Overlay
WinSet_Click_Through(ID, "On")
GuiControl,, Un-Clickable
CustomColor := "#00FF00"
Gui, +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui, Color, cRed
Gui, Font,, Intro
Gui, Font, s10
Gui, Font, q1
Gui, Font, w400
Gui, Add, Text, vMyText cWhite, XXX, YYYY
Gui, Add, Text, vMyTotalR cWhite, XXXXXX, YYYYYY
Gui, Color, 1c2126
WinSet, TransColor, AAAAAA 155
GoSub, UpdateCounter1
Gui, Show, x%qX% y%qY% w100 h63, Overlay
return

update1:
return

SaveData:
Gui, Submit, NoHide
IniWrite, %Radio1%, Settings.ini, Settings, 1920x1080
IniWrite, %Radio7%, Settings.ini, Settings, 1600x900
IniWrite, %Radio5%, Settings.ini, Settings, 1440x900
IniWrite, %Radio6%, Settings.ini, Settings, 1680x1050
IniWrite, %Radio2%, Settings.ini, Settings, 2554x1411
IniWrite, %Radio13%, Settings.ini, Settings, 1366x768
IniWrite, %Radio22%, Settings.ini, Settings, 1366x7682
IniWrite, %Radio14%, Settings.ini, Settings, 1280x960
;IniWrite, %Radio15%, Settings.ini, Settings, 2560x1440
IniWrite, %Radio16%, Settings.ini, Settings, 2560х1440
IniWrite, %Radio19%, Settings.ini, Settings, 1920x10802
IniWrite, %Radio20%, Settings.ini, Settings, 1280х1024
IniWrite, %Radio3%, Settings.ini, Settings, Male
IniWrite, %Radio4%, Settings.ini, Settings, Female
IniWrite, %Radio8%, Settings.ini, Settings, /gm
IniWrite, %Radio9%, Settings.ini, Settings, /esp
IniWrite, %Radio10%, Settings.ini, Settings, /dl
IniWrite, %Radio11%, Settings.ini, Settings, /chide
IniWrite, %Radio12%, Settings.ini, Settings, /templeader
IniWrite, %Radio18%, Settings.ini, Settings, /prange 1000 0
IniWrite, %Radio21%, Settings.ini, Settings, /netstat
IniWrite, %Hot1%, Settings.ini, KeySetup, KEY1
IniWrite, %Hot2%, Settings.ini, KeySetup, KEY2
IniWrite, %Hot3%, Settings.ini, KeySetup, KEY3
IniWrite, %Hot4%, Settings.ini, KeySetup, KEY4
IniWrite, %Hot5%, Settings.ini, KeySetup, KEY5
IniWrite, %Hot6%, Settings.ini, KeySetup, KEY6
IniWrite, %Hot7%, Settings.ini, KeySetup, KEY7
IniWrite, %Hot8%, Settings.ini, KeySetup, KEY8
IniWrite, %Hot9%, Settings.ini, KeySetup, KEY9
IniWrite, %Hot10%, Settings.ini, KeySetup, KEY10
IniWrite, %Hot11%, Settings.ini, KeySetup, KEY11
IniWrite, %Hot12%, Settings.ini, KeySetup, KEY12
IniWrite, %Hot13%, Settings.ini, KeySetup, KEY13
IniWrite, %Hot14%, Settings.ini, KeySetup, KEY14
IniWrite, %Hot15%, Settings.ini, KeySetup, KEY15
IniWrite, %Hot16%, Settings.ini, KeySetup, KEY16
IniWrite, %Hot17%, Settings.ini, KeySetup, KEY17
IniWrite, %Hot18%, Settings.ini, KeySetup, KEY18
IniWrite, %Hot19%, Settings.ini, KeySetup, KEY19
IniWrite, %Hot20%, Settings.ini, KeySetup, KEY20
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData1:
Gui, 3: Submit, NoHide
IniWrite, %qX%, Settings.ini, Coords, qX
IniWrite, %qY%, Settings.ini, Coords, qY
Reload
return
SaveData2:
Gui, 4: Submit, NoHide
IniWrite, %qdis%, Settings.ini, Discord, qdis
Reload
return
SaveData3:
Gui, 5: Submit, NoHide
IniWrite, %gadis%, Settings.ini, Discord, gadis
Reload
return
SaveData4:
Gui, 6: Submit, NoHide
IniWrite, %zgadis%, Settings.ini, Discord, zgadis
Reload
return

UpdateCounter1:
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
UpdateCounter:
DayANS+=1
WeekANS+=1
IniWrite, %DayANS%, Settings.ini, ANS, DayANS
IniRead, DayANS, Settings.ini, ANS, DayANS
IniWrite, %WeekANS%, Settings.ini, ANS, WeekANS
IniRead, WeekANS, Settings.ini, ANS, WeekANS
GuiControl,, MyText, День: %DayANS%
GuiControl,, MyTotalR, Неделя: %WeekANS%
return
Reports:
SendInput, {F8}
return

;GuiClose: ; Не работает :\ 
;Exitapp 
;Return 

;; Памятка
memo:
State2:=!State2
If state2
{
CustomColor2 = 	EEAA99
Gui 3: +LastFound +AlwaysOnTop -Caption +ToolWindow
Gui 3: Color, black
Gui 3: Font, s9
Gui 3: Font, w3000
Gui 3: Font, cFFFFFF
Gui 3: Add, Text,, =================================================================================================================================================================================================================================================================================================================================================================================
GUI 3: ADD, TEXT, cGreen,!                    ЧАСТЫЕ НАРУШЕНИЯ		                                                                                                			ДРУГИЕ НАРУШЕНИЯ		                                                                                                          		КРИМИНАЛЬНЫЕ НАРУШЕНИЯ
Gui 3: Add, Text, cYellow, DM                                   	            Demorgan 100 минут / WARN / Ban 3 - 30 дней.		            Анимация секс характера.					WARN.						Грабителей меньше 4 чел. и 2 ТС.				Demorgan 15 - 35 минут
Gui 3: Add, Text,, DB	                                    	Demorgan 30 - 90 минут / WARN / Ban 3 - 30 дней.		Аморальные/ceксуальные дейст.				Ban 3 - 7 дней.					Меньше 4-х похитителей					WARN.
Gui 3: Add, Text, cYellow, Уход от РП                                	WARN / Ban 4-8 дней.						Ограбление/Похищение в ЗЗ					HardBan 7 дней / WARN.			Убийство жертвы без IC причины				Demorgan 100 минут.
Gui 3: Add, Text,, SK	                                       	Ban 2-5 дня / Hardban 2 - 7 дней.				Отыгровки в свою пользу					Demorgan 15-35 минут.				Более 2х фракций в союзе на ограблении биза			Demorgan 90 минут / Устный лидеру.
Gui 3: Add, Text, cYellow, PG	                                            	Demorgan 35-90 минут / WARN / Ban 2-7 дней.			Обман администрации						Ban-Hardban 10 - 30 дней / PermBan.		Агрес. дейст. на враж. респе					Ban 5 дней.
Gui 3: Add, Text,, NRD					Demorgan 15 - 90 минут / Ban 3-7 дней.				Программа изм. голоса					Mute 10 - 60 минут.				Блок. входы/выходы из бизнеса ТС.				Demorgan 35 минут.
Gui 3: Add, Text, cYellow, NRP поведение	                                    Demorgan 15 - 90 минут / WARN / Ban 3 - 15 дней.		Трап / нрп ник							Demorgan 720 минут (до смены)			Кол-во участников ограбления более 35 чел.			Demorgan 15 минут всем участникам.
Gui 3: Add, Text,, Крайм к EMS(Без ПГ)                  	Demorgan 90 минут / WARN.                                 		Лутерство в бою						Demorgan 35 минут / WARN		           ТС/Одежда не в фрак. цвет					Demorgan 35 минут.
Gui 3: Add, Text, cYellow, Музыка в ЗЗ	                                   	Mute 30-60 минут.						Помеха работе администрации					Kick / Demorgan-Mute 10 - 100 минут.		Срез. бронижелета без отыгровок				Demorgan 10 - 60 минут.
Gui 3: Add, Text,, Уход в ЗЗ	                                   	Demorgan 90 минут.						Спам/флуд в чат						Mute 10 - 60 минут.				Уход от погони на респ.					Demorgan 100 минут.
Gui 3: Add, Text, cYellow, Оск. нации				Ban 15-30 дней / Hardban 15-30 дней.			  	Реклама посторонних проектов					HardBan 15 - 30 дней / PermBan.		Переговорщик в заложниках					WARN.
Gui 3: Add, Text,, Оск. родных                        		Demorgan 90 минут / Ban 5-30 дней / Hardban 15.		Оск. администрации						Ban 5 - 30 дней / HardBan 10 - 30 дней.
Gui 3: Add, Text, cYellow, Громкие звуки в войс                          	Mute 10 - 120 минут.						-------------------------------------					------------------------------								ГОСУДАРСТВЕННЫЕ НАРУШЕНИЯ
Gui 3: Add, Text,, ООС оскобления             		Demorgan 15-90 минут.						Читерство							PermBan.
Gui 3: Add, Text, cYellow, Свап оружия                	     		WARN / Ban 2 дня.					            Оскорбительные отыгровки					Demorgan 10-35 минут.				Спец техника в городе						Demorgan 35 минут.
Gui 3: Add, Text,, Угон спец техники	                        Demorgan 15 - 90 минут / Ban 2 - 10 дней.			Обман /do							Demorgan 35 минут.				Патруль на личке						Demorgan 35 минут.
Gui 3: Add, Text, cYellow, Байт гос. структур                           	Ban 2-5 дней.					 	 	Оскорбления игроков в репорт(Не актуально)					-----------.			Патруль гетто в соло без кодов.				Demorgan 35 минут.
Gui 3: Add, Text,, Крайм без фракции          		Demorgan 15 - 90 мин.						Ограбление мёртвого						Ban 3 дня.			  		Связь с краймом						WARN.
Gui 3: Add, Text, cYellow, Запрещенные слова                              Mute 240 / Ban 3-30 дней / Permban.				Ограб. без отыгровок						Demorgan 15-60 минут.				Затягивание допроса (120 мин.)				Demorgan 35-90 минут всем.
Gui 3: Add, Text,, Багоюз	                                                WARN / Ban 3 - 30 дней / Hardban 3 - 30 дней / Permban.	Хилл/броня в бою						Demorgan 35 - 90 минут.			1.4 ПГО								Увольнение / WARN.
Gui 3: Add, Text, cYellow, Крайм в ЗЗ	                         	Demorgan 10 - 100 минут / WARN / Ban 3 дня.			Стрельба с ТС по пешим					Demorgan 90 минут.
Gui 3: Add, Text,, Фракции	                                    1 - LSPD   2 - EMS   3 - SD   4 - SANG   5 - GOV   6 - WN   7 - FIB   8 - Ballas   9 - Vagos   10 - Fam   11 - Bloods   12 - Mara   13 - LCN   14 - RM   15 - YAK   16 - MEX   17 -  LOST   18 - AOD   19 - AM    20 - Grubie   21 - GrandClub   22 - Richman   23 - Manor   24 - Cont 			
Gui 3: Add, Text,,                =================================================================================================================================================================================================================================================================================================================================================================================
WinSet, TransColor, %CustomColor2% 200
Gui 3: Show, x0 y430 NoActivate, window.
}
Else
Gui 3: Destroy
Return
vetir:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /veh vetir 999 999{Enter}
Return
dl:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /dl{Enter}
return
tp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /tp{space}
return
inv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /inv{Enter}
return
coord:
Gui, 3: -MaximizeBox
Gui, 3: Show, w300 h75, Перемещение счетчика репортов
Gui, 3: Color, 838d96
Gui, 3: Font, c0x000000
Gui, 3: Add, Edit, x10 y10 w48 h21 vqX, %qX%
Gui, 3: Add, Edit, x10 y40 w48 h21 vqY, %qY%
Gui, 3: Add, Text, x40 y10 w120 h23 +0x200 +0x1, Координата X
Gui, 3: Add, Text, x40 y40 w120 h23 +0x200 +0x1, Координата Y
Gui, 3: Add, Button, x170 y20 w113 h33 gSaveData1, Применить
return
discord:
Gui, 4: -MaximizeBox
Gui, 4: Show, w285 h40, Ваш дискорд
Gui, 4: Color, 838d96
Gui, 4: Font, c0x000000
Gui, 4: Add, Edit, x10 y10 w110 h21 vqdis, %qdis%
Gui, 4: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Ваш дискорд
Gui, 4: Add, Button, x230 y10 w40 h20 gSaveData2, ✓
return
discordga:
Gui, 5: -MaximizeBox
Gui, 5: Show, w285 h40, Дискорд ГА
Gui, 5: Color, 838d96
Gui, 5: Font, c0x000000
Gui, 5: Add, Edit, x10 y10 w110 h21 vgadis, %gadis%
Gui, 5: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Дискорд ГА
Gui, 5: Add, Button, x230 y10 w40 h20 gSaveData3, ✓
return
discordzga:
Gui, 6: -MaximizeBox
Gui, 6: Show, w285 h40, Дискорд зГА
Gui, 6: Color, 838d96
Gui, 6: Font, c0x000000
Gui, 6: Add, Edit, x10 y10 w110 h21 vzgadis, %zgadis%
Gui, 6: Add, Text, x105 y10 w115 h23 +0x200 +0x1, Дискорд зГА
Gui, 6: Add, Button, x230 y10 w40 h20 gSaveData4, ✓
return

GetScriptVersion(filePath) { ; проверка версии
    FileReadLine, firstLine, %filePath%, 1
    return Trim(StrReplace(firstLine, "; ")) 
}

checkupd: ; FIX изменить на GITHUB
UrlDownloadToFile, https://drive.google.com/uc?export=download&id=1TkCvK5EsfE1N_DFKu-ak2WPd0--jL0Hu, %tempFile%
if ErrorLevel {
    MsgBox, Ошибка загрузки обновления!
    return
}

newVersion := GetScriptVersion(tempFile)
oldVersion := GetScriptVersion(localFile)

if (newVersion = oldVersion) {
    MsgBox, У вас уже последняя версия (%oldVersion%).
    FileDelete, %tempFile%
} else {
    MsgBox, 4, , Доступно обновление! (%oldVersion% → %newVersion%)`nХотите продолжить?
    IfMsgBox No
        FileDelete, %tempFile%
        return
    if (newVersion = oldVersion) {
    MsgBox, Версия не изменилась, обновление не требуется.
    FileDelete, %tempFile%
    return
    }

    ; Перезапуск через другой процесс, чтобы избежать зависания
    Run, %ComSpec% /c timeout /t 2 & move /Y "%tempFile%" "%localFile%" & start "" "%localFile%", , Hide, UseErrorLevel
    FileDelete, %tempFile%
    ExitApp
    return
}

return

esp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /esp3{Enter}
return
; !1:: ; 4 katana
; BlockInput, SendAndMouse
; SendInput, {sc14}
; Sleep 50
; SendInput, /esp3{Enter}
; return
delv:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /delveh{Enter}
return
killplayer:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /hp  0{left 2}
return
PunishmentHandler:
Process, Exist, PlayGTAV.exe
if(Errorlevel)
{
WinActivate ahk_exe PlayGTAV.exe
Loop, read, %A_WorkingDir%\Punishment.txt
{
Loop, parse, A_LoopReadLine, %A_Tab%
{
ru := DllCall("LoadKeyboardLayout", "Str", "00000419", "Int", 1)
en := DllCall("LoadKeyboardLayout", "Str", "00000409", "Int", 1)
w := DllCall("GetForegroundWindow")
pid := DllCall("GetWindowThreadProcessId", "UInt", w, "Ptr", 0)
l := DllCall("GetKeyboardLayout", "UInt", pid)
if (l != ru)
{
PostMessage 0x50, 0, %ru%,, A
}
Sleep, 850
Send, {T}
Send, %A_LoopField%
Send, {Enter}
}
}
MsgBox, 64, Выдача наказаний, Наказания выданы.
}
else
{
MsgBox, 16, Выдача наказаний, Запустите игру!
}
return
gcar:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /getcar{Space}
return
gm:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /gm{Enter}
return
resc:
SendInput, {sc14}
Sleep 50
SendInput, /rescue{Space}
return
gh:
SendInput, {sc14}
Sleep 50
SendInput, /gh{Space}
return
chide:
SendInput, {sc14}
Sleep 50
SendInput, /chide{Enter}
zzdebug:
SendInput, {sc14}
Sleep 50
SendInput, /zzdebug{Enter}
return
gtar:
Process, Exist, GTA5.exe
return
dorab:
MsgBox, 64, Ошибка,Функция на доработке.
return
mtp:
BlockInput, SendAndMouse
SendInput, {sc14}
Sleep 50
SendInput, /mtp{Enter}
return
vhod: ; IDEA Добавить начальные команды
SendMessage, 0x50,, 0x4090409
SendInput, {T}
Sleep 300
SendInput, /gm{Enter}
Sleep 300
if (Radio11==1)
{
SendInput, {T}
Sleep 300
SendInput, /esp3{Enter}
Sleep 300
}
if (Radio18==1)
{
SendInput, {T}
Sleep 300
SendInput, /dl{Enter}
Sleep 300
}
if (Radio9==1)
{
SendInput, {T}
Sleep 300
SendInput, /chide{Enter}
Sleep 300
}
if (Radio8==1)
{
SendInput, {T}
Sleep 300
SendInput, /templeader 7{Enter}
Sleep 300
}
if (Radio10==1)
{
SendInput, {T}
Sleep 300
SendInput, /prange 1000 0{Enter}
Sleep 300
}
if (Radio21==1)
{
SendInput, {T}
Sleep 300
SendInput, /netstat{Enter}
Sleep 300
}
if (Radio12==1)
return
rep:
counter++
GoSub, UpdateCounter
Clipboard :=
return


; СЧЕТЧИК РЕПОРТОВ
Enter::
labelgo:
SendInput, {Enter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio22==1) { ; 1366x768 | 5:3
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return

NumpadEnter::
labelgo2:
SendInput, {NumpadEnter}
Sleep 250
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
else if (Radio22==1) { ; 1366x768 | 5:3
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
counter++
GoSub, UpdateCounter
Clipboard :=
}
}
return


;Телепорты
:?:.лспд::/ctp 429 -980 30.50
:?:.бол::/ctp 287.70 -578.35 50
:?:.шд::/ctp -434.87 6024.54 31.50
:?:.фз::/ctp -2336 3257 32.50
:?:.мэр::/ctp -534.70 -222.07 37.60
:?:.визл::/ctp -593 -929 24
:?:.фиб::/ctp 2527 -377 93

:?:.бал::/ctp -70.06 -1824.64 26.94
:?:.ваг::/ctp 967 -1817 31
:?:.фэм::/ctp -204.29 -1513.69 31.60
:?:.бладс::/ctp 496 -1330 29.40
:?:.мара::/ctp 1437.61 -1509.64 62.40

:?:.лкн::/ctp 1385 1154 114.40
:?:.рм::/ctp -1526 858 181
:?:.як::/ctp -1556.36 113.07 57
:?:.мекс::/ctp 381.03 23.12 91.40
:?:.ам::/ctp -1895.23 2027.19 141

:?:.лост::/ctp 969.84 -128.40 74.40
:?:.аод::/ctp 1995.99 3062.44 47.06

:?:.ириш::/ctp -3022 105 11.30
:?:.клаб::/ctp 1588.65 6445.38 25
:?:.рич::/ctp -1302.49 294.52 64.50
:?:.манор::/ctp -58.20 343.73 111.80
:?:.конт::/ctp -1865.51 -355.96 57

:?:.хум::/ctp 3569.54 3789.48 30
:?:.мейз::/ctp -75 -818 326
:?:.каз::/ctp 1110.117 217.0512 -49.56448
:?:.аш::/ctp -620 -2264 6
:?:.гг::/ctp -257 -2023 30
:?:.бургер::/ctp -1171.31 -890.20 13.90
:?:.багама::/ctp -1391.30 -585.35 30
:?:.кайо::/ctp 4488.58 -4493.52 4
:?:.авиа::/ctp 3035.21 -4688.55 15
:?:.мол::/ctp 61.67 -1751.80 47
:?:.трас::/ctp 7400 3946 1124
:?:.аук::/ctp -833 -699.50 27
:?:.бокс::/ctp 8.56 -1658.55 28.71
:?:.бар::/ctp -305.09 6259.59 30.92
:?:.бк::/ctp 500.44 109.79 96.49
:?:.ванила::/ctp 131.33 -1302.93 29.23
:?:.починка::/ctp -1430.45 -450.5 35.91
:?:.лск4::/ctp 1175.47 2671.33 37.85
:?:.порт::/ctp 417 -2501 13.46
:?:.стр::/ctp 1304 1453 98.87
:?:.лес::/ctp -321 6093 31.14
:?:.бмара::/ctp 1302 -1646 51.04
:?:.самол::/ctp 1473 2730 37.38
; Капты и бизвары
:?:.бдим::/setdim 3{left 2}
:?:.кдим::/setdim 555{left 4}

; Команды
:?:/tf::/tempfamily
:?:.еа::/tempfamily
;:?:.вгвг::/gw 538 weapon_firework
:?:/sm::/setmaterials
:?:.ыь::/setmaterials
:?:/tn::/tempname
:?:.ет::/tempname
:?:.еуьзтфьу::.еуьзтфьу
:?:.яяв::/zzdebug
:?:/zzd::/zzdebug
:?:/amph::/addamphitheater
:?:.фьзр::/addamphitheater
:?:/ramph::/removeamphitheater
:?:.кфьзр::/removeamphitheater
:?:/gzone::/togglegreenzone
:?:.пящту::/togglegreenzone
:?:/mcheck::/mutecheck
:?:.ьсрусл::/mutecheck
:?:.ьгеусрусл::/mutecheck
:?:.гтофшд::/unjail
:?:.цфкт::/warn
:?:/ld::/lastdriver
:?:.дв::/lastdriver
:?:/af::/ainfect
:?:.фа::/ainfect
:?:/sk::/skick
:?:.ыл::/skick
:?:/k::/kick
:?:.л::/kick
:?:/ai::/auninvite
:?:.фш::/auninvite
:?:.аи::/fb
:?:.гтьгеу::/unmute
:?:.пуезшт::/getpin
:?:.пшв::/gid
:?:.фвьшты::/admins
:?:.фштаусе::/ainfect
:?:.умутещт::/eventon
:?:.умутещаа::/eventoff
:?:.пц::/gw
:?:.мур::/veh
:?:.ашчсфк::/fixcar
:?:.уьздуфвук::/templeader
:?:/tl::/templeader
:?:.ед::/templeader
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.фгтшмшеу::/auninvite
:?:.учсфк::/excar
:?:.агуд::/fuel
:?:.згддекгтл::/pulltunk
:?:.акууя::/freez
:?:.езсфк::/tpcar
:?:.дфыевкшмук::/lastdriver
:?:.вудшеуь::/delitem
:?:/gc::/getcar
:?:.пс::/getcar
:?:.фв::/admins
:?:/ad::/admins
:?:.з::/players
:?:/p::/players
:?:.здфнукы::/players
:?:.рес::/rescue
:?:.ез::/tp
:?:.ызус::/spec
:?:.ызусщаа::/specoff {Enter} {F5}
:?:.фыьы::/asms
:?:.ку::Приветствую.
:?:.ф::/a
:?:/sp::/spec
:?:.ыз::/spec
:?:/so::/specoff {Enter} {F5}
:?:.ыщ::/specoff {Enter} {F5}
:?:/kill::/hp 0{left 2}
:?:.лшдд::/hp 0{left 2}
:?:.штсфк::/incar
:?:.пр::/gh
:?:.пиздец::<@&1316092573055717377> и <@&1316092465307975721> Уважаемая администрация, просим зайти вас на сервер, в данный момент нам очень нужна ваша помощь.
:?:.штм::/inv
:?:.шв::/id
:?:.рз::/hp
:?:.од::/ajail
:?:.фофшд::/ajail
:?:.лшсл::/kick
:?:.ылшсл::/skick
:?:.кузфшк::/repair
:?:.вд::/dl
:?:.уыз::/esp
:?:.пуесфк::/getcar
:?:.ифт::/ban
:?:.вудмур::/delveh
:?:.ьез::/mtp
:?:.мур::/veh
:?:.фмур::/aveh
:?:.рфквифт::/hardban
:?:.ьгеу::/mute
:?:.пшв::/gid
:?:.ср::/chide
:?:/ch::/chide
:?:.куысгу::/rescue
:?:.ыуевшь::/setdim
:?:/sd::/setdim
:?:.ыв::/setdim
:?:.сршву::/chide
:?:.афк::/a afk мин{left 4}
:?:.фгтсгаа::/auncuff
:?:.фсгаа::/acuff
:?:.акууяф::/freeza
:?:.scd::/setcardim
:?:.ыуесфквшь::/setcardim
:?:.ысв::/setcardim
:?:.rst::/resettempname
:?:.кет::/resettempname
:?:.куыуееуьзтфьу::/resettempname
; :?:.ызфцтсфк::/spawncar
; :?:/sc::/spawncar
; :?:.ыс::/spawncar

; ЧИФЫ КРАШЕЙ
; :?:.краш::
; SendMessage, 0x50,, 0x4090409
; SendInput, Здравствуйте. Если у Вас есть доказательства краша - предоставьте его в личные сообщения дискорда. Вас выпустят. Дискорд для связи: Billу{#}1258 или rezraf{#}7777.
; Return

:?:.краш::
SendMessage, 0x50,, 0x4090409
SendInput, Если у Вас есть доказательства краша - предоставьте его мне в личные сообщения дискорда. Я вас выпущу. Мой дискорд: %qdis%.
Return
:?:.дс::
SendMessage, 0x50,, 0x4090409
SendInput, Предоставьте видеодоказательство мне в личные сообщения дискорда: %qdis%. Приятной игры на Majestic RP.
Return
:?:.га::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь в личные сообщения дискорда к главному администратору: %gadis%.
Return
:?:.зга::
SendMessage, 0x50,, 0x4090409
SendInput, Обратитесь в личные сообщения дискорда к заместителю главного администратора: %zgadis%.
Return

::.тп::
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Сейчас помогу Вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio22==1) {
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4090409
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
Return

; Автоответ на репорт
fastans:
if (Radio1==1) {
MouseGetPos, 1410, 187
PixelGetColor, color, 1410, 187, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  ) | ( Var1 = 0x008313FF  ) | ( Var1 = 0x006619E9  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к Вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio2==1) {
MouseGetPos, 1901, 247
PixelGetColor, color, 1901, 247, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio7==1) {
MouseGetPos, 1211, 152
PixelGetColor, color, 1211, 152, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio5==1) {
MouseGetPos, 961, 159
PixelGetColor, color, 961, 159, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio6==1) {
MouseGetPos, 812, 233
PixelGetColor, color, 812, 233, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio13==1) {
MouseGetPos, 878, 136
PixelGetColor, color, 878, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio14==1) {
MouseGetPos, 888, 165
PixelGetColor, color, 888, 165, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio19==1) {
MouseGetPos, 1263, 193
PixelGetColor, color, 1263, 193, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio20==1) {
MouseGetPos, 901, 182
PixelGetColor, color, 901, 182, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio16==1) {
MouseGetPos, 1912, 250
PixelGetColor, color, 1912, 250, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
else if (Radio22==1) {
MouseGetPos, 836, 136
PixelGetColor, color, 836, 136, alt
Var1 = %color%
if ( Var1 = 0x005A1CE8  ) | ( Var1 = 0x005912FB  )
{
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
Sleep 50
counter++
GoSub, UpdateCounter
Clipboard :=
}
else {
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приветствую.{space}Уже лечу к вам.{Enter}
Sleep 50
SendInput, {F8}
Sleep 50
SendInput, {T}
Sleep 50
SendInput, /tp{space}
}
}
Return

:?:.дис::
SendMessage, 0x50,, 0x4090409
SendInput, Здравствуйте, обратитесь ко мне в личные сообщения дискорда: %qdis%.
Return

;^d::
;SendMessage, 0x50,, 0x4190419,, A
;SendInput, Здравствуйте, это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. Приятной игры на Majestic RP.{Enter}{F4}
;counter++
;GoSub, UpdateCounter
;Return

!a::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Здравствуйте, иду.
Return

!d::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Сейчас помогу, ожидайте.
Return

!s::
SendMessage, 0x50,, 0x4190419,, A
SendInput, Приятной игры на Majestic RP.
Return

; Быстрый репорт 
fastrep: ; HACK Пофиксить быстрый репорт
if (Radio1==1) { ; 1920x1080
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 637, 206
Sleep 50
MouseClick, left, 637, 206
Sleep 200
MouseClick, left, 637, 206
Sleep 200
MouseClick, left, 1217, 1036
Sleep 50
}
else if (Radio5==1){ ; 1440x900
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 440, 190
Sleep 50
MouseClick, left, 440, 190
Sleep 200
MouseClick, left, 440, 190
Sleep 200
MouseClick, left, 807 , 342
Sleep 50
}
else if (Radio13==1){ ; 1366x768
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 449, 187
Sleep 50
MouseClick, left, 449, 187
Sleep 200
MouseClick, left, 449, 187 
Sleep 200
MouseClick, left, 729, 288
Sleep 50
}
else if (Radio16==1){ ; 2560х1440
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 831, 369
Sleep 50
MouseClick, left, 831, 369
Sleep 200
MouseClick, left, 831, 369
Sleep 200
MouseClick, left, 1462, 616
Sleep 50
}
else if (Radio19==1){ ; 1920x1080 | 5:4
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 661, 242
Sleep 50
MouseClick, left, 661, 242
Sleep 200
MouseClick, left, 661, 242
Sleep 200
MouseClick, left, 1000, 425
Sleep 50
}
else if (Radio20==1){ ; 1280х1024
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 363, 208 
Sleep 50
MouseClick, left, 363, 208
Sleep 200
MouseClick, left, 363, 208
Sleep 200
MouseClick, left, 857, 382
Sleep 50
}
else if (Radio7==1){ ; 1600x900
    Sleep 50
    SendInput, {F8}
    Sleep 250
    MouseMove, 527, 202
    Sleep 50
    MouseClick, left, 527, 202
    Sleep 200
    MouseClick, left, 527, 202
    Sleep 200
    MouseClick, left, 855, 336
    Sleep 50
}
else if (Radio22==1){ ; 1366x768 | 5:3
Sleep 50
SendInput, {F8}
Sleep 250
MouseMove, 447, 185
Sleep 50
MouseClick, left, 447, 185
Sleep 200
MouseClick, left, 447, 185
Sleep 200
MouseClick, left, 710, 281
Sleep 50
}
else { ; Пред на моник
    MsgBox, 16,Ошибка, К сожалению, твой монитор не подходит под данную функцию.
}
Return

; Ответы ; IDEA добавить новые ответы
:?:.метал::Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.
:?:.багвойс::Приветствую, попробуйте перезайти на сервер. Если проблема повторится, то вам следует обратится в раздел сообщить о баге в дискорде проекта.
:?:.рыбалка::Приветствую. Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. Приятной игры на Majestic RP.
:?:.ставка::Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет рассчетом. Приятной игры и лучшего настроения на Majestic RP.
:?:.уров::Приветствую. При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. Приятной игры на Majestic RP.
:?:.квест::На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.
:?:.фед::В определенное время тюрьма закрывает клетки на 5 минут, в это время выйти из камеры нельзя: -- Открываются клетки в 00 минут -- Закрываются в 20 минут на 5 минут -- Открываются в 25 минут -- Закрываются в 55 минут на 5 минут.
:?:.сейф::Приветствую, закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. Приятной игры на Majestic RP.
:?:.лесоруб::Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. Приятной игры на Majestic RP.
:?:.рация::Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.
:?:.рац::Приветствую, если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использвания: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.
:?:.тайм::Здравствуйте, это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. Приятной игры на Majestic RP.
:?:.сид::Укажите static ID игрока с которым у Вас происходил РП процесс.
:?:.пузо::/asms Нужная поза о которой Вам говорят находится F2 - Анимации - Позы - Лежать на животе. Не игнорируйте данное сообщение чтобы не получить наказание.{left 146}
:?:.пут::Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь.
:?:.увал::Приветствую, администрация не увольняет игроков из фракций с активными лидерами. Дождитесь своего лидера/заместителей или свяжитесь с ними в дискорде
:?:.майки::Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".
:?:.слух::Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.
:?:.скр::Приветствую, вам необходимо заехать в функциональную ЗЗ и выехать из нее.
:?:.чат::Здравствуйте. На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения.
:?:.рел::Попробуйте перезайти через F1 > Direct Connect > Connect или полностью в игру (F1 - Quit Game).
:?:.рп::Извините, но это РП процесс, мы не вправе вмешиваться в него.
:?:.урп::Приветствую, данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.
:?:.войс::Приветствую, если вы столкнулись с проблемой слышимости игроков / своего голоса, вам стоит перезайти на сервер. Если проблема повторится, то в таком случае вам стоит обратится в раздел #сообщить-о-баге в дискорде проекта.
:?:.тех::Здравствуйте, напишите в технический раздел на форуме.
:?:.техдс::Здравствуйте, напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка".
:?:.функ::Данный функционал временно недоступен, приносим свои извинения.
:?:.фун::Данный функционал не присутсвует у нас на сервере.
:?:.изв::Приносим свои извинения за предоставленные неудобства.
:?:.рыба::Здравствуйте, Вам нужно нажать F3 > Разное > Продажа рыбы.
:?:.ехп::Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.
:?:.в::Приветствую, опишите свой вопрос подробнее
:?:.зп::Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.
:?:.ганлиц::Получить лицензию на оружие можно в LSPD или LSCSD. Приятной игры.
:?:.канистра::Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. Приятной игры.
:?:.емс::К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.
:?:.подним::Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. 
:?:.жб::Здравствуйте, администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.анак::Приветствую. Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.
:?:.адз::Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.
:?:.адс::Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.
:?:.погода::К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.
:?:.неп::Опишите Вашу проблему/вопрос подробнее в f2-обращения для максимально точного ответа, пожалуйста.
:?:.донат::Приветствую, при проблемах с донатом обратитесь по почте - help@majestic-rp.ru.
:?:.ремонт::Приветствую, для начала, Вам нужно купить запчасть для машины на любо АЗС, нажать G > Починить замок/аккумулятор/залить масло. Приятной игры.
:?:.ферм::Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
:?:.гос::Вы можете сдать авто на свалку. После сдачи вы получите 75% от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг.
:?:.аним::Здравствуйте, остановите анимацию. F2 > Анимации > Остановить анимацию.
:?:.ид::Здравствуйте, укажите, пожалуйста, ID нарушителя.
:?:.сто::Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте).
:?:.жба::Вы можете написать жалобу на форум, если не согласны с решением администратора.
:?:.дон::Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate
:?:.инкас::Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу.
:?:.грибы::Здравствуйте, чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож.
:?:.гриб::Продать грибы можно на рынке.
:?:.рын::Рынок находится в Лос-Сантосе на пляже рядом с качалкой.
:?:.алс::Приветствую, вам необходимо обратится к администратору, который выдал вам наказание. Если в причине вашего наказания указано "by nickname", то обращаться нужно к тому, чей ник указан после by.
:?:.спек::Приветствую, администрация не следит за игроками / ситуациями по просьбе / без веских причин. Опишите свой вопрос/жалобу в репорт.
:?:.п::Приятной игры на Majestic RP.
:?:.нов::Следите за новостями сервера в официальном дискорде проекта. Приятной игры.
:?:.ник::Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа.
:?:.банк::Приветствую, у нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5%(Максимум 20.000$), на перевод 4%(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4%(Максимум 15.000$), на перевод 3%(Максимум 15.000$), кэшбек в магазинах 1%, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3%(Максимум 20.000$), на перевод 2.5%(Максимум 20.000$), кэшбек в магазинах 3%, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца.
:?:.кавто::Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат.
:?:.клад::Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку.
:?:.тел::Приветствую, попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся.
:?:.подсел::Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить.
:?:.азс::Приветствую, к сожалению не заправляем / не ремонтируем ТС игроков без веских причин.
:?:.замок::Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту и поменять через G - Починить дверной замок
:?:.акум::Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту и поменять через G
:?:.масло::Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту и поменять через G
:?:.модел::Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним.
:?:.бизограб::Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). Приятной игры на Majestic RP.
:?:.спавн::Здравствуйте, cпавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. Приятной игры на Majestic RP.
:?:.ржб::Приветствую, в виду несоответствия вашей репорт-жалобы регламента подачи вынужден отказать в рассмотрении. Напишите жалобу на игрока на форум. С регламентом подачи репорт-жалоб в /report вы можете ознакомиться в дискорде проекта MajesticRP, канал новости, поиск по слову "репорт".
:?:.рем::Приветствую, чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль.
:?:.сделка::Приветствую, администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Приятной игры на MajesticRP.
:?:.имя::Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят.
:?:.вынос::Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.
:?:.сила::Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.
:?:.дых::Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.
:?:.вожден::Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.
:?:.полет::Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.
:?:.скрытн::Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).
:?:.стрельба::Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
:?:.дел:: Приветствую, удаляем только утопленной или взорванное транспортное средство.
:?:.лечу::Приветствую. Уже лечу к Вам на помощь.
:?:.пом::Приветствую. Сейчас займусь вашим обращением, ожидайте.
:?:.загр::Приветствую, в данный момент на сервере большая нагруженность, пожалуйста оставьте жалобу на игрока в соответствующем разделе на форуме.
:?:.слетдом::Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают каждый час, начиная с 00:00. Чтобы его купить, Вам потребуется иметь полную гос. стоимость наличными.
:?:.госдом::Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75% от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически.
:?:.майки::Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".Приятной игры и самого лучшего настроения на Majestic RP.
:?:.рыблиц::Приветствую, получить лицензию на рыбалку вы можете в Мэрии. 
:?:.погода::Приветствую, к сожалению администрация не контролирует данный процесс. Погода меняется автоматически. 
:?:.реп::Приветствую. Пожалуйста, уточните свой вопрос подробнее в /report. Администрация не летает на репорты по типу "админ тп", "админ можно поговорить", "помогите", "админ есть вопрос". Количество символов в /report неограничено, вы можете полностью расписать Вашу проблему/вопрос.
:?:.невид::Приветствую, к сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.
:?:.кости::Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку.
:?:.багвид::Если вы не видите канал сообщить-о-баге в дискорде проекта, то вам необходимо пролистать дискорд вверх до категории "Каналы и роли" -> Просмотр каналов -> Поставить галочку на текстовый чат сообщить о баге.
:?:.баг::Приветствую, попробуйте перезайти на сервер. Если проблема повторится, то Вам следует обратится в раздел сообщить о баге в дискорде проекта.
:?:.да::Приветствую. Да. 
:?:.нет::Приветствую. Нет.
:?:.прп::Приветствую, администрация не телепортирует игроков по просьбе / без веских причин.
:?:.зк::Приветствую, не консультируем по вопросам законодательной базы. Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем. 
:?:.номертс::Приветствую, для регистрации ТС необходимо посетить Department of Motor Vehicles (метка "Регистрация транспорта" на карте). У NPC в здании также можно купить номера для ТС. Стоимость генерации номера зависит от выбранного числа символов в номере (4-7), каждая новая попытка оплачивается отдельно. "Сохранить в инвентарь" поместит незарегистрированный номер в инвентарь, который можно использовать для регистрации транспорта. Незарегистрированный номер можно продавать/обменивать/выбрасывать.
:?:.регтс::Приветствую, для регистрации нужно приобрести номер (метка "Регистрация транспорта" на карте) и выбрать его в списке имеющихся незарегистрированных номеров в инвентаре, стоимость регистрации зависит от гос. стоимости транспорта. После оплаты регистрации, этот номер можно установить на транспорт, используя меню взаимодействия G - Установка номера. После регистрации транспорта на новый номер, старый номер получает статус "Незарегистрированный номер. Для регистрации транспорта на другой номер, старый должен быть снят. Каждая установка/снятие номера тратит предмет "Отвёртка".
:?:.нетп::Приветствую, администрация не телепортируется к игрокам по просьбе / репорту / без веских причин. Опишите свой вопрос/жалобе в репорт.
:?:.штрафо::Приветствую. При наличии 10 и более штрафов игроку недоступен: Функционал регистрации ТС; функционал продажи/обмена/покупки транспорта. Весь транспорт, которым владеет игрок, доступен к эвакуации на штрафстоянку. При наличии 200 и более штрафов, каждый новый штраф отображает метку местоположения игрока на карте всем силовым структурам. Число автоштрафов может посмотреть любой гос. сотрудник в планшете, раздел "База данных", выбрав строку игрока. 
:?:.инв::Приветствую. Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.
:?:.арынок::Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.
:?:.тайник::Приветствую, не сообщаем информацию по времени спавна / местоположению / пулу дропа предметов с тайников.
:?:.штрафс::Приветствую, отображается весь транспорт, доступный игроку, со статусом "На штрафстоянке". Транспорт находящийся на штрафстоянке нельзя заспавнить или продать на маркетплейсе. Стоимость услуг штрафстоянки составляет 0.3% от гос. стоимости автомобиля, минимальная стоимость $7500. Чтобы забрать транспорт со штрафстоянки, все автоштрафы игрока должны быть оплачены. При покупке транспорта в автосалоне, дается 24 часа для регистрации транспорта, в это время транспорт нельзя эвакуировать на штрафстоянку. 
:?:.штраф::Приветствую, штраф начисляется водителю транспорта, информация приходит в виде SMS-сообщения. Если на транспорте снят номер - штраф не выписывается. 
:?:.кам::Приветствую, городские камеры доступны сотрудникам гос. организаций через Планшет - Фракция - Система видеонаблюдения. Всего доступно 43 зоны для установки камер. Установкой камер занимается фракция GOV. Для установки необходимо выбрать участок на карте камер со статусом "Свободное место", в инвентаре должен находится предмет "Камера контроля скорости". После установки камеры, она перейдет в статус настройки и будет недоступна ко взлому 10 минут, спустя это время камеру можно просматривать. Чтобы зайти в камеру необходимо находится в функциональной зеленой зоне. Сотрудник получает 50% от суммы штрафа, 10% отправляется счёт его организации.
:?:.эвак::Приветствую, транспорт доступен к эвакуации, если: на нём отсутствуют номера, владелец транспорта имеет 10 и более штрафов, владелец транспорта задержан или находится в тюрьме. Чтобы подцепить транспорт нужно нажать "CTRL". Для отмены в меню взаимодействия эвакуатора G, появился пункт "Отцепить транспорт". После того как транспорт зацеплен, на карте отобразятся 5 мест для эвакуации транспорта. Необходимо доставить транспорт на любую стоянку и нажать "E", отобразится интерфейс штрафстоянки с причиной эвакуации. Если транспорт соответствует требованиям эвакуации, то сотрудник получит 50% от стоимости услуг штрафстоянки, 10% отправляется на счёт его организации. Владельцу транспорта приходит SMS с информацией о эвакуации и стоимости услуг. При несоответствии требованиям, транспорт удалится из мира.
:?:.круиз::Приветствую, для включения круиз-контроля вам необходимо выбрать режим в F2 - Настройки - Тип круиз-контроля, а также назначить клавишу включения через F2 - Настройки - Бинд клавиш "Круиз-контроль". "Обычный" - Поддерживает автоматически установленную скорость ТС и позволяет свободно управлять ТС, набираем скорость - нажимаем бинд - управляем авто. "Ограниченный" - Не превышает установленный лимит скорости. Находясь в авто нажать G - Круиз-контроль - Настроить, вписываете максимальную скорость с которой хотите передвигаться и начинаете движение. Круиз-контроль сбрасывается если: Скорость вашего ТС равна 0 км/ч; Нажатие пробела / S (остановка) / F (выход из авто). На арендованных рабочих ТС включить круиз-контроль нельзя.
:?:.огр::Приветствую. Чтобы начать ограбление банка, вам нужно позвонить по номеру: 28121903. Для этого надо быть в крайм организации, и находится рядом с банком (как минимум вас должно быть 4 около банка, иначе не сможете). Для начала ограбления требуется "План ограблений", который выбирается в AirDrops или при ограблении бизнесов.Можно грабить 1 раз в день каждой огранизации.После того, как ограбление началось и банк получил красную иконку, надо прицелиться в бота и заполнить прогресс бар.Дальше будет большая дверь, что бы ее разблокировать, нужно пройти мини-игру со взломом. Для этого используем «Программатор ЭБУ» + «Кабель электронных дверей». Он продается у торговца на рынке. После взлома перед вами будет стоять стойка с деньгами. Далее идет 2-я дверь. Для ее взлома нам необходима «Ключ карта Fleeca» либо «Термитная установка».«Ключ карта Fleeca» выпадает с ботов при ограблении бизнесов, или на аир дропах.«Термитная установка» продается у пиротехника. С ее помощью дверь открывается за 2 минуты. 
:?:.огр2::Для этого надо взять в руки один из предметов, чтобы открыть дверь. Но в хранилище есть ячейки, для взлома ячеек необходима «Дрель 1500w». Дрель крафтится у криминальных организаций и выпадает при смерти. После успешного прохождения мини-игры по взлому ячейки на пол падает награда.
:?:.дрон::Дрон крафтится у силовых гос.структур и Weasel News. Пользоваться им могут соответственно эти же гос.структуры. Чтобы подняться-пробел, чтобы опуститься-shift. На E-тепловизор включить/выключить.
:?:.аукц::Приветствую. На аукцион вы можете выставить авто/бизнес/дом/квартиру. Во время того, как вы выставляете лот, вы можете лишь ездить на авто. При продаже на акционе дома/квартиры-кладовка передаётся покупателю полностью.
:?:.дрифт::Дрифт счётчик включается через F2 > Настройки. Он появляется во время управляемого заноса и показывает, на сколько хорошо Вы прошли поворот.На карте зоны дрифта отмечены колесом с огнем. Также для того чтобы Вам засчиталось задание Вам нужно плавно тормозить\Не врезаться\Набирать от 2.500.
:?:.кд::Приветствую, КД на аренду авто 15 минут с момента последней аренды.
:?:.неинф::Приветствую, не сообщаем подобную информацию
:?:.офт::Если у Вас нет других вопросов, которые не косаются данной темы на которую уже дан ответ, репорт будет закрыт.
:?:.рыблка::Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкоДля того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши.
:?:.амр::Платный армрестлинг находится в Палето-Бей, напротив LSCSD и в Ghetto, возле Los-Santos Custom.
:?:.генг::Создать лобби на рандом оружии, сделать 10 убийств и после этого появится ультимейт.
:?:.камера::Камеры могут быть уничтожены игроками состоящими в бандах с 14:00 до 01:00.Для старта взлома необходимо найти участок с установленными камерами, имея в инвентаре предмет "Кусачки" и "Отвертка".Задача игрока в появившемся интерфейсе перерезать цветные провода, в порядке меняющихся сигналов светофора.Для успешного прохождения нужен напарник, который сообщит об изменении сигналов светофора.Как только резервное питание будет отключено, нужно выстрелить в камеру после уведомления.При попадании на землю упадёт предмет "Повреждённая камера".Если не выстрелить вовремя, питание восстановится и камера перейдет в статус настройки.
:?:.уник::На площадке университета стоит бот для забега, возьмите у него задания и пройдите чик-поинты.
:?:.зак::Могу закрывать обращение?.
:?:.несл::Администрация не может следить полностью за всем РП процессом, в случае нарушений от игроков - напишите репорт.
:?:.клуб::Необходимо приехать в сам клуб (Каблук на карте), далее пройти в специальную комнату и нажать E у дивана.
:?:.пар::Положите парашют в быстрый слот, затем в полете нажмите на 1, 2 или 3 (зависит от слота), после этого ЛКМ, парашют откроется.
:?:.взлом::Вам нужно сесть в авто нажать - g- нелегальное- взломать зажигание. Для взлома авто Вам нужен программатор эбу.
:?:.наг::В данный момент на сервере нагрузка. Нужно немного подождать.
:?:.актуал::Приветствую. Актуально?
:?:.упс::Приветствую, в данный момент наблюдаются сильные технические проблемы на сервере, непредоставляется возможным помочь вам в данный момент
:?:.репжб::Приветствую. На данный момент администрация испытывает большую нагрузку на репорты, прошу Вас оформить жалобу на игрока на форуме.
:?:.бинок::Приветствую. Нужно взять в руки и зажать ЛКМ\ПКМ.
:?:.такнужно::Мы игровые администраторы, наша задача помогать игрокам и пресечь нарушение, а не наказать игрока. Если игрок будет повторно замечен в нарушении правил проекта, он обязательно получит своё наказание.На данный момент нарушение устранено, а это и является главной нашей целью и задачей. Спасибо за бдительность, надеюсь Ваша игра станет комфортней"
:?:.сто2::На карте СТО отмечено как отвертка с гаечным ключом желтого цвета.
:?:.форум::Данное нарушение не рассматриваем в репорт жалобе. Оставьте жалобу на форуме.
:?:.работа::На всех работах где можно устроиться (кроме таксиста) у НПС можно взять задания.
:?:.репжб3::пункт правил с запрещенными словами;правила игровых чатов;DB;nonRP drive;nonRP Fly;SK;совершает криминальные действия без маски;использует средства лечения в бою;стреляет с транспортного средства;меняет оружие с целью его сохранения;совершает действия сексуального и грубого унизительного характера без ООС согласия игрока;использует оскорбительные и неуместные отыгровки в "/me, /do, /try";очевидные отыгровки в свою сторону;использует грубые прямые оскорбления нации, родственников, религии, возбуждение ненависти на какой-либо почве и т.п.;рекламирует сторонние ресурсы;Криминальные действия в Зеленой Зоне. 
:?:.репжб2::Жалобы на грубые нарушения принимаются только с видеофиксацией.
:?:.нар2::Нарушений нет. Улетаю с ситуации.
:?:.пузо2::Вам выдвинули требования лечь на живот, однако бинд клавиш является анимацией ползанья, в случае криминальных действий, игроки в данном "бинде клавиш" не смогут надеть стяжки. Соответственно подобные анимации должны выполняться через F2 -> Анимации.
:?:.бага::О данном баге известно, в скором времени исправят.

; Наказания
:?:.хардо::/hardban 9999 Обход блокировки{left 21}
:?:.хард::/hardban 7777 Cheats{left 12}
:?:.хард9::/hardban 9999 Cheats{left 12}
:?:.секс::/warn Секс. аним. без отыгровок{Left 26}
:?:.нрд::/ajail 15 nonRP Drive{Left 15}
:?:.нрд25::/ajail 25 nonRP Drive{Left 15}
:?:.нрд45::/ajail 45 nonRP Drive{Left 15}
:?:.нрд70::/ajail 70 nonRP Drive{Left 15}
:?:.нрд90::/ajail 90 nonRP Drive{Left 15}
:?:.нрп::/ajail 15 nonRP Поведение{Left 19}
:?:.нрп25::/ajail 25 nonRP Поведение{Left 19}
:?:.нрп45::/ajail 45 nonRP Поведение{Left 19}
:?:.нрп70::/ajail 70 nonRP Поведение{Left 19}
:?:.нрп90::/ajail 90 nonRP Поведение{Left 19}
:?:.дб::/ajail 30 DB{Left 6}
:?:.дб45::/ajail 45 DB{Left 6}
:?:.дб60::/ajail 60 DB{Left 6}
:?:.дб75::/ajail 75 DB{Left 6}
:?:.дб90::/ajail 90 DB{Left 6}
:?:.дм::Приветствую, ДМ в репорт-жалобы не рассматривается, оформите жалобу на игрока на форум.
:?:.пг::/ajail 35 PG{Left 6}
:?:.пг55::/ajail 55 PG{Left 6}
:?:.пг75::/ajail 75 PG{Left 6}
:?:.пг90::/ajail 90 PG{Left 6}
:?:.муз::/mute 30 Music in ZZ{Left 15}
:?:.муз60::/mute 60 Music in ZZ{Left 15}
:?:.смник::/ajail 720 Смените Имя_Фамилия согласно правилам сервера{Left 50}
:?:.ккапт::/kick Помеха капту{Left 13}
:?:.кбиз::/kick Помеха бизвару{Left 15}
:?:.квзп::/kick Помеха ВЗП{Left 11}
:?:.квзм::/kick Помеха ВЗМ{Left 11}
:?:.взм45::/ajail 35 Нарушение правил ВЗМ(Стрельба в/из нейтрала){Left 48}
:?:.взм90::/ajail 90 Нарушение правил ВЗМ{Left 25}
:?:.оса30::/hardban 30 Оскорбление администрации{left 29}
:?:.оса15::/hardban 14 Оскорбление администрации{left 29}
:?:.оса10::/hardban 10 Оскорбление администрации{left 29}
:?:.оса::/hardban 7 Оскорбление администрации{left 28}

; ------------------------------------------------------------------------------------------------------------
;                                                 -----/PLAYERS-----
; ------------------------------------------------------------------------------------------------------------
; f4:: ; По нажатию F4 - открывается меню /players
; SendMessage, 0x50,, 0x4190419,, A
; SendInput, {T}/players{Enter}
; sleep 300
; SendInput, {ё}
; Return
; ------------------------------------------------------------------------------------------------------------
Помощь:
MsgBox, 8192, Помощь, Софт создан для облегчения работы администрации сервера Houston Majestic RP.`n`nО чите... ой софте:`nСофт автоматически считает кол-во отвеченных репортов в день и в неделю (надо назначить клавишу).`n`nДля корректной работы софта необходимо выбрать разрешение экрана, ваш дискорд, сервер и ваш пол в главном меню.`n`nЧтобы настройки вступили в силу, нужно нажать кнопку Сохранить.`n`nСписок клавиш:`nctrl + F9 - Перезапуск программы.`nctrl+ F10 - Закрыть программу. `n`nЕсли что-то сломалось/не работает/есть идеи и т.п. писать - wrzib`n`nВерсия бинера - 0.1 alpha 16.02.2025.
return
Телепорты:
MsgBox, 8192, Телепорты.,`n .лспд - телепорт на LSPD`n .бол - телепорт на Больницу ЛС`n .шд - телепорт на Шерфи Департамент`n .фз - телепорт на Форрт`n .мэр - телепорт на Мерию`n .визл - телепорт на Новости`n .фиб - телепорт на ФИБ`n `n .бал - телепорт на Балласов`n .ваг - телепорт на Вагасов`n .фэм - телепорт на Фэмов`n .бладс - телепорт на Бладсов`n .мара - телепорт на Марабунту`n `n .лкн - телепорт на ЛКН`n .рм - телепорт на РМ`n .як - телепорт на Якудзу`n .мекс - телепорт на Мексиканцев`n .ам - телепорт на Армян`n `n .лост - телепорт на лостов`n .аод - телепорт на АОД`n .ириш - телепорт на Ирландцев`n .клаб - телепорт на Гранд Клаб`n .рич - телепорт на Ричман`n .манор - телепорт на Манор`n .конт - телепорт на Континеталь`n `n .хум - телепорт на Хуман Лабс`n .мейз - телепорт на Мейз Банк`n .каз - телепорт на Казино`n .аш - телепорт на АвтоШкола`n .гг - телепорт на ГанГейм`n .бургер - телепорт на Бургерную`n .багама - телепорт на Багаму Маму`n .кайо - телепорт на Остров.`n .авиа - Телепорт на авианосец `n .мол - Телепорт на мол `n .трас - Телепорт на искуственную трассу`n .аук - Телепорт на аукцион`n .бокс - Телепорт на бокс`n .бар - Телепорт телепорт в бар с интой`n .бк - Телепорт на букмекерскую контору`n .ванила - Телепорт в стрип клуб Vanila Unicorn`n .починка - Телепорт на СТО Hayes`n .лск4 - Телепорт к 4 лск, шоссе 68
return
Команды:
MsgBox, 8192, Команды,Все команды случайно написанные на транслите будут конверсирвоанные в номальное состояние. Пример: .ез -> /tp.`n `n `n Alt + A - Здравствуйте, иду.`n Alt + D - Сейчас помогу, ожидайте.`n Alt + S - Приятной игры на Majestic RP.`n Alt + Q - Приветствую. Уже лечу к вам. И автоматически закроется окно репорта и в чате введётся /tp.`n`n Быстрый репорт - Автоматически будет взят первый репорт по списку и будет клик по строчке ответа. (пока что только 1920х1080, 1440х900, 1366х768 и 2560х1440, 1920x1080 | 5:4, 1280х1024, 1600x900`n`n Быстрый ответ - Автоответ на репорт о том, что ты летишь, далее сам закроет меню репортов и напишет в чат /tp, нужно будет вписать только ID.`n `n .пузо - Поможет как можно быстрей предупредить игрока лечь на живот в /asms.`n `n /sm - Прописать маты фраке.(Chief  only)`n /tn - Поставить временное имя.`n /zzd - Вкл/Выкл показ зеленых зон.`n /amph - Включить элемент экстерьера на Амфитеатре. Элементы в Инфо.`n.sdc - /setcardim`n.rst - /resettempname`n /ramph - Выключить элемент экстерьера на Амфитеатре. Элементы в Инфо.`n /gzone - выключать/выключать GreenZone. Названия зон в Инфо.`n /mcheck - Проверить игрока на активный мут.`n /ld - Посмотреть последнего водителя авто.`n /af - Заразить игрока болезнью (1, 2 корона, 3).`n /ai - Уволить игрока из фракции.`n /sk - Тихий кик игрока.`n /k - Обычный кик.`n /gc - Телепортировать авто к себе (/getcar).`n /ch - Включить инвиз для читеров (/chide).`n /sc - Заспавнить автомобиль фракциии (/spawncar)`n /ad - Администраторы в сети (/admins).`n /p - Список всех игроков сервера (/players).`n .рес - Воскресить игрока (/rescue ID).`n .ку - Выводит в чат -  Здравствуйте,.`n /sp - Начать слежку за игроком (/spec ID).`n /so - Отменить режим слежки (/specoff).`n /kill - убить игрока (/hp ID 0).`n .пиздец - Если пизда по репортам, а админы AFK (особенно Мёрфи).`n .афк - Сказать что ты отошёл от ПК.`n .дис - Отправит игроку ваш дискорд.`n .га - Отправит игроку дискорд ГА.`n .зга - отправит игроку дискорд зГА.
return

Ответы: ;FIX изменить Ответы
MsgBox, 8192, Ответы 1, Короткие команды для удобства.`n .метал - Металлоискатель становится активным как только Вы берете его в руки. Когда он найдет сокровища, то будут происходить визуальные и звуковые оповещения. От зеленого цвета, до красного. Места расположения сокровищ: пляжи и архипелаги.`n.багвойс - Приветствую, попробуйте перезайти на сервер. Если проблема повторится, то вам следует обратится в раздел сообщить о баге в дискорде проекта.`n.рыбалка - Приветствую. Для того чтобы рыбачить, Вам  нужна удочка и наживка - покупается в любом магизине 24/7. Подходите к зоне рыбалки своего уровня и нажимаете клавишу Е. Ждёте клёва, как появится рыба, она будет вилять в стороны влево-вправо. Вам нужно зажимать клавиши A/D противоположной стороны рыбы. После того как рыба утомилась, Вы её подсекаете левой кнопкой мыши. Приятной игры на Majestic RP.`n.ставка - Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет рассчетом. Приятной игры и лучшего настроения на Majestic RP.`n.уров - Приветствую. При достижении 5-го уровня: 500 MC При достижении 10-го уровня: 1000 MC При достижении 15-го уровня: 2000 MC При достижении 20-го уровня: 3000 MC При достижении 25-го уровня: 4000 MC При достижении 30-го уровня: 5000 MC. Каждый следующий уровень после 30-го Вы будете получать 1500 MC. Приятной игры на Majestic RP.`n.квест - На сервере теперь доступны Мировые и Личные квесты. Ознакомиться с ними можно на рынке (На карте обозначен как "Красный вопрос"). Квесты доступны всем. Личные квесты вы можете проходить неопределенный срок, но, если Вы захотите участвовать в Мировом квесте и получить дополнительные бонусы, то Вам нужно поторопиться выполнить личный квест. Только 5 лучших игроков смогут попасть в топ 3 и залутать дополнительные бонусы. - Каждую неделю доступно по 3 личных и мировых квеста. - Некоторые квесты по типу инкасатора/мусорщика/почтальона можно выполнять в 2-ем и более, засчитывать будем всем.`n.фед - В определенное время тюрьма закрывает клетки на 5 минут, в это время выйти из камеры нельзя: -- Открываются клетки в 00 минут -- Закрываются в 20 минут на 5 минут -- Открываются в 25 минут -- Закрываются в 55 минут на 5 минут.`n.сейф - Приветствую, закрывать интерфейс сейфа можно только на ESC. В сейф можно класть до 5 миллионов. Деньги идут из налички. Нельзя продать дома в гос, продать игроку, предложить обмен, выставить на аукцион, если в сейфе есть деньги. Сначала требуется их забрать. Если дом слетает по налогам - деньги из сейфа игрок получает в наличку. Приятной игры на Majestic RP.`n.лесоруб - Устраиваться необходимо все у того же NPC около Палето-Бей. Для начала работы Вам понадобиться “Топор”, купить его можно у NPC на Рынке. Принцип работы схожий с Грибниками, точки для сруба деревьев разбросаны по всей карте, каждый уровень привязан к свой точке сбора. Древесину можно продать на рынке. Приятной игры на Majestic RP.`n.рация - Приобрести рацию можно в любом магазине 24/7, в разделе “Электроника”, за всеми фракциями закреплен диапазон частот, который не могут занять. В F2 -> Настройки можно изменить Громкости рации.`n.рац - Приветствую, если кнопка войса была не на "N", то поставьте её на N и перезайдите, после чего рация заработает. Кнопку можно вернуть на свою. Для использвания: Возьмите рацию > Введите чистоту >Нажмите ентер >Зажмите "M" и будет слышно.`n.тайм - Здравствуйте, это визуальный баг таймера, часы идут и коины вам начислят по истечению времени. Приятной игры на Majestic RP.`n.сид - Укажите static ID игрока с которым у Вас происходил РП процесс.`n.пузо - /asms Нужная поза о которой Вам говорят находится F2 - Анимации - Позы - Лежать на животе. Не игнорируйте данное сообщение чтобы не получить наказание.{left 146}`n.пут - Приветствую, всю информацию (команды/о фракциях, работах и так далее) можно узнать на форуме majestic-rp.ru - раздел "Путеводитель для новичков", а также в F2 - Помощь.`n.увал - Приветствую, администрация не увольняет игроков из фракций с активными лидерами. Дождитесь своего лидера/заместителей или свяжитесь с ними в дискорде`n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".`n.слух - Здравствуйте, функция "Я не слышу" предназначена для людей с плохим слухом или его отсутствием. Злоупотребление этой функцией карается баном Вашего персонажа. Отключить ее можно в меню F2 - Настройки. Спасибо за понимание.`n.скр - Приветствую, вам необходимо заехать в функциональную ЗЗ и выехать из нее.`n.чат - Здравствуйте. На сервере есть следующие команды для чата: /pagesize - увеличить / уменьшить размер чата; /fontsize - увеличить / уменьшить размер шрифта; /chatalpha - прозрачность чата, /timestamp - время около каждого сообщения.`n.рел - Попробуйте перезайти через F1 > Direct Connect > Connect или полностью в игру (F1 - Quit Game).`n.рп - Извините, но это РП процесс, мы не вправе вмешиваться в него.`n.урп - Приветствую, данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.`n.войс - Приветствую, если вы столкнулись с проблемой слышимости игроков / своего голоса, вам стоит перезайти на сервер. Если проблема повторится, то в таком случае вам стоит обратится в раздел #сообщить-о-баге в дискорде проекта.`n.тех - Здравствуйте, напишите в технический раздел на форуме.`n.техдс - Здравствуйте, напишите в технический раздел официального дискорд сервера "Помощь по игре" - "тех-поддержка".`n.функ - Данный функционал временно недоступен, приносим свои извинения.`n.фун - Данный функционал не присутсвует у нас на сервере.`n.изв - Приносим свои извинения за предоставленные неудобства.`n.рыба - Здравствуйте, Вам нужно нажать F3 > Разное > Продажа рыбы.`n.ехп - Каждый час (у каждого игрока своё время) Вам дается EХP. Чтобы узнать, сколько Вам осталось до следующего PayDay, нажмите клавишу F2-Статистика.`n.в - Приветствую, опишите свой вопрос подробнее`n.зп - Чтобы начислялся PayDay Вам нужно иметь свою банковскую карту и быть уволеным со всех работ. Оформить её можно в любом банке.`n.ганлиц - Получить лицензию на оружие можно в LSPD или LSCSD. Приятной игры.`n.канистра - Чтобы использовать канистру, возьмите её в руки, нажмите G на авто и заправить. Приятной игры.`n.емс - К сожалению, администрация не поднимает и не лечит игроков, воспользуйтесь услугами ЕМС.`n.подним - Приветствую. К сожалению, не видя всей ситуации мы не в праве лечить,поднимать или добивать игроков. Дождитесь сотрудников EMS либо же окончания таймера смерти. Приносим свои извинения за возможные неудобства. `n.жб - Здравствуйте, администрация не может выдавать наказания и выносить какие-либо вердикты не видя всей ситуации. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание.`n.анак - Приветствую. Обратитесь, пожалуйста, в дискорд к администратору, который выдал вам наказание или рассмотрел жалобу.`n.адз - Данный администратор сейчас занят другим делом или отошел от компьютера на короткое время, напишите ему в личные сообщения в дискорде.`n.адс - Данный администратор сейчас отсутствует на сервере, напишите ему в личные сообщения в дискорде.`n.погода - К сожалению, администрация не контролирует данный процесс. Погода меняется автоматически.`n.неп - Опишите Вашу проблему/вопрос подробнее в f2-обращения для максимально точного ответа, пожалуйста.`n.донат - Приветствую, при проблемах с донатом обратитесь по почте - help@majestic-rp.ru.`n.ремонт - Приветствую, для начала, Вам нужно купить запчасть для машины на любо АЗС, нажать G > Починить замок/аккумулятор/залить масло. Приятной игры.`n.ферм - Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта.
return
Ответыдва:
MsgBox, 8192, Ответы 2, Короткие команды для удобства.`n.сид - Укажите static ID игрока с которым у Вас происходил РП процесс.`n.бизограб - Здравствуйте, чтобы ограбить бизнес, вам нужно: одеть маску, приобрести оружие и, придя в магазин в составе от 2 до 35 человек, навестись на NPC (продавца) огнестрелом (только один человек должен грабить). Приятной игры на Majestic RP.`n.мдс - Приветствую, предоставьте откат мне в ЛС в дискорде .fish5444. `n.ремонт - Приветствую, для начала, Вам нужно купить запчасть для машины на любой АЗС, нажать G > Починить замок/аккумулятор/залить масло. Приятной игры. `n.ферм - Приветствую, на ферме для посадки каждого из растений нужны следующие навыки: Пшеница - 225 опыта. Картофель - 950 опыта. Капуста - 2000 опыта. Кукуруза - 3000 опыта. Тыква - 6200 опыта. Бананы - 10500 опыта. `n.гос - Вы можете сдать авто на свалку. После сдачи вы получите 75 процентов от гос. стоимости авто. Свалка отмечена на карте как перечеркнутый, красный круг. `n.аним - Здравствуйте, остановите анимацию. F2 > Анимации > Остановить анимацию. `n.рыбка - 1ур.(0exp) - зоны: 1, 2, 3, 4, 5 - Форель, 0,26$ за грамм; 2ур.(300exp) - зоны: 6, 7, 8 - Камбала, 0,09$ за грамм; 3ур.(700exp) - зона 9 - Тунец, 0,03$ за грамм; 4ур.(1500exp) - зона 10 - Красный солдат, 0,43$ за грамм; 5ур.(3000exp) - зона 11 - Карась, 0,14$ за грамм.; 6ур.(5200exp) - зона 12 - Оранжевый карп, 0,05$ за грамм; 7ур.(9200exp) - зона 13 - Аквамарин, 0,18$ за грамм; 8ур.(18000exp) - зона 14 - Золотая рыбка, 0,71$ за грамм. Приятной игры на Majestic RP. `n.ид - Здравствуйте, укажите, пожалуйста, ID нарушителя. `n.сто - Степень износа определенных деталей автомобиля можно узнать на автомастерской (иконка гаечного ключа с отверткой на карте). `n.жба - Вы можете написать жалобу на форум, если не согласны с решением администратора. `n.дон - Задонатить можно на нашем официальном сайте - majestic-rp.ru/donate `n.инкас - Чтобы совместно работать Вам необходимо быть устроеным на работу (всем), загрузиться, а затем через G пригласить на работу. `n.грибы - Здравствуйте, чтобы собирать грибы вам надо приехать на точку "Грибы" 1/6 и взять в руки нож. `n.гриб - Продать грибы можно на рынке. `n.рын - Рынок находится в Лос-Сантосе на пляже рядом с качалкой. `n.алс - Приветствую, вам необходимо обратится к администратору, который выдал вам наказание. Если в причине вашего наказания указано "by nickname", то обращаться нужно к тому, чей ник указан после by. `n.спек - Приветствую, администрация не следит за игроками / ситуациями по просьбе / без веских причин. Опишите свой вопрос/жалобу в репорт.. `n.п - Приятной игры на Majestic RP. `n.нов - Следите за новостями сервера в официальном дискорде проекта. Приятной игры. `n.ник - Сменить ник Вы можете нажав - F2 > Донат > Настройки персонажа. `n.банк - Приветствую, у нас на сервере есть 3 вида банковских карт: Standart, Premium, VIP. Standart карта стоит в обслуживании 500$ в месяц, снятия и переводы без комиссии до 500.000$ после превышения месечного лимита комиссия на вывод 5 процентов(Максимум 20.000$), на перевод 4 процента(Максимум 20.000$), кэшбек в магазинах отсутствует. Premium карта стоит в обслуживании 25.000$ в месяц, снятия и переводы без комиссии до 2.500.000$ после превышения месечного лимита комиссия на вывод 4 процента(Максимум 15.000$), на перевод 3 процента(Максимум 15.000$), кэшбек в магазинах 1 процента, лимит кэшбека на одну операцию до 2.500$, месечный лимит кэшбека 50.000$. VIP карта стоит в обслуживании 75.000$ в месяц, снятия и переводы без комиссии до 20.000.000$ после превышения месечного лимита комиссия на вывод 3 процента(Максимум 20.000$), на перевод 2.5 процента(Максимум 20.000$), кэшбек в магазинах 3 процента, лимит кэшбека на одну операцию до 10.000$, месечный лимит кэшбека 150.000$. Деньги за обслуживание и лимиты снимаются каждое 1 число нового месяца. `n.кавто - Чтобы сделать дубликат ключей от авто необходимо купить заготовку в магазине 24/7, затем нажать G на авто и сделать дубликат. `n.клад - Чтобы сделать дубликат от кладовки, необходимо купить заготовку в магазине 24/7, затем через G передать дубликат нужному человеку. `n.тел - Приветствую, попробуйте купить телефон еще раз в магазине 24/7, деньги с вас не спишутся. `n.подсел - Приветствую, чтобы подселить игрока к себе в дом или же квартиру, стоя около дома, наведитесь на игрока и нажмите G, далее нажмите Подселить. `n.заправь - Приветствую, к сожалению не заправляем / не ремонтируем ТС игроков без веских причин. `n.замок - Вам необходимо купить "Дверной замок" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Починить дверной замок. `n.акум - Вам необходимо купить "Аккумулятор" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить аккумулятор.
return
Ответытри:
MsgBox, 8192, Ответы 3, Короткие команды для удобства.`n.масло - Вам необходимо купить "Моторное масло" и "Набор инструментов" на ближайшей заправке, затем подойти к своему транспорту G -> Заменить масло. `n.модел - Пункт "Прогрузка моделей" отвечает за быстроту прогрузки текстур при приближении к ним. `n.капт - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед каптом и после него, обратитесь к своим кураторам фракции в дискорд.`n.зк - Приветствую, не консультируем по вопросам законодательной базы. Данную информацию вы можете получить при взаимодействии с другими игроками/самостоятельным поиском непосредственно во время игрового процесса, либо другим доступным IC путем.`n.взп - Здравствуйте, администрация не телепортирует, не лечит, не поднимает игроков перед ВЗП и после него, обратитесь к своим кураторам фракции в дискорд.`n.нетп - Приветствую, администрация не телепортируется к игрокам по просьбе / репорту / без веских причин. Опишите свой вопрос/жалобе в репорт. `n.спавн - Здравствуйте, cпавн новичков находится в Палето-Бей, Чумашах, Аэропорту и на Автовокзале. Приятной игры на Majestic RP. `n.ржб - Приветствую, в виду несоответствия вашей репорт-жалобы регламента подачи вынужден отказать в рассмотрении. Напишите жалобу на игрока на форум. С регламентом подачи репорт-жалоб в /report вы можете ознакомиться в дискорде проекта MajesticRP, канал новости, поиск по слову "репорт". `n.рем - Приветствую, чтобы починить своё авто купите рем.комплект на любой АЗС. Через меню G почините Ваш автомобиль. `n.сделка - Приветствую, администрация не следит за сделками игроков, запишите видео на случай обмана, чтобы оставить жалобу на игрока на форуме. Приятной игры на MajesticRP. `n.имя - Ваше Имя Фамилия не подходит по правилам нашего сервера. Вам нужно сменить ник и написать в репорт повторно, если Ваш ник будет соблюдать правила сервера, то Вас выпустят. `n.дел - Приветствую, утопленные авто можем только удалить. `n.лечу - Приветствую. Уже лечу к Вам на помощь. `n.пом - Приветствую. Сейчас помогу Вам, ожидайте. `n.загр - Приветствую, в данный момент на сервере большая нагруженность, пожалуйста оставьте жалобу на игрока в соответствующем разделе на форуме. Приятной игры. `n.слетдом - Приветствую. Свободные дома обозначаются карте зеленым цветом. Они слетают каждый час, начиная с 00:00. Чтобы его купить, Вам потребуется иметь полную гос. стоимость наличными. `n.госдом - Приветствую. Чтобы продать дом в гос. стоимость, нужно подойти к двери и нажать Е. Вы получите 75 процентов от его гос. цены. Если Вы невовремя оплатите налоги или забудете это сделать, дом слетит автоматически. `n.майки - Здравствуйте. Для того, чтобы купить майку под верхнюю одежду, вам нужно сначала купить элемент верхней одежды (например, пиджак). После этого вам буду доступны все майки, которые подходят под нее в разделе "Майки".Приятной игры и самого лучшего настроения на Majestic RP. `n.рыблиц - Приветствую, получить лицензию на рыбалку вы можете в Мэрии. Приятной игры и самого лучшего настроения на Majestic RP. `n.погода - Приветствую, к сожалению администрация не контролирует данный процесс. Погода меняется автоматически. Приятной игры и самого лучшего настроения на Majestic RP. `n.реп - Приветствую. Пожалуйста, уточните свой вопрос подробнее в /report. Администрация не летает на репорты по типу 'админ тп', 'админ можно поговорить', 'помогите', 'админ есть вопрос'. Количество символов в /report неограничено, вы можете полностью расписать Вашу проблему/вопрос. `n.неувид - Приветствую, к сожалению администрация не может увидеть это нарушение. Пожалуйста, если у Вас есть видеофиксация данного нарушения - оформите жалобу на форуме, спасибо большое за понимание. `n.кости - Приветствую, чтобы играть в кости вам нужно купить их в любом 24/7. После того как вы купили кости, вы можете подойти к игроку. `n.багвид - Если вы не видите канал сообщить-о-баге в дискорде проекта, то вам необходимо пролистать дискорд вверх до категории "Каналы и роли" -> Просмотр каналов -> Поставить галочку на текстовый чат сообщить о баге. `n.новичок - Приветствую, попробуйте перезайти на сервер. Если проблема повторится, то вам следует обратится в раздел сообщить о баге в дискорде проекта. `n.да - Приветствую. Да. Приятной игры и хорошего настроения. `n.нет - Приветствую. Нет. Приятной игры и хорошего настроения. `n.инв - Приветствую. Это баг инвентаря, вам нужно открыть любое другое окно инвентаря, например, багажник, кладовка, склад фракции. Если ничего из перечисленного нет по близости, то перезайдите на сервер F1 - Direct connect. Приносим свои извинения за предоставленные неудобства.`n .арынок - Для того, чтобы выставить свое авто на продажу, Вам необходимо приехать на территорию авторынка, выбрать место и нажать на клавишу "G" - Авторынок - Выставить на продажу.`n .тайник - Приветствую, не сообщаем информацию по времени спавна / местоположению / пулу дропа предметов с тайников. `n .ставка - Расчёт ставки происходит в течение 6-ти часов. Администрация не управляет рассчетом. Приятной игры и лучшего настроения на Majestic RP.`n .багвойс - Приветствую, попробуйте перезайти на сервер. Если проблема повторится, то вам следует обратится в раздел сообщить о баге в дискорде проекта.
return
    Ответыобн:
    Gui, Commandlist: -SysMenu
	Gui, Commandlist: Add, Button, x487 y0 w45 h20 gguiclose, X
    Gui, Commandlist: Add, Tab, x0 y0 h800 w530, 1|2
    Gui, Commandlist: Color, FFFFFF
    Gui, Commandlist: Font, s8, Segoe UI
    Gui, Commandlist: Font, 000000
    Gui, Commandlist: Add, Text, x8 y24  h20 +0x200, .иср - /bancheck
    Gui, Commandlist: Add, Text, x8 y40  h20 +0x200, /jch - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .оср - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .ифтсрусл - /bancheck
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .фофшдсрусл - /ajailcheck 
    Gui, Commandlist: Add, Text, x8 y104  h20 +0x200, /tf - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .еа - /tempfamily 
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, /sm - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ыь - /setmaterials 
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, /tn - /tempname 
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .ет - /tempname 
    Gui, Commandlist: Add, Text, x8 y200  h20 +0x200, .яяв - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, /zzd - /zzdebug 
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, /Usefull - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .фьзр - /addUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, /rUsefull - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .кфьзр - /removeUsefullitheater 
    Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, /gzone - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .пящту - /togglegreenzone 
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, /mcheck - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, .ьсрусл - /mutecheck 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, .ьгеусрусл - /mutecheck 
	Gui, Commandlist: Add, Text, x8 y376  h20 +0x200, .гтофшд - /unjail 
    Gui, Commandlist: Add, Text, x8 y392  h20 +0x200, .цфкт - /warn 
    Gui, Commandlist: Add, Text, x8 y408  h20 +0x200, .дв - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y424  h20 +0x200, /ld - /lastdriver 
    Gui, Commandlist: Add, Text, x8 y440  h20 +0x200, /af - /ainfect 
    Gui, Commandlist: Add, Text, x8 y456  h20 +0x200, .фа - /ainfect 
    Gui, Commandlist: Add, Text, x8 y472  h20 +0x200, /sk - /skick 
    Gui, Commandlist: Add, Text, x8 y488  h20 +0x200, .ыл - /skick 
    Gui, Commandlist: Add, Text, x8 y504  h20 +0x200, /k - /kick 
    Gui, Commandlist: Add, Text, x8 y520  h20 +0x200, .л - /kick 
	Gui, Commandlist: Add, Text, x8 y536  h20 +0x200, /ai - /auninvite 
    Gui, Commandlist: Add, Text, x8 y552  h20 +0x200, .фш - /auninvite 
    Gui, Commandlist: Add, Text, x8 y568  h20 +0x200, .аи - /fb 
    Gui, Commandlist: Add, Text, x8 y584  h20 +0x200, /aif - /ainfect  
	Gui, Commandlist: Add, Text, x8 y600  h20 +0x200, .фша - /ainfect 
    Gui, Commandlist: Add, Text, x8 y616  h20 +0x200, .с - /c  
    Gui, Commandlist: Add, Text, x8 y632  h20 +0x200, .си - /cb 
    Gui, Commandlist: Add, Text, x8 y648  h20 +0x200, .гтьгеу - /unmute 
    Gui, Commandlist: Add, Text, x8 y664  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x8 y680  h20 +0x200, .фвьшты - /admins 
    Gui, Commandlist: Add, Text, x8 y696  h20 +0x200, .фштаусе - /ainfect 
    Gui, Commandlist: Add, Text, x8 y712  h20 +0x200, .умутещт - /eventon 
    Gui, Commandlist: Add, Text, x8 y728  h20 +0x200, .умутещаа - /eventoff 
    Gui, Commandlist: Add, Text, x8 y744  h20 +0x200, .пц - /gw 
	Gui, Commandlist: Add, Text, x8 y760  h20 +0x200, /bch - /bancheck
	
    Gui, Commandlist: Add, Text, x170 y24  h20 +0x200, .ашчсфк - /fixcar 
    Gui, Commandlist: Add, Text, x170 y40  h20 +0x200, .уьздуфвук - /templeader 
    Gui, Commandlist: Add, Text, x170 y56  h20 +0x200, /tl - /templeader 
    Gui, Commandlist: Add, Text, x170 y72  h20 +0x200, .ед - /templeader 
    Gui, Commandlist: Add, Text, x170 y88  h20 +0x200, .ылшсл - /skick 
    Gui, Commandlist: Add, Text, x170 y104  h20 +0x200, .кузфшк - /repair 
    Gui, Commandlist: Add, Text, x170 y120  h20 +0x200, .фгтшмшеу - /auninvite 
    Gui, Commandlist: Add, Text, x170 y136  h20 +0x200, .учсфк - /excar 
    Gui, Commandlist: Add, Text, x170 y152  h20 +0x200, .агуд - /fuel 
    Gui, Commandlist: Add, Text, x170 y168  h20 +0x200, .акууяу - /freeze
    Gui, Commandlist: Add, Text, x170 y200  h20 +0x200, .згддекгтл - /pulltrunk 
    Gui, Commandlist: Add, Text, x170 y216  h20 +0x200, .езсфк - /tpcar 
    Gui, Commandlist: Add, Text, x170 y232  h20 +0x200, .дфыевкшмук - /lastdriver 
    Gui, Commandlist: Add, Text, x170 y248  h20 +0x200, .вудшеуь - /delitem 
    Gui, Commandlist: Add, Text, x170 y264  h20 +0x200, /gc - /getcar 
	Gui, Commandlist: Add, Text, x170 y184  h20 +0x200, .пиздец - Мольба о помощи
    Gui, Commandlist: Add, Text, x170 y280  h20 +0x200, .пс - /getcar 
    Gui, Commandlist: Add, Text, x170 y296  h20 +0x200, .фв - /admins 
    Gui, Commandlist: Add, Text, x170 y312  h20 +0x200, /ad - /admins 
    Gui, Commandlist: Add, Text, x170 y328  h20 +0x200, .з - /players 
    Gui, Commandlist: Add, Text, x170 y344  h20 +0x200, /p - /players 
    Gui, Commandlist: Add, Text, x170 y360  h20 +0x200, .здфнукы - /players 
	Gui, Commandlist: Add, Text, x170 y376  h20 +0x200, .рес - /rescue 
    Gui, Commandlist: Add, Text, x170 y392  h20 +0x200, /htc - /rescue 
    Gui, Commandlist: Add, Text, x170 y408  h20 +0x200, .ез - /tp 
    Gui, Commandlist: Add, Text, x170 y424  h20 +0x200, .ызус - /spec 
    Gui, Commandlist: Add, Text, x170 y440  h20 +0x200, .ызусщаа - /specoff
    Gui, Commandlist: Add, Text, x170 y456  h20 +0x200, .ф - /a 
    Gui, Commandlist: Add, Text, x170 y472  h20 +0x200, .фыьы - /asms 
    Gui, Commandlist: Add, Text, x170 y488  h20 +0x200, /sp - /spec 
    Gui, Commandlist: Add, Text, x170 y504  h20 +0x200, .ыз - /spec 
    Gui, Commandlist: Add, Text, x170 y520  h20 +0x200, /so - /specoff 
	Gui, Commandlist: Add, Text, x170 y536  h20 +0x200, .ыщ - /specoff
    Gui, Commandlist: Add, Text, x170 y552  h20 +0x200, /kill - /hp 0
    Gui, Commandlist: Add, Text, x170 y568  h20 +0x200, .лшдд - /hp 0
    Gui, Commandlist: Add, Text, x170 y584  h20 +0x200, .пр - /gh 
	Gui, Commandlist: Add, Text, x170 y600  h20 +0x200, .штсфк - /incar 
    Gui, Commandlist: Add, Text, x170 y616  h20 +0x200, .штм - /inv 
    Gui, Commandlist: Add, Text, x170 y632  h20 +0x200, .рз - /hp 
    Gui, Commandlist: Add, Text, x170 y648  h20 +0x200, .шв - /id 
    Gui, Commandlist: Add, Text, x170 y664  h20 +0x200, .од - /ajail 
    Gui, Commandlist: Add, Text, x170 y680  h20 +0x200, .фофшд - /ajail 
    Gui, Commandlist: Add, Text, x170 y696  h20 +0x200, .лшсл - /kick 
    Gui, Commandlist: Add, Text, x170 y712  h20 +0x200, .вд - /dl 
    Gui, Commandlist: Add, Text, x170 y728  h20 +0x200, .уыз - /esp3 
    Gui, Commandlist: Add, Text, x170 y744  h20 +0x200, .уыз2 - /esp3 
	Gui, Commandlist: Add, Text, x170 y760  h20 +0x200, .мур - /veh 

    Gui, Commandlist: Add, Text, x332 y24  h20 +0x200, .ифт - /ban 
    Gui, Commandlist: Add, Text, x332 y40  h20 +0x200, .вудмур - /delveh 
    Gui, Commandlist: Add, Text, x332 y56  h20 +0x200, .ьез - /mtp 
    Gui, Commandlist: Add, Text, x332 y72  h20 +0x200, .мур - /veh 
    Gui, Commandlist: Add, Text, x332 y88  h20 +0x200, .фмур - /aveh 
    Gui, Commandlist: Add, Text, x332 y104  h20 +0x200, .рфквифт - /hardban 
    Gui, Commandlist: Add, Text, x332 y120  h20 +0x200, .ьгеу - /mute 
    Gui, Commandlist: Add, Text, x332 y136  h20 +0x200, .пшв - /gid 
    Gui, Commandlist: Add, Text, x332 y152  h20 +0x200, .ср - /chide 
    Gui, Commandlist: Add, Text, x332 y168  h20 +0x200, /ch - /chide 
    Gui, Commandlist: Add, Text, x332 y184  h20 +0x200, .куысгу - /rescue 
    Gui, Commandlist: Add, Text, x332 y200  h20 +0x200, .ыуевшь - /setdim 
    Gui, Commandlist: Add, Text, x332 y216  h20 +0x200, /sd - /setdim 
    Gui, Commandlist: Add, Text, x332 y232  h20 +0x200, .и - /b 
    Gui, Commandlist: Add, Text, x332 y248  h20 +0x200, .ц - /w 
    Gui, Commandlist: Add, Text, x332 y264  h20 +0x200, .ыв - /setdim 
    Gui, Commandlist: Add, Text, x332 y280  h20 +0x200, .сршву - /chide 
    Gui, Commandlist: Add, Text, x332 y296  h20 +0x200, .афк - /a афк мин
    Gui, Commandlist: Add, Text, x332 y312  h20 +0x200, .фгтсгаа - /auncuff 
    Gui, Commandlist: Add, Text, x332 y328  h20 +0x200, .фсгаа - /acuff 
    Gui, Commandlist: Add, Text, x332 y344  h20 +0x200, .акууямур - /freezveh
    Gui, Commandlist: Add, Text, x332 y360  h20 +0x200, /scd - /setcardim 
	Gui, Commandlist: Add, Text, x332 y376  h20 +0x200, .ыуесфквшь - /setcardim 
    Gui, Commandlist: Add, Text, x332 y392  h20 +0x200, .ысв - /setcardim 
    Gui, Commandlist: Add, Text, x332 y408  h20 +0x200, /rst - /resettempname 
    Gui, Commandlist: Add, Text, x332 y424  h20 +0x200, .кые - /resettempname 
    Gui, Commandlist: Add, Text, x332 y440  h20 +0x200, .куыуееуьзтфьу - /resettempname 
    Gui, Commandlist: Add, Text, x332 y456  h20 +0x200, .ты - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y472  h20 +0x200, /ns - /togglesnow 
    Gui, Commandlist: Add, Text, x332 y488  h20 +0x200, /dv - /delveh 
    Gui, Commandlist: Add, Text, x332 y504  h20 +0x200, .вм - /delveh 
    Gui, Commandlist: Add, Text, x332 y520  h20 +0x200, .рфкв - /hardban 
	Gui, Commandlist: Add, Text, x332 y536  h20 +0x200, /hard - /hardban 
    Gui, Commandlist: Add, Text, x332 y552  h20 +0x200, /as - /asms 
    Gui, Commandlist: Add, Text, x332 y568  h20 +0x200, .фы - /asms 
    Gui, Commandlist: Add, Text, x332 y584  h20 +0x200, .пез - /gtp
	Gui, Commandlist: Add, Text, x332 y600  h20 +0x200, .пь - /gm
    Gui, Commandlist: Add, Text, x332 y616  h20 +0x200, .тс - /noclip 
    Gui, Commandlist: Add, Text, x332 y632  h20 +0x200, /nc - /noclip 
    Gui, Commandlist: Add, Text, x332 y648  h20 +0x200, /acf - /acuff 
    Gui, Commandlist: Add, Text, x332 y664  h20 +0x200, .фса - /acuff 
    Gui, Commandlist: Add, Text, x332 y680  h20 +0x200, /auf - /auncuff 
    Gui, Commandlist: Add, Text, x332 y696  h20 +0x200, .езр - /tph
    Gui, Commandlist: Add, Text, x332 y712  h20 +0x200, .фга - /auncuff 
    Gui, Commandlist: Add, Text, x332 y728  h20 +0x200, .фмур - /aveh
    Gui, Commandlist: Add, Text, x332 y744  h20 +0x200, .фдщсл - /alock
	Gui, Commandlist: Add, Text, x332 y760  h20 +0x200, .пуесфк - /getcar 

	Gui, Commandlist: Tab, 2
	Gui, Commandlist: Add, Text, cred x122 y24  h20 +0x200, Данные команды работают совместно с "динамик"
    Gui, Commandlist: Add, Text, cyellow x8 y40  h20 +0x200, Дименшены
    Gui, Commandlist: Add, Text, x8 y56  h20 +0x200, .обыч - /setdim id 0
    Gui, Commandlist: Add, Text, x8 y72  h20 +0x200, .каптд - /setdim id 9871 
    Gui, Commandlist: Add, Text, x8 y88  h20 +0x200, .бизд - /setdim id 222
    Gui, Commandlist: Add, Text, cyellow x8 y104  h20 +0x200, Оружие
    Gui, Commandlist: Add, Text, x8 y120  h20 +0x200, .миниг - /gw id weapon_minigun 9999
    Gui, Commandlist: Add, Text, x8 y136  h20 +0x200, .ревик - /gw id weapon_revolver 9999
    Gui, Commandlist: Add, Text, x8 y152  h20 +0x200, .ракет - /gw id weapon_firework 9999
    Gui, Commandlist: Add, Text, x8 y168  h20 +0x200, .хевик - /gw id weapon_heavysniper_mk2 9999
    Gui, Commandlist: Add, Text, x8 y184  h20 +0x200, .топор - /gw id weapon_hatchet  9999
	Gui, Commandlist: Add, Text, cyellow x8 y200  h20 +0x200, Бизвары
	Gui, Commandlist: Add, Text, x8 y216  h20 +0x200, .лес1 - Телепорт на локацию лес (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y232  h20 +0x200, .лес2 - Телепорт на локацию лес (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y248  h20 +0x200, .порт1 - Телепорт на локацию порт (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y264  h20 +0x200, .порт2 - Телепорт на локацию порт (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y280  h20 +0x200, .свалка1 - Телепорт на локацию свалка (деф) + смена дименшена
	Gui, Commandlist: Add, Text, x8 y296  h20 +0x200, .свалка2 - Телепорт на локацию свалка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y312  h20 +0x200, .стройка1 - Телепорт на локацию стройка (деф) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y328  h20 +0x200, .стройка2 - Телепорт на локацию стройка (атака) + смена дименшена
    Gui, Commandlist: Add, Text, x8 y344  h20 +0x200, 
    Gui, Commandlist: Add, Text, x8 y360  h20 +0x200, 
    Gui, Commandlist: Show, h800 w530, Команды
	Return

guiclose:
Gui, Commandlist:Destroy
return

Наказания:
MsgBox, 8192, Наказания, sID - статический ID(#)`nID - динамический ID([ ])`n `n .хард - /hardban sID 7777 Cheats`n.хард9 - /hardban sID 9999 Cheats`n`n`n.дм - Приветствую, ДМ в репорт-жалобы не рассматривается, оформите жалобу на игрока на форум.`n`n.секс - /warn sID Секс. аним. без отыгровок`n`n.муз - /mute sID 30 Music in ZZ`n`n.смник - /ajail sID 720 Смените Имя_Фамилия согласно правилам сервера`n `n.нрд - /ajail sID 15 nonRP Drive`n.нрд25 - /ajail sID 25 nonRP Drive`n.нрд45 - /ajail sID 45 nonRP Drive`n.нрд70 - /ajail sID 70 nonRP Drive`n.нрд90 - /ajail sID 90 nonRP Drive `n`n.нрп - /ajail sID  15 nonRP Поведение`n.нрп25 - /ajail sID 25 nonRP Поведение`n.нрп45 - /ajail sID  45 nonRP Поведение`n.нрп70 - /ajail sID  70 nonRP Поведение`n.нрп90 - /ajail sID  90 nonRP Поведение`n`n.дб - /ajail sID 30 DB`n.дб45 - /ajail sID 45 DB`n.дб60 - /ajail sID 60 DB`n.дб75 - /ajail sID 75 DB`n.дб90 - /ajail sID 90 DB`n`n.пг - /ajail sID 35 PG`n.пг55 - /ajail sID 55 PG`n.пг75 - /ajail sID 75 PG`n.пг90 - /ajail sID 90 PG`n`n `n.ккапт - /kick ID Помеха капту`n.кбиз - /kick ID Помеха бизвару`n.квзп - /kick ID Помеха ВЗП`n.квзм - /kick ID Помеха ВЗМ`n`n.взм45 - /ajail sID 45 Нарушение правил ВЗМ(Стрельба в/из нейтрала)`n.взм90 - /ajail sID 90 Нарушение правил ВЗМ`n`n `n.оса30 - /hardban sID 30 Оскорбление администрации`n.оса15 - /hardban sID 14 Оскорбление администрации`n.оса10 - /hardban sID 10 Оскорбление администрации`n.оса - /hardban sID 7 Оскорбление администраци
return
Скилы:
MsgBox, 8192, Скилы, Навыки:.`n`n.вынос: Выносливость - навык выносливости повышается от подвижного образа жизни. Чем больше ты бегаешь, тем быстрее повышается навык. При низком навыке, персонаж не может прыгнуть 2 раза и падает. Соответственно повышение навыка влияет на длительность беспрерывного бега и количество прыжков, максимум на последнем уровне - 2.`n`n.сила: Сила - навык силы повышается от физических нагрузок. Чем больше ты занимаешься в качалке (иконка бегущего человека на карте), тем быстрее повышается навык. От прокачки увеличивается сопротивление к урону от падения.`n`n.дых: Дыхание - навык дыхания повышается от длительного нахождения под водой. Чем больше ты плаваешь, тем быстрее повышается навык. Соответственно повышение навыка влияет на длительность беспрерывного плавания под водой.`n`n.вожден: Вождение - навык вождения повышается от времени, проведенного за рулем автомобиля. Чем больше ты водишь транспорт, тем быстрее повышается навык. От прокачки увеличивается управляемость транспортным средоством.`n`n.полет: Полет - навык пилотирования повышается от времени, проведенного за воздушным транспортом. Чем больше ты летаешь на самолете или вертолете, тем быстрее повышается навык. Также навык можно повысив пройдя курсы в летной школе. Пройти их можно 1 раз в 24 часа, увелчение навыка от 1 занятия - 10, стоимость одного занятия - 2 000$. От прокачки навыка увеличивается стабильность полета и управляемость воздушным транспортом.`n`n.скрытн: Скрытность - навык скрытности повышается от количества успешных уходов от погони (понижений уровня розыска). Чем чаще ты скрываешься от полиции, тем быстрее повышается навык. От прокачки уменьшается время, которое ты будешь находиться в розыске (быстрее пропадают звезды).`n`n.стрельба: Стрельба - навык стрельбы повышается от времени, проведенного в перестрелках, либо тренировках. Чем лучше ты стреляешь и попадаешь, тем быстрее повышается навык. Рекомендуем тренироваться в специально отведенных для того местах, тире в оружейном магазине. От прокачки навыка увеличивается скорость перезарядки и перекатов, кучность стрельбы.
return
Инфо:
MsgBox, 8192, Админ-инфо, Скилы: `n stamina - выносливость`n strength - сила`n lung_capacity - дыхание`n wheelie_ability - вождение`n flying_ability - полет`n shooting_ability - стрельба`n stealth_ability - скрытность`n`n builder - Строитель`n butcher - Мясник`n trucker - Дальнобойщик`n fishing - Рыбалка`n busdriver - Водитель автобуса`n moneycollector - Инкассатор`n vineyard - Виноградник`n lumberjack - Лесоруб`n garbagecollector - Мусорщик`n farmer - Фермер`n burger - Повар`n mushroomer - Грибник`n gopostal - почтальон`n`n gangjob - Гетто закладчик`n mafiajob - Мафия закладчик`n bikerjob - Байкер закладчик`n hijacker - Угонщик`n`nЛицензии:`n drived - Легковой транспорт`n drivem - Мотоциклы`n CDLA - Тягачи и моногрузовики`n CDLB - Пикапы и грузовики`n CDWL - Оружие`n FH - Охота и рыбалка`n Business - Бизнесы`n`nЭлементы амфитеатра:`n ID 0 - Одна стойка для выступлений`n ID 1 - Две стойки для дебатов`n ID 2 - Три стойки для дебатов`n ID 3 - Четыре стойки для дебатов`n ID 4 - Американские флаги вдоль и на сцене`n ID 5 - Камеры на сцене`n ID 6 - Стол с креслами и баннерами на сцене для конкурса талантов`n`n ;Список зеленых зон: `n pillbox - EMS ЛС`n cityhall - Мэрия ЛС`n casino - Diamond Casino`n lspd - Полицейский департамент`n gungame - Maze Bank Arena`n car-scrap - Свалка`n boat-station - Спавн лодок`n yacht - Яхта`n grand-club - Неофка Гранд Леона`n trucker-paleto - Дальнобойщик Палето`n driving-school - Автошкола`n market - Рынок`n car-market - Авторынок`n bahama - Клуб Багама`n auction - Аукцион`n auction-interrior - Аукцион интерьер`n weazel-news - Визлы ЛС`n gopostal - Работа почтальона ЛС`n builder - Стройка Лос-Сантос`n builder2 - Стройка на крыше Лос-Сантос`n golf-club - Гольф Клуб ЛС`n car-spawn-ls - Ключик для спавна авто`n spawn-lsia - Спавн в аэропорту`n spawn-paleto - Спавн в Палето-Бей`n church-ls - Церковь ЛС`n church-paleto - Церковь Палето`n amphitheater-ls - Амфитеатр ЛС`n federal-prison - Федеральная тюрьма`n shpd-ems-sandy - ЕМС и Шерифы Сэнди`n farm - Ферма`n ems-paleto - ЕМС Палето`n forest1 - Первый лес`n forest2 - Второй лес`n forest3 - Третий лес`n forest4 - Четвертый лес`n mushrooms1 - Первая зона грибов`n mushrooms2 - Вторая зона грибов`n mushrooms3 - Третья зона грибов`n mushrooms4 - Четвертая зона грибов`n mushrooms5 - Пятая зона грибов`n mushrooms6 - Шестая зона грибов`n trucker - Дальнобойщик порт`n butcher - Мясник гетто`n busdriver - Автовокал`n bk - Букмекерская контора`n church-vineyard - Церковь на винограднике`n lsc1 - ЛСК Аэропорт ЛС`n lsc2 - ЛСК Справа от ЛСПД`n lsc3 - ЛСК Беннис`n lsc4 - ЛСК Сэнди`n lsc5 - Палето`n leopold - Магазин ИРЛ одежды`n bar-paleto - Бар палето`n vanila - Стрип клуб Ванила Юникорн`n tequila - Бар TeQui-La-La`n comedy - Comedy Club`n club-ls - Клуб около ВВ`n moto-dealer - Мотосалон`n bean-machi
return
^F9::reload
^F10::Exitapp