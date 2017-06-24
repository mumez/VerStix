private
registerHandler: callback at: address
	address ifNil: [ ^self ].
	self handlers at: address put: callback