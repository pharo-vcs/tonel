private
mockSnapshotSTONWithCommentsInSelector
	^ 'MCSnapshot {
	#definitions : [
		MCOrganizationDefinition {
			#packageName : #''MonticelloTonel-Tests-Mocks''
		},
		MCClassDefinition {
			#name : #MTMockASubclass,
			#superclassName : #MTMockClassA,
			#variables : OrderedCollection [
				MCInstanceVariableDefinition {
					#name : ''x''
				},
				MCClassVariableDefinition {
					#name : ''Y''
				}
			],
			#packageName : #''MonticelloTonel-Tests-Mocks'',
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
			#className : #MTMockASubclass
		}
	]
}'