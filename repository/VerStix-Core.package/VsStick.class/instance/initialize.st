initialize-release
initialize
	super initialize.
	self onReceive: [ :stream | self readMessageFrom: stream].
	self onData: [ :message | self dispatcher dispatchMessage: message].
	self beSticky