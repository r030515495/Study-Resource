# Eclipse Tip

## 前言

分享一些自己 Eclipse 使用方法和常用快速鍵，
雖然大家好像都換成使用 [ IntelliJ IDEA ](https://www.jetbrains.com/idea/)。

## Eclipse 版本

Kepler

## 快速鍵（ Keyboard shortcuts ）

有些按鍵可能會不太一樣，
可以用英文名去搜尋快速鍵名稱後，
調整適合成自己的快速鍵。

Mac key image 

 icon | command 
 ---  | ---
 ⌘    | Command  
 ⌃    | Control
 ⌥    | Option
 ⇧    | Shift
 


 command |  osx  | window | 備註
 ------- | ------ | -----  | ---
 Find and replace text <br> 當前檔案內搜尋        |  ⌘ + F        | Ctrl + F |
 Open Resouce <br>  搜尋檔案名稱                  | ⌘ + Shift + R | Ctrl + Shift + R |
 Open the Search dialog <br> 搜尋所有檔案內容      | ⌃ + H         | Ctrl + H | 可以搭配設定 WorkSet 指定搜尋特定資料夾，也可以執行 Replace
 Find Next <br> 向下搜尋目前選取的文字        | ⌘ + K | Ctrl + K
 Find Previous <br> 向上搜尋目前選取的文字    | ⇧ + ⌘ + K | Ctrl + Shift +  K
 Content Assist <br> 程式提示 | ⌥ + / | Alt + /  |
 Toggle comment <br> 註解程式 | ⌘ + / | Ctrl + / |
 Delete Line <br> 刪除目前列 | ⌘ + D | Ctrl + D |
 Move Line Up <br> 移動目前列向上 | ⌥ + ↑ | Alt + ↑ |
 Move Lines Down <br> 移動目前列向下 | ⌥ + ↓ | Alt + ↓ |
 Copy Line <br> 複製當前行 | ⌥ + ⌘ + ↓ | Ctrl + Alt  + ↓|
 Quick Fix <br> 快速修正 | ⌘ + 1 | Ctrl + 1 | 選取一個段落程式可以提煉成方法，在一個字串變數後可以提練成共用變數。
 Quickly access <br> 快速導覽 | ⌘ + 3 | Ctrl + 3 |  快速的指令查找，或想開啟某些視圖。
 To Lower Case <br> 將選取字幕轉換成小寫 | ⇧ + ⌘ + Y | Ctrl + Shift + Y |  
 To upper Case <br> 將選取字幕轉換成大寫 | ⇧ + ⌘ + X | Ctrl + Shift + X |  
 Organize Import <br> 匯入使用的 Class 移除沒使用的 Class | ⇧ + ⌘ + O | Ctrl + Shift + O |  
 Go to Line <br> 跳到指定行號 | ⌘ + L | Ctrl + L |  
 Last edit location <br> 跳到最後編輯的地方 | ⌃ + Q | Ctrl + Q |  
 Format <br> 格式化程式  | ⇧ + ⌘ + F | Ctrl + Shift + F |  
 Backward history <br> 回到前一個編輯的地方| ⌘ + [ | Ctrl + [
 Forward history <br>  反回到上一個編輯的地方| ⌘ + ] | Ctrl + ]
 Open call hierarchy <br> 顯示其他使用相同方法的地方 | ⌃ + ⌥ + H | Ctrl + Alt + H
 Quick outline <br> 顯示目前程式所有方法，並可以搜尋 | ⌘ + O| Ctrl + O
 Rename - Rafactoring <br> 重構目前選取的方法名或變數 | ⌥ + ⌘ + R | Ctrl + Alt + R
 Add Javadoc comment <br> 在方法名稱上增加註解| ⌥ + ⌘ + J| Ctrl + Alt + J
 Undo <br> 上一步 | ⌘ + Z | Ctrl + Z
 Redo <br> 還原上一步 | ⇧ + ⌘ + Z | Ctrl + Shift + Z
 Select enclosing element<br> 漸進區塊選取 | ⌥ + D |Alt + Shift + ↑
 Restore Last Selection <br> 漸進還原選取 | ⇧ + ⌥ + D | Alt + Shift +  ↓
 Quick hierarchy <br> 顯示程式階層| ⌘ + T | Ctrl + T
 Open Type hierarchy<br> 顯示該 Class jar 檔位置| F4 | F4
 快速打開 Preferences| ⌘ + , | 未知| 這其實是 Mac 的預設，不確定 Windows 有沒有

## 沒有設定快捷鍵的方法

有些常用的在 key map 有方法但是沒有預設鍵值，可以自訂

| command | 說明|
| ------- | ---- |
|Rerun JUnit Test  |重新執行上一個 Junit Test


## 程式碼範本 (Template)

在程式編輯視窗打入特定單字，並按下 altr + / 會出現程式的範本

以下是常用的部份，其他可在 `Java -> Editor -> Templates` 中，查詢或自訂。

System.out.println

`syso`

main 方法

`main` 

自動產生 for

`for`

自動產生上一個  Iterable 的迴圈

`foreach`

產生 junit 方法

`test`

產生 if 方法

`if`

產生 if else 方法

`ifelse`


## 建議設定 (Preferences)

儲存 Java 檔案後自動格式化程式，和管理 import 

`Java -> Editor -> Save Actions`

儲存 JavaScript 檔案後自動格式化程式，和管理 import 

`JavaScript -> Editor -> Save Actions`

讓導覽列的 Run/Debug 總是執行之前的 (預設是執行當前視窗)

`Run/Debug -> Launching - Lanunch Operation - Always launch the previously launched application `

讓常用的 package 比較容易出現

```
Java -> Editor ->  Content Assist -> Favorites

加入 org.junit.Assert

```

