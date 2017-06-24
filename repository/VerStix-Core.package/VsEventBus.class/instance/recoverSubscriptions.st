subscribing
recoverSubscriptions
	self handlers keysAndValuesDo: [ :addr :callback | self subscribe: addr callback: callback  ]