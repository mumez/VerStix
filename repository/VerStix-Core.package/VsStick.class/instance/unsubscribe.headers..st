sending
unsubscribe: address headers: headers
	self sendBy: [:stream | self messageWriter writeUnregister: address headers: headers to: stream]