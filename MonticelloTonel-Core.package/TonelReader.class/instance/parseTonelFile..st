loading
parseTonelFile: file
	"In case of error we add the info of the file that produced the error for a better debugging experience."

	^ self 
		parseTonelFile: file 
		onError: [ :error | 
			error messageText: 'Error while parsing ' , file basename , ': ' , error messageText.
			error pass ]