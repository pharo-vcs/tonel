private
toSTON: anObject
	^ String streamContents: [ :outStream |
		(TonelSTONWriter on: outStream)
			newLine: self newLine;
			nextPut: anObject ]