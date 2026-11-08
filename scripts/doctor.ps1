# Verificacao nao destrutiva — PowerShell
$checks = @(
    @{ Name = 'Git'; Command = 'git'; Args = @('--version') },
    @{ Name = 'PHP'; Command = 'php'; Args = @('--version') },
    @{ Name = 'Composer'; Command = 'composer'; Args = @('--version') },
    @{ Name = 'Docker'; Command = 'docker'; Args = @('--version') },
    @{ Name = 'Docker Compose'; Command = 'docker'; Args = @('compose', 'version') },
    @{ Name = 'VS Code CLI'; Command = 'code'; Args = @('--version') }
)
foreach ($item in $checks) {
    Write-Host "`n[$($item.Name)]" -ForegroundColor Cyan
    if (Get-Command $item.Command -ErrorAction SilentlyContinue) {
        $exe = $item.Command
        $arguments = $item.Args
        & $exe @arguments 2>&1 | Select-Object -First 2
    } else {
        Write-Host 'Nao encontrado no PATH.' -ForegroundColor Yellow
    }
}
Write-Host "`nVerificacao concluida. Nada foi instalado."
