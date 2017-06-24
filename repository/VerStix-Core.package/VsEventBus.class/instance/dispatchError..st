dispatching
dispatchError: vsMessage
	self stick logger error: 'Error message: ', vsMessage failureType asString, ':', vsMessage failureCode asString.
	self onMessageErrorBlock ifNotNil: [:block | block value: vsMessage ensureAsError]