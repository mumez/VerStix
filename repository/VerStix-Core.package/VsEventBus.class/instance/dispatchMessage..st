dispatching
dispatchMessage: vsMessage
	| replyAddr addr |
	(vsMessage isMemberOf: VsMessage ) ifFalse: [ ^self stick logger warn: 'Corrupt format message' ].
	addr := vsMessage address.
	replyAddr := vsMessage replyAddress.
	replyAddr ifNotNil: [ self defineReplyCallback: replyAddr to: vsMessage].
	
	self handlers at: addr ifPresent: [ :callback | ^ self dispatchSubscription: vsMessage callback: callback ].	
	self replyHandlers at: addr ifPresent: [ :callback | ^ self dispatchReply: vsMessage callback: callback ].
	vsMessage isError ifTrue: [ ^self dispatchError: vsMessage ].
	
	self dispatchUnknown: vsMessage