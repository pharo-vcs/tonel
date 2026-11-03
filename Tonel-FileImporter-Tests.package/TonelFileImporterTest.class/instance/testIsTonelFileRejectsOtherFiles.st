tests - recognizing
testIsTonelFileRejectsOtherFiles

	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'Chunk.st' contents: self chunkFileContents)).
	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'package.st' contents: self packageFileContents)).
	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'Garbage.st' contents: self garbageFileContents)).
	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'Empty.st' contents: '')).
	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'Comment.st' contents: '"only a comment"')).
	self deny: (TonelFileImporter isTonelFile: (self fileNamed: 'Unclosed.st' contents: '"unclosed comment Class {')).
	self deny: (TonelFileImporter isTonelFile: fileSystem / 'Missing.st')