# Windows Post-Install

## Package manager

Chocolatey

From cmd.exe, with admin right
```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

## Package

Restart cmd.exe, with admin right

```
choco install -y firefox vlc vim f.lux git
choco install -y cmdermini -pre
```

## Must-Have Software

- Cmder ( Console cmd.exe and Powershell )
- F.lux
- Notepad++
- Notepad2
- Markdown Edit
- Github
- Git
- Chocolatey
- Firefox
- VLC