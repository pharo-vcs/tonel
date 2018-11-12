tests
testLiteralDollarCharacterAtEndOfLiteralArray
    self 
        assertParse: '[^#($$)]'
        rule: #methodBody
        equals: '^#($$)'.