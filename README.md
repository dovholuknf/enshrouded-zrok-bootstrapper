This repository is meant to help people use `zrok` to run [Enshrouded](https://enshrouded.com/).

### Prerequisites
* follow any popular guide on downloading/installing a [Enshrouded Dedicated Server](https://www.eurogamer.net/enshrouded-how-to-get-set-up-a-dedicated-server-create-join-9410) through Steam, but don't bother with opening your firewall/forwarding ports
* download [the latest zrok for windows](https://github.com/openziti/zrok/releases/latest) (zrok_0.4.26_windows_amd64.tar.gz as of apr 1 2024). YES - even the clients need to download `zrok`
* use windows explorer (win11+) or 7zip or something to ungzip and untar the download
* put the zrok.exe somewhere you can find, for example `c:\zrok\zrok.exe`
* invite yourself to zrok using: `zrok invite` (see the [official doc for help](https://docs.zrok.io/docs/getting-started/#generating-an-invitation))

### On the Enshrouded server:
* `zrok enable` the server. see [Enabling Your zrok Environment](https://docs.zrok.io/docs/getting-started/#enabling-your-zrok-environment)
* download: [the start-server script](https://raw.githubusercontent.com/dovholuknf/enshrouded-zrok-bootstrapper/main/start-server.ps1)
* edit the script and update the PATH_TO_ZROK with the location of your zrok.exe
* run `start-server.ps1` (the script is not signed, research this if you don't understand it):

      powershell.exe -ExecutionPolicy Bypass -File start-server.ps1

### On the Enshrouded clients:
* `zrok enable` the client. see [Enabling Your zrok Environment](https://docs.zrok.io/docs/getting-started/#enabling-your-zrok-environment)
* download [the start-client script](https://raw.githubusercontent.com/dovholuknf/palworld-zrok-bootstrapper/main/start-client.ps1)
* update the `start-client.ps1` script with the path to zrok
* run `start-client.ps1` (the script is not signed, research this if you don't understand it):

	  powershell.exe -ExecutionPolicy Bypass -File start-client.ps1
