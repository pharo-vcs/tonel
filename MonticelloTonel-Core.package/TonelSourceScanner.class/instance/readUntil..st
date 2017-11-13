private
readUntil: aBlock
	[ stream atEnd not ]
	whileTrue: [
		prevPrevChar := prevChar.
		prevChar := char.
		char := stream next. 
		result nextPut: char.
		(aBlock cull: char cull: prevChar cull: prevPrevChar) 
			ifTrue: [ ^ self ] ]