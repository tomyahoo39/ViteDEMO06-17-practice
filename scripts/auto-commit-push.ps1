# requires -Version 5.1

param(
    [string]$Message = "",
    [string]$Remote = "origin",
    [switch]$SkipPush
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Write-Step {
    param([string]$Text)
    Write-Host "[auto-commit-push] $Text" -ForegroundColor Cyan
}

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = Resolve-Path (Join-Path $scriptRoot "..")
Set-Location $repoRoot

Write-Step "檢查 Git 狀態..."
$status = git status --short
if (-not $status) {
    Write-Host "目前沒有任何變更，無需提交。" -ForegroundColor Yellow
    exit 0
}

if ([string]::IsNullOrWhiteSpace($Message)) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $Message = "自動提交 $timestamp"
}

Write-Step "加入所有變更..."
git add .

Write-Step "建立提交: $Message"
git commit -m "$Message"

if ($SkipPush) {
    Write-Host "已完成提交，但未執行推送。" -ForegroundColor Yellow
    exit 0
}

$branch = git branch --show-current
if (-not $branch) {
    throw "無法取得目前分支名稱。"
}

Write-Step "推送到 $Remote/$branch..."
git push $Remote $branch

Write-Host "完成：已提交並推送最新變更。" -ForegroundColor Green
