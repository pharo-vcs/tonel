private
readUntil: aBlock
	[ stream atEnd ]
	whileFalse: [
		self readNext.
		aBlock value ifTrue: [ ^ self ] ]