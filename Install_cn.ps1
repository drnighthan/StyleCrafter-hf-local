Set-Location $PSScriptRoot

$Env:PIP_DISABLE_PIP_VERSION_CHECK = 1

if (!(Test-Path -Path "venv")) {
    Write-Output  "����python���⻷��venv..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "��װ����..."
pip install -U -r requirements-torch2.0+cu118.txt -i https://mirror.baidu.com/pypi/simple


Write-Output "��װ���"
Read-Host | Out-Null ;
