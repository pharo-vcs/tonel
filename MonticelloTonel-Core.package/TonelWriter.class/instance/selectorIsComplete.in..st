private
selectorIsComplete: keywords in: aString
	keywords inject: 1 into: [ :start :key | | startOfKey |
		startOfKey := aString
			findString: key
			startingAt: start
			caseSensitive: true.
		startOfKey = 0 ifTrue: [ ^ false ].
		startOfKey + key size ].
	^ true