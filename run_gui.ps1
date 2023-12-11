$mutil_gpu=0

Set-Location $PSScriptRoot
.\venv\Scripts\activate

$Env:HF_HOME = "./huggingface"
$Env:PYTHONPATH = $PSScriptRoot

$laungh_script = "app"


python.exe "$laungh_script.py"