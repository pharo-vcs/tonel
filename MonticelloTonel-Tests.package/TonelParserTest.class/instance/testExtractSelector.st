tests
testExtractSelector
	| parser |

	parser := TonelParser new.

	self assert: (parser extractSelector: 'unary') equals: #unary.
	self assert: (parser extractSelector: '+ something') equals: #+.
	self assert: (parser extractSelector: '==> other') equals: #==>.
	self
		assert: (parser extractSelector: 'some: arg1 keyword: arg2 selector: arg3')
		equals: #some:keyword:selector:.
	self
		assert: (parser extractSelector: 'some: 	arg1 keyword:arg2 selector: arg3')
		equals: #some:keyword:selector:.
	self
		assert: (parser extractSelector: 'some: arg1
keyword: arg2
selector: arg3')
		equals: #some:keyword:selector: