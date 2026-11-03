loading
load
	"Install all the definitions in one go, so that Monticello orders them (classes before their methods) and validates them together."

	| loader |
	loader := MCPackageLoader new.
	self definitions do: [ :each | loader addDefinition: each ].
	loader load