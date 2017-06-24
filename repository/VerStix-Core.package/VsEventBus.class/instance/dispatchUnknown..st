dispatching
dispatchUnknown: vsMessage
	self stick logger error: 'Message unknown: ', vsMessage type asString