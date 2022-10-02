[General]
SyntaxVersion=2
BeginHotkey=120
BeginHotkeyMod=0
PauseHotkey=80
PauseHotkeyMod=1
StopHotkey=121
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=5efad0d2-cde5-418c-b317-0a30d5a1efc1
Description=AutoBPWeb
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]
Dim buy, wait, i, color1, color2
color1 = array("39495F", "344357", "384A62", "2F3E51") //白色祭品配件多种情况
color2 = array("32879E", "256E2D", "175213", "79326A", "4015AB") //黄、绿、红色祭品配件
buy = 455 //点击按住时间
wait = 385 //间隔时间
i = 0
Rem bpweb
MoveTo 300, 170//避免遮挡
FindColorEx 279, 209, 1073, 970, color1(i), 2, 1.0, tsX, tsY //白色祭品配件寻找、点击
If tsX > 0 And tsY > 0 Then 
	i = 0
    MoveTo tsX+1, tsY+1 //坐标修正（未完全）
    Delay 50
    LeftDown 1
    Delay buy
    LeftUp 1
    Delay wait
    Goto bpweb
    Else 
    	i = i + 1
    	If i > UBound(color1) Then //数组序数归零
    		i = 0
    		Goto other //跳出
    	End If
    	Goto bpweb
End If
Rem other
FindColorEx 279, 209, 1073, 970, color2(i), 2, 0.9, tsX, tsY //其他祭品配件寻找、点击
If tsX > 0 And tsY > 0 Then 
	i = 0
    MoveTo tsX+1, tsY+1
    Delay 50
    LeftDown 1
    Delay buy
    LeftUp 1
    Delay wait
    Goto bpweb
    Else 
    	i = i + 1
    	If i > UBound(color2) Then 
    		i = 0
    		Goto bpweb
    	End If
    	Goto other //品级提升寻找
End If






//FindColorEx 279, 209, 1073, 970, "344357", 2, 1.0, tsXb, tsYb
//FindColorEx 279, 209, 1073, 970, "384A62", 2, 1.0, tsXc, tsYc//可点击盒子
//FindColorEx 279, 209, 1073, 970, "2F3E51", 2, 1.0, tsXd, tsYd
//FindColorEx tsX1 - 20, tsY1 - 20, tsX1 + 20, tsY1 + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto yellow
//End If
//FindColorEx tsX1 - 20, tsY1 - 20, tsX1 + 20, tsY1 + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto yellow
//End If
//FindColorEx tsX2 - 20, tsY2 - 20, tsX2 + 20, tsY2 + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto yellow
//End If
//FindColorEx tsX2 - 20, tsY2 - 20, tsX2 + 20, tsY2 + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto yellow
//End If
//FindColorEx tsX3 - 20, tsY3 - 20, tsX3 + 20, tsY3 + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto yellow
//End If
//FindColorEx tsX3 - 20, tsY3 - 20, tsX3 + 20, tsY3 + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto yellow
//End If
//If tsXa > 0 And tsYa > 0 Then 
//    MoveTo tsXa-1, tsYa-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//If tsXb > 0 And tsYb > 0 Then 
//    MoveTo tsXb-1, tsYb-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//If tsXc > 0 And tsYc > 0 Then 
//    MoveTo tsXc-1, tsYc-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//If tsXd > 0 And tsYd > 0 Then 
//    MoveTo tsXd-1, tsYd-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//Rem yellow
//FindColorEx 279, 209, 1073, 970, "32879E", 2, 0.9, intX, intY//可点击黄色祭品
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto green
//End If
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto green
//End If
//If intX > 0 And intY > 0 Then 
//    MoveTo intX-1, intY-1  //鼠标移动误差校正
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//Rem green
//FindColorEx 279, 209, 1073, 970, "256E2D", 2, 0.9, intX, intY//可点击绿色祭品
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto purple
//End If
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto purple
//End If
//If intX > 0 And intY > 0 Then 
//    MoveTo intX-1, intY-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//Rem purple
//FindColorEx 279, 209, 1073, 970, "79326A", 2, 0.9, intX, intY//可点击紫色祭品
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto red	
//End If
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto red
//End If
//If intX > 0 And intY > 0 Then 
//    MoveTo intX-1, intY-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//Rem red
//FindColorEx 279, 209, 1073, 970, "4015AB", 2, 0.9, intX, intY//可点击红色祭品
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "0808BD", 2, 0.9, doX, doY
//If doX > 0 And doY > 0 Then 
//	Goto bpweb
//End If
//FindColorEx intX - 20, intY - 20, intX + 20, intY + 20, "000001", 2, 0.9, poX, poY
//If poX > 0 And poY > 0 Then 
//	Goto bpweb
//End If
//If intX > 0 And intY > 0 Then 
//    MoveTo intX-1, intY-1
//    Delay 50
//    LeftDown 1
//    Delay buy
//    LeftUp 1
//    Delay wait
//    Goto bpweb
//End If
//Goto bpweb
//
