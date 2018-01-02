1. [Recommended AHCI/RAID and NVMe Drivers](https://www.win-raid.com/t29f25-Recommended-AHCI-RAID-and-NVMe-Drivers.html)


2. [Intel Management Engine: Drivers, Firmware & System Tools](https://www.win-raid.com/t596f39-Intel-Management-Engine-Drivers-Firmware-amp-System-Tools.html#no_permission_userprofile)

- B. About Intel (CS)ME Firmware Updates and download Intel-SA-00086 Detection Tool
- B1. Consumer Systems and download Intel CSME 11.8 Consumer PCH-LP Firmware v11.8.50.3426
- C2. Intel (CS)ME System Tools and download Intel CSME System Tools v11 r6
- extract CSME Firmware and linux/windows FWUpdate tool from Intel CSME System Tools v11 r6 boot from linux live usb

`sudo ./FWUpdLcl -F 11.8.50.3426_CON_LP_C0_NPDM_PRD_RGN.bin`

or in windows

`./FWUpdLcl64.exe -F 11.8.50.3426_CON_LP_C0_NPDM_PRD_RGN.bin`

- A1. Intel MEI Driver Only download Intel MEI Driver v11.7.0.1058 MEI-Only Installer
