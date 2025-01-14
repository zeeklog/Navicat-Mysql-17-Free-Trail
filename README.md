# Navicat-Mysql-15/16/17-Free-Trail bash
Plz, only use when you need to export y our data. For daily use , plz buy from Navicat Store.

### Version
- Navicat Premium 17, 16, and 15 (Windows)

## Script Functionality

### Delete Navicat Registry Entries
The script will delete the following registry entries:

1. **Navicat Registration Entries**
   - The script will locate and delete all registration entries under:
     ```
     HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration[version and language]
     ```
     - Examples:
       - `Registration15XCT`
       - `Registration16XEN`
       - `Registration17XEN`

2. **Delete "Info" and "ShellFolder" Entries under CLSID**
   - The script will identify and delete all "Info" and "ShellFolder" folders under the CLSID registry path:
     ```
     HKEY_CURRENT_USER\Software\Classes\CLSID\{ID}\Info
     ```
   - Note: The parent folder name of "Info" and "ShellFolder" may vary from person to person, so the script is designed to carefully locate and remove these entries without affecting other important files.

## How to Use
1. Download the script.
2. Run the script as an administrator to ensure it has the necessary permissions to delete the registry entries.

## Or you can do it your self, it's pretty easy:
[Path Example](https://github.com/zeeklog/Navicat-Mysql-17-Free-Trail/blob/main/Path%20Demo.png?raw=true)
