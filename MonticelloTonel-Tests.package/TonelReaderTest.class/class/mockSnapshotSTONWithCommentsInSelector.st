private
mockSnapshotSTONWithCommentsInSelector
	^ 'MCSnapshot {
	#definitions : [
		MCOrganizationDefinition {
			#categories : [
				#MonticelloMocks
			]
		},
		MCClassDefinition {
			#name : #MCMockASubclass,
			#superclassName : #MCMockClassA,
			#variables : OrderedCollection [
				MCInstanceVariableDefinition {
					#name : ''x''
				},
				MCClassVariableDefinition {
					#name : ''Y''
				}
			],
			#category : #MonticelloMocks,
			#type : #normal,
			#comment : '''',
			#commentStamp : '''',
			#traitComposition : ''{}'',
			#classTraitComposition : ''{}''
		},
		MCMethodDefinition {
			#classIsMeta : true,
			#source : ''block: aBlock "<BlockContext>" argsClass: argsProxyClass "<Alien class>" "^<Callback>"\r\t"Answer a Callback that evaluates aBlock and whose thunk should conform to the C calling convention."\r\t<legacy>\r\t^self new\r\t\tblock: aBlock\r\t\tthunk: FFICallbackThunk newCCall\r\t\targsProxyClass: argsProxyClass'',
			#category : #''as yet unclassified'',
			#selector : #''block:argsClass:'',
			#className : #MCMockASubclass
		}
	]
}'