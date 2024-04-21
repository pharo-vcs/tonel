parsing
selector

	^ String streamContents: [ :out |
		  [ stream atEnd or: [ stream peek isSeparator not ] ] whileFalse: [ stream next ].
		  [ stream atEnd or: [ stream peek isSeparator ] ] whileFalse: [
			  out nextPut: stream next ].
		  [ stream atEnd or: [ '[!' includes: stream peek ] ] whileFalse: [
			  out nextPut: stream next ] ]