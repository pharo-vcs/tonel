*MonticelloTonel-Compatibility
withInternalLineEndings
	"Answer a new instance where all occurrences of CRLF and LF are substituted with CR. Pharo internally uses CR for carriage return."

	^ self withLineEndings: String cr