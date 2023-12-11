Set-Location $PSScriptRoot

$Env:PIP_DISABLE_PIP_VERSION_CHECK = 1

if (!(Test-Path -Path "venv")) {
    Write-Output  "创建python虚拟环境venv..."
    python -m venv venv
}
.\venv\Scripts\activate

Write-Output "安装依赖..."
pip install -U -r requirements-torch2.0+cu118.txt -i https://mirror.baidu.com/pypi/simple


Write-Output "安装完毕"
Read-Host | Out-Null ;
