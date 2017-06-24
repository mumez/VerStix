subscribing
unsubscribe: address headers: headers
	self stick unsubscribe: address headers: (self mergeHeaders: headers).
	self unregisterHandlerAt: address 