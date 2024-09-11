# Define GOOS and GOARCH based on the current system
$env:GOOS = "windows"
$env:GOARCH = "amd64"

# Function to compile the program
Function Compile {
    Write-Host "Compiling for $($env:GOOS)-$($env:GOARCH)"

    # Verifica se o comando 'go' está disponível
    if (-not (Get-Command go -ErrorAction SilentlyContinue)) {
        Write-Host "Erro: O comando 'go' não foi encontrado. Verifique sua instalação do Go." -ForegroundColor Red
        return
    }

    # Compila o programa
    go build -o sun.exe .

    # Verifica se o binário foi criado
    if (-not (Test-Path "sun.exe")) {
        Write-Host "Erro: Falha ao criar o binário 'sun.exe'." -ForegroundColor Red
        return
    }

    Write-Host "Compilação concluída."
}

# Function to install the compiled binary for Windows
Function Install-Windows {
    Write-Host "Installing for Windows..."

    # Check if a specific directory for binaries exists, if not create it
    $binDir = "$env:USERPROFILE\bin"
    If (!(Test-Path $binDir)) {
        New-Item -Path $binDir -ItemType Directory
    }

    # Move the binary
    Move-Item -Path sun.exe -Destination "$binDir\sun.exe" -Force

    # Add the directory to the system PATH permanently
    [System.Environment]::SetEnvironmentVariable("PATH", "$env:Path;$binDir", [System.EnvironmentVariableTarget]::Machine)

    Write-Host "Installation complete."
}

# Call the functions
Compile
Install-Windows
