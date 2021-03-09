sudo nano /etc/systemd/logind.conf

find line with HandleLidSwitch
HandleLidSwitch=lock – lock when lid closed.
HandleLidSwitch=ignore – do nothing.
HandleLidSwitch=poweroff – shutdown.
HandleLidSwitch=hibernate – hibernate