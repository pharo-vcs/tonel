tests
testMaybeReturnADollar
    self
        assertParse: '[self testSomething ifTrue: [^$$]]'
        rule: #methodBody
        equals: 'self testSomething ifTrue: [^$$]'