

---

# 🌤️ GO CLI Weather Forecast

## Description

**GO CLI Weather Forecast** is a command-line tool developed in Go that provides weather forecasts quickly and conveniently directly in your terminal. With simple commands, you can get detailed information about the current weather and forecasts for any location.

## Features

- 🌡️ **Current Weather**: Get current weather conditions.
- 🌍 **City Forecast**: Get the weather forecast for a specific city.
- 📊 **Detailed Information**: Includes data such as temperature, humidity, atmospheric pressure, and general conditions.

## Commands

- `sun`: Displays the current weather forecast for your default or configured location.
- `sun cityname`: Displays the weather forecast for the specified city (e.g., `sun sao` for São Paulo).

## Installation on Windows

### Step 1: Enable Scripts in PowerShell (if needed)

If you encounter an error when trying to run the installation script, you may need to enable script execution in PowerShell. Open PowerShell as an Administrator and execute the following command:

```powershell
Set-ExecutionPolicy RemoteSigned
```

This will allow the execution of local and signed scripts.

### Step 2: Install the CLI

1. **Clone the Repository**: First, clone the repository to your computer:

    ```powershell
    git clone https://github.com/your-username/GO-CLI-Weather-Forecast.git
    ```

2. **Navigate to the Project Directory**:

    ```powershell
    cd GO-CLI-Weather-Forecast
    ```

3. **Run the Installation Script**:

   Execute the provided installation script to set up the CLI:

    ```powershell
    .\install.ps1
    ```

   This script will configure and install the CLI on your system.

## Example Commands

- 🌦️ To get the current weather forecast:

    ```powershell
    sun
    ```

- 🌆 To get the weather forecast for São Paulo:

    ```powershell
    sun sao
    ```

- 🌐 To get the weather forecast for another city:

    ```powershell
    sun CityName
    ```

## Prerequisites

- 🖥️ [PowerShell](https://docs.microsoft.com/powershell/scripting/install/installing-powershell-core-on-windows) (recommended for Windows 10 or later)
- 🌧️ An account with a weather forecasting service (to obtain an API key if needed)
- 📀 [Go](https://go.dev/) Language Installed 

## Contributing

🤝 Feel free to use or edit the code for your use.

## Inspiration

📜 This project is inspired by [cdruc](https://www.youtube.com/watch?v=zPYjfgxYO7k)

---

