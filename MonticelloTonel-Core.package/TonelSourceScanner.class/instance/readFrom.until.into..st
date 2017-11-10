private
readFrom: aStream until: aBlock into: intoBlock 
	| result count prevCh ch |
	
	result := String new writeStream.
	count := 1.
	ch := nil.
	[ aStream atEnd not ]
	whileTrue: [
		prevCh := ch.
		ch := aStream next. 
		result nextPut: ch.
		(aBlock cull: ch cull: prevCh) 
			ifTrue: [ ^ intoBlock value: result contents ] ].
