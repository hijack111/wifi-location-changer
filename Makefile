install:
	cp locationchanger /usr/local/bin
	cp LocationChanger.plist ~/Library/LaunchAgents/
	launchctl list locationchanger > /dev/null && \
	launchctl unload ~/Library/LaunchAgents/LocationChanger.plist
	launchctl load ~/Library/LaunchAgents/LocationChanger.plist
