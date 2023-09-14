accessing
isLegacyFormat
	"In the version 3 of the Tonel format we are exporting packages and tags properties independently of the category property.
	By default we are still exporting the legacy category property but here is a setting to not export legacy properties."

	^ IsLegacyFormat ifNil: [ IsLegacyFormat := true ]