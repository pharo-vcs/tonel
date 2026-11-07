I am the abstract superclass of the `TonelFileImporter` tests. I hold an in-memory file system and the contents of the Tonel fixture files, each one defined by a method.

## Responsibility:

- I create a `FileSystem memory` and write fixture files into it.
- I define the Tonel (and non-Tonel) fixture contents as methods in the `fixtures` protocol.
- I name the test-data package and classes, so that subclasses can clean them.

## Collaborators: 

- `FileSystem`: the memory file system holding the fixture files.
- `TonelFileImporter`: the tool under test.

## Public API and Key Messages

- `fileNamed: aString contents: aContentsString` writes a fixture file and answers its reference.
- `classFile`, `traitFile`, `extensionFile` answer references on the main fixture files.

Subclasses are concrete test cases, for example `TonelFileImporterTest`.

## Internal Representation

- `fileSystem`: a memory `FileSystem` created in `setUp`.