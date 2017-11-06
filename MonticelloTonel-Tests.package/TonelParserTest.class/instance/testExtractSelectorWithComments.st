tests
testExtractSelectorWithComments
	| parser |
	
	parser := TonelParser new.
	
	self assert: (parser extractSelector: 'unary "comment"') equals: #unary.
	self assert: (parser extractSelector: '+ "comment" something') equals: #+.
	self assert: (parser extractSelector: '==> "comment" other') equals: #==>.
	self 
		assert: (parser extractSelector: 'some: arg1 "comment"  keyword: arg2  "comment" selector: arg3 "comment"') 
		equals: #some:keyword:selector:.
	self 
		assert: (parser extractSelector: 'some: 	arg1 "comment" keyword:arg2 selector: arg3') 
		equals: #some:keyword:selector:.
	self 
		assert: (parser extractSelector: 'some: arg1 "comment"
keyword: arg2 "comment"
selector: arg3') 
		equals: #some:keyword:selector:.