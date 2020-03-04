* open _wpa_supplicant.conf_
     ~~~~
     #!/bin/bash
     sudo nano /etc/wpa_supplicant/wpa_supplicant.conf
     ~~~~

* add these lines:

     ~~~~~
     network={
      ssid="my ESSID"
      psk="my password"
     }
     ~~~~~