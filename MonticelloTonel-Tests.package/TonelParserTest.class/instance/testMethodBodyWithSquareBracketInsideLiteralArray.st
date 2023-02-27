tests
testMethodBodyWithSquareBracketInsideLiteralArray
    self
        assertParse: '[ "What about this valid literal Array guys" ^#( [ )]'
        rule: #methodBody
        equals: ' "What about this valid literal Array guys" ^#( [ )'