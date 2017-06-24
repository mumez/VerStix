private
registerReplyHandler: callback at: replyAddress
	replyAddress ifNil: [ ^self ].
	self replyHandlers at: replyAddress put: callback