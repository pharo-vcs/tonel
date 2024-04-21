tests
testWriteRobustMethodDefinitionOn

	| writer def stream |
	writer := self actualClass new.

	"To much closer"
	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector ^ ] 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents lines last
		equals: 'Object >> selector ! ^ ] 42!'.
	
	"To much opener"
	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector ^ [ 42'.
	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents lines last
		equals: 'Object >> selector ! ^ [ 42!'.

	"To much quotes"
	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector ^ " 42'.

	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents lines last
		equals: 'Object >> selector ! ^ " 42!'.
		
	"To much everything"
	stream := String new writeStream.
	def := MCMethodDefinition
		       className: #Object
		       classIsMeta: false
		       selector: #selector
		       category: 'accessing'
		       timeStamp: nil
		       source: 'selector ^ " '' #[ [ #( { ! !! 42 " '' ] ) }'.

	writer writeMethodDefinition: def on: stream.
	self
		assert: stream contents lines last
		equals: 'Object >> selector ! ^ " '' #[ [ #( { !! !!!! 42 " '' ] ) }!'.