parsing
method
	| type selector |

	type := self untilIncluding: '>>'.
	selector := self cleanSelector: (self selector).
	type := type trimBoth substrings: ' '.
	type size = 1 ifTrue: [ type := type copyWith: nil ].
	^ {
		type.
		selector.
	}