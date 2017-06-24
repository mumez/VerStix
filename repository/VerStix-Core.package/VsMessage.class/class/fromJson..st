instance creation
fromJson: jsonObject
	| inst |
	inst := self new.
	inst type: (jsonObject at: 'type' ifAbsent: []).
	inst address: (jsonObject at: 'address' ifAbsent: []).
	inst replyAddress: (jsonObject at: 'replyAddress' ifAbsent: []).
	inst headers: (jsonObject at: 'headers' ifAbsent: []).
	inst body: (jsonObject at: 'body' ifAbsent: []).
	inst failureCode:  (jsonObject at: 'failureCode' ifAbsent: []).
	inst failureType:  (jsonObject at: 'failureType' ifAbsent: []).
	inst message: (jsonObject at: 'message' ifAbsent: []).
	^inst