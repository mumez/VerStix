dispatching
defineReplyCallback: replyAddr to: vsMessage
	vsMessage
		replyCallback: [ :data :headers :cbk | 
			self
				send: data
				to: replyAddr
				headers: headers
				callback: cbk ]