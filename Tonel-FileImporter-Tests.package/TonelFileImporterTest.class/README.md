I test how `TonelFileImporter` reads Tonel files into Monticello definitions, and how those definitions answer the protocol used by `TonelChangesBrowser`. None of my tests changes the image: loading is tested by `TonelFileImporterLoadTest`.

## Responsibility:

- I check the definitions parsed from class, trait and extension files written in a memory file system.
- I check the selection helpers (`classDefinitions`, `methodDefinitions`, `methodsOf:`, `removeMethod:of:`) and the recognition of Tonel files (`isTonelFile:`).
- I check the browser protocol answered by `MCDefinition`s (`contents`, `isMethodDeclaration`, `methodSelector`, ...).

## Collaborators: 

- `TonelFileImporter`: the tool under test.
- The fixture methods inherited from `TonelFileImporterAbstractTest`.

## Public API and Key Messages

- Run me with the test runner, or `TonelFileImporterTest suite run`.