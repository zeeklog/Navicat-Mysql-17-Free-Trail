@echo off

echo Deleting HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update
reg delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update /f


echo Deleting HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update
reg delete HKEY_USERS\【YOUR_USER_ID】\SOFTWARE\PremiumSoft\Navicat\Update

echo Deleting HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Update
reg delete HKEY_USERS\【YOUR_USER_ID】\SOFTWARE\PremiumSoft\Navicat\Registration【version &language, ex: 17XEN】

echo Delete HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium\Registration【version &language, ex: 17XEN】
for /f "tokens=*" %%i in ('REG QUERY "HKEY_CURRENT_USER\Software\PremiumSoft\NavicatPremium" /s ^| findstr /L "Registration"') do (
    reg delete "%%i" /va /f
)

echo Deleting Info and ShellFolder under HKEY_CURRENT_USER\Software\Classes\CLSID
for /f "tokens=*" %%k in ('reg query "HKEY_CURRENT_USER\Software\Classes\CLSID"') do (
    reg query "%%k" /f "Info" /s /e | findstr /i "Info" >nul && reg delete "%%k" /f
    reg query "%%k" /f "ShellFolder" /s /e | findstr /i "ShellFolder" >nul && reg delete "%%k" /f
)

echo Finish

pause