sending
send: aDictionary to: address headers: headers callback: callback
	| replyAddress |
	replyAddress := callback ifNil: [ nil ] ifNotNil: [ self newReplyAddress ].
	self registerReplyHandler: callback at: replyAddress.
	self stick sendTo: address replyTo: replyAddress 
		headers: (self mergeHeaders: headers)
		body: (self portableUtil asDictionary: aDictionary)