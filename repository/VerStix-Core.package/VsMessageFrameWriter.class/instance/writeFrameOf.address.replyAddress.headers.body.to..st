writing-basic
writeFrameOf: type address: address replyAddress: replyAddress headers: headers body: body to: aStream
	| dict jsonBytes |
	dict := self buildFrameOf: type address: address replyAddress: replyAddress headers: headers body: body.
	jsonBytes := self portableUtil jsonBytesFrom: dict.
	self portableUtil writeUInt32: jsonBytes size to: aStream.
	aStream nextPutAll: jsonBytes