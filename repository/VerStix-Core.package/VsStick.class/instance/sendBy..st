sending-private
sendBy: aBlock
	| stream |
	stream := self newWriteStream.
	aBlock value: stream.
	self send: stream contents