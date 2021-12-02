class initialization
initialize

	InitializationOrder := InitializationOrder
		                       ifNil: [ "let the test fail" -100 ]
		                       ifNotNil: [ InitializationOrder + 1 ]