writing
writeRegister: address headers: headers to: aStream
	self writeFrameOf: 'register' address: address replyAddress: nil headers: headers body: nil to: aStream