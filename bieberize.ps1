
# Download CLASSIC Bieber
invoke-webrequest "https://cdn.britannica.com/70/145070-050-B810D3E1/Justin-Bieber.jpg" -OutFile "$HOME\Downloads\bieber.jpg"

# set Reg Key for current user desktop wallpaper
set-itemproperty -path "HKCU:Control Panel\Desktop" -name Wallpaper -value "$HOME\Downloads\bieber.jpg"

# Update user system parameters to avoid having to reboot to get new wallapper
rundll32.exe user32.dll, UpdatePerUserSystemParameters
