instance creation
host: host port: portnumber subscriptions: subscriptions
	| inst |
	inst := self new.
	subscriptions keysAndValuesDo: [:address :callback |
		inst reserveCallback: callback forSubscription: address.
	].
	inst host: host port: portnumber.
	^inst