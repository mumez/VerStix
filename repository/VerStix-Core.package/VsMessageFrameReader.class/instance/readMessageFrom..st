reading
readMessageFrom: aStream
	^VsMessage fromJson: (self readFrameFrom: aStream)