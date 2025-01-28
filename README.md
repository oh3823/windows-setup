# Windows Setup Automation with winget

This repository contains scripts and configuration files to help automate and streamline the initial setup of a fresh Windows environment.

## Features

- Automate app installation
- Remove unnecessary default windows apps
- Change default Windows settings (e.g., context menu style)

## Installation and Setup

**Please Run in Windows Command Prompt**

1. If you have Git installed, run the following commands in the Command Prompt.

   ```batch
   git clone "https://github.com/oh3823/windows-setup"

   windows-setup\setup.bat [args]
   ```

2. If you don't have Git, download the ZIP archive, extract it, navigate to the directory, and then run setup.bat with args.

## How It Works

When you run setup.bat without any arguments, it performs the following actions:

### App Installation

It reads the default file located under the `install-appid\` directory, which contains a list of winget IDs (one per line). These apps are automatically installed using winget.

The apps that are installed by default (`install-appid\default`) are as follows.

```
Microsoft.WindowsTerminal
Google.Chrome
Google.GoogleDrive
Kakao.KakaoTalk
Git.Git
Microsoft.VisualStudioCode
Docker.DockerDesktop
JetBrains.Toolbox
Notion.Notion
Notion.NotionCalendar
SlackTechnologies.Slack
Microsoft.PowerToys
Microsoft.Office
Microsoft.DevHome
```

Modify the default list or create a new one according to your preferences!

### App Uninstallation

It also checks the `uninstall-appname\` directory for a default file containing a list of app names (as recognized by winget). These apps are automatically uninstalled.

**Constraints**

- File encoding must be UTF-8.
- Files should not end with a newline.

## Improvements (Todo)

- Add options (such as `-i` and `-u`) to specify different files for installation and uninstallation, allowing you to customize both lists independently.
- Improved flexibility for line breaks and delimiters in the file.
- Upgrade or improve reusability.
