scanning
scanForLiteralArrayIfMatch: aBlock
	| literalCount |

	self isStartingLiteralArray ifFalse: [ ^ self ]. 
	literalCount := 1.
	self readUntil: [  
		char = $( ifTrue: [ literalCount := literalCount + 1 ].
		char = $) ifTrue: [ literalCount := literalCount - 1 ].
		literalCount = 0 ].
	aBlock value