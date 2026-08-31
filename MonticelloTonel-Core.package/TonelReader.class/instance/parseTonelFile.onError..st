loading
parseTonelFile: file onError: aBlock
	"In case of error we add the info of the file that produced the error for a better debugging experience."

	^ [ file readStreamDo: [ :aStream | TonelParser parseStream: aStream ] ]
		  on: TonelParseError, STONReaderError
		  do: [ :e | aBlock cull: e ]