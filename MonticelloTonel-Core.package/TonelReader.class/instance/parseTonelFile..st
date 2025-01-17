loading
parseTonelFile: file
	"In case of error we add the info of the file that produced the error for a better debugging experience."

	^ [ file readStreamDo: [ :aStream | TonelParser parseStream: aStream ] ]
		  on: TonelParseError
		  do: [ :error |
			  error messageText: 'Error while parsing ' , file basename , ': ' , error messageText.
			  error pass ]