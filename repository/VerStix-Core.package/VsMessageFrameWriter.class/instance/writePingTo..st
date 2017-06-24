writing
writePingTo: aStream
	self writeFrameOf: 'ping' address: nil replyAddress: nil headers: nil body: nil to: aStream