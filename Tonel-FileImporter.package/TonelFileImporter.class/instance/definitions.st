accessing
definitions
	"Answer the definitions of the file, parsed on first access. Changing this collection changes what load installs."

	^ definitions ifNil: [ definitions := self parseDefinitions ]