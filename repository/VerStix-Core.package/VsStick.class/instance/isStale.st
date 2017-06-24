testing
isStale
	^self isConnecting and: [ self endpoint shouldLoopSending not]