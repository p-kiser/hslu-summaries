# Enable / disable Win+L shortcut

## Via registry

Works on Windows Home, disables Lock for the current user:

* Open Registry Editor: `regedit`
* Navigate to:
```
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System
```
* Create new `DWORD 32-bit value` called `DisableLockWorkstation`
* set value
    * `1` : disable <kbd>Win</kbd> + <kbd>L</kbd>
    * `0` : enable <kbd>Win</kbd> + <kbd>L</kbd>
* reboot

## Via Group Policy

Works on Windows Professional, disables Lock for local machine:

*  Open Goup Policy Editor: `gpedit`
*  Navigate to:

```
Computer Configuration > Administrative Templates > System > Ctr+Alt+Del Options
```
* In Properties Windows select `Enabled`
