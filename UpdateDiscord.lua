local discordUpdateUrl = "https://discord.com/api/download?platform=linux&format=tar.gz"
local outputFile = "discord.tar.gz"
local curl_command = string.format(
    'curl -L -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36" -o "%s" "%s"',
    outputFile,
    discordUpdateUrl
)

os.execute("mkdir discord")
os.execute(curl_command)
os.execute("tar -xzf ./" .. outputFile .. " -C ./discord")
os.execute("sudo mv ./discord /opt/discord/")

-- Cleanup 
os.execute("rm " .. outputFile)

