# VS Code


## Install plugin

- HookyQR.beautify
- abusaidm.html-snippets
- akamud.vscode-theme-onedark
- alefragnani.project-manager
- christian-kohler.npm-intellisense
- christian-kohler.path-intellisense
- cssho.vscode-svgviewer
- deerawan.vscode-dash
- donjayamanne.jquerysnippets
- ecmel.vscode-html-css
- formulahendry.auto-rename-tag
- formulahendry.code-runner
- joelday.docthis
- mkaufman.HTMLHint
- ms-vscode.js-atom-grammar
- msjsdiag.debugger-for-chrome
- naumovs.color-highlight
- robertohuertasm.vscode-icons



## enable vscode-icons

 Code > Preferences > File Icon Theme > VSCode Icons



## keybindings.json

``` json
[{
    "key": "cmd+l",
    "command": "workbench.action.gotoLine"
  },
  {
    "key": "cmd+shift+r",
    "command": "workbench.action.quickOpen"
  },
  {
    "key": "cmd+d",
    "command": "editor.action.deleteLines"
  },
  {
    "key": "cmd+shift+l",
    "command": "editor.action.insertCursorAtEndOfEachLineSelected",
    "when": "editorTextFocus"
  }
]

```


## settings.json

```
{
  "vsicons.presets.hideFolders": false,
  "editor.formatOnSave": true,
  "editor.wordWrap": true,
   "editor.snippetSuggestions": "top" // 將 snippet 提到最上層
   "editor.tabCompletion": true, 按下 tab 即完成
}		
```


## Add Code command

cmd + p

shell command:install 'code' command in path

## Change language

cmd + p

configure Language

``` json
{
	// 定義 VSCode 的顯示語言。
	// 如需支援的語言清單，請參閱 https://go.microsoft.com/fwlink/?LinkId=761051。
	// 變更值必須重新啟動 VSCode。
	"locale":"en"
}
```