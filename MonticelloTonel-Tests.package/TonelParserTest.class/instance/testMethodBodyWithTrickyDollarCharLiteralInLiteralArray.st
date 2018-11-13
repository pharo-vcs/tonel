tests
testMethodBodyWithTrickyDollarCharLiteralInLiteralArray
	self 
        assertParse: '[^#( $$''please use space before this string)(''$$"please use space before this comment or avoid putting a ] in it"$$(this really is a literal array with a ] in it))]'
        rule: #methodBody
        equals: '^#( $$''please use space before this string)(''$$"please use space before this comment or avoid putting a ] in it"$$(this really is a literal array with a ] in it))'