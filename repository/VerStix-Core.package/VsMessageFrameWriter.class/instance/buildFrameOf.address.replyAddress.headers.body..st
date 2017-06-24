building
buildFrameOf: type address: address replyAddress: replyAddress headers: headers body: body
	| dict |
	dict := Dictionary new.
	type ifNotNil: [ dict at: 'type' put: type].
	address ifNotNil: [ dict at: 'address' put: address].
	replyAddress ifNotNil: [ dict at: 'replyAddress' put: replyAddress].
	headers ifNotNil: [dict at: 'headers' put: headers].
	body ifNotNil: [ dict at: 'body' put: body].
	^dict