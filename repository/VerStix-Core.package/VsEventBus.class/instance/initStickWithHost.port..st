initialize-release
initStickWithHost: host port: portNumber
	| url |
	url := 'async://', host asString.
	portNumber ifNotNil: [ url := url, ':', portNumber asString ].
	stick := VsStick targetUrl: url.
	stick dispatcher: self.
	stick onConnected: [ self recoverSubscriptions ] 