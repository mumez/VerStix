writing
writeSend: address replyAddress: replyAddress headers: headers body: body to: aStream
	self writeFrameOf: 'send' address: address replyAddress: replyAddress headers: headers body: body to: aStream