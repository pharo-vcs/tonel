utilities
readStreamFor: filePath do: aBlock
    ^ filePath asFileReference
        readStreamDo: [ :fileStream | 
            | stream |
            stream := ReadStream on: fileStream contents asString.
            stream reset.
            aBlock value: stream ]