subscribing
subscribe: address callback: callback headers: headers
	self stick subscribe: address headers: (self mergeHeaders: headers).
	self registerHandler: callback at: address.
	