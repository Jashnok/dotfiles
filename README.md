# dotfiles
## Installation
```bash
git clone --recursive https://github.com/jashnok/dotfiles.git &&\
cd dotfiles &&\
./install.sh
```

## VS-Code Settings
### settings.json
```
{
  "explorer.confirmDelete": false,
  "window.zoomLevel": 1,
  "debug.allowBreakpointsEverywhere": true,
  "vsicons.dontShowNewVersionMessage": true,
  "terminal.integrated.shell.windows": "C:\\Windows\\System32\\cmd.exe",
  "git.autofetch": true,
  "gitlens.hovers.currentLine.over": "line",
  "kite.showWelcomeNotificationOnStartup": false,
  "gitlens.currentLine.enabled": false,
  "gitlens.codeLens.enabled": false,
  "editor.suggestSelection": "first",
  "python.languageServer": "Microsoft",
  "python.pythonPath": "/Library/Frameworks/Python.framework/Versions/3.7/bin/python3",
  "workbench.colorTheme": "Community Material Theme Palenight High Contrast",
  "explorer.confirmDragAndDrop": false,
  "editor.tabSize": 2,
  "workbench.iconTheme": "vscode-icons",
  "editor.fontFamily": "JetBrains Mono",
  "editor.wordWrap": "on",
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "liveSassCompile.settings.formats": [
    {
      "format": "compressed",
      "extensionName": ".min.css",
      "savePath": "/dist/css"
    }
  ],
  "liveSassCompile.settings.generateMap": false,
  "phpcs.executablePath": "/Users/joshuaredmann/.composer/vendor/bin/phpcs",
  "php-cs-fixer.onsave": true,
  "phpcs.errorSeverity": 5,
  "php-cs-fixer.autoFixBySemicolon": true,
  "php-cs-fixer.formatHtml": true,
  "phpcs.warningSeverity": 6,
  "prettier.disableLanguages": ["php"],
  "prettier.singleQuote": true,
  // Language specific stuff
  "[php]": {
    "editor.defaultFormatter": "junstyle.php-cs-fixer"
  },
  "[python]": {},
  "[vue]": {
    "editor.defaultFormatter": "octref.vetur"
  },
  "workbench.activityBar.visible": true
}
```
