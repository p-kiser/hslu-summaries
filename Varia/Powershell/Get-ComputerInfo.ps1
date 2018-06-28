#Information about the System
Get-WMIObject -Class Win32_ComputerSystem

#Information about the BIOS
Get-WMIObject -Class Win32_BIOS

#Information about the Motherboard
Get-WMIObject -Class Win32_Baseboard

#Information about the CPU
Get-WMIObject -Class Win32_Processor

#Information about Logical Drives (Includes mapped drives and I believe PSDrives)
Get-WMIObject -Class Win32_LogicalDisk

#Information about Physical Drives
Get-WMIObject -Class Win32_DiskDrive

#Information about the Memory
Get-WMIObject -Class Win32_PhysicalMemory

#Information about the NIC
Get-WMIObject -Class Win32_NetworkAdapter
