# Dotfiles Quick Installer
Quick installer downloads and installs dotfiles

If Git is available, Git will be used as the download mode, otherwise Zip will be used.

## Requirements
### *NIX
#### Git download mode
* Bash
* Git
#### zip download mode
* Bash
* curl or wget
* bsdtar or unzip

### Windows
#### Git download mode
* Command Prompt
* Git
#### zip download mode
* Command Prompt
* PowerShell

# 2-in-1 Script
In this project, we have created a 2-in-1 script that combines a batch file and a shell script, and deployed it to GitHub Pages.
## Generate 2-in-1 Script
Download [shell_batch_combiner](https://github.com/yuk7/shell_batch_combiner) and run this command to generate 2-in-1 mixed script `install.mxsc`:
```bash
combiner.sh install.bat install.sh install.mxsc
```