tests
testMethodBodyWithSquareBracketInsideLiteralArray2

	self 
		assertParse: '[^#( "note that we need to prefix ) with $, but this is not necessary for ] and }" '')]}'' $) ] } )]'
		rule: #methodBody
		equals: '^#( "note that we need to prefix ) with $, but this is not necessary for ] and }" '')]}'' $) ] } )'.