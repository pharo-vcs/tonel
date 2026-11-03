I file in a single Tonel `.st` file (a class, a trait or an extension), the Tonel counterpart of a chunk-format file-in. I give access to the code it contains as the Monticello definitions answered by `TonelParser`, so that they can be inspected, filtered and loaded, as a whole or one by one.

## Responsibility:

- I read a Tonel file (or a stream or a string) and parse it lazily with `TonelParser` into `MCDefinition`s.
- I let clients select and remove definitions before loading them.
- I load the definitions in one go with a `MCPackageLoader`, so that Monticello orders and validates them.

## Collaborators: 

- `TonelParser`: turns the Tonel text into `MCClassDefinition`, `MCTraitDefinition` and `MCMethodDefinition` instances.
- `MCPackageLoader`: installs the definitions in the image.
- `MCDefinition`: thanks to extension methods of my package, each definition answers the protocol of `ExternalChangesBrowser` (`contents`, `import`, `isMethodDeclaration`, ...), so that a changes browser can select and load them one by one. `TonelChangesBrowser` (package `Tonel-FileImporter-Browser`) does so.

## Public API and Key Messages

- `TonelFileImporter on: aFileReference`, `fileNamed: aString`, `readStream: aStream`, `fromString: aString` create an importer.
- `definitions` answers the parsed definitions (a mutable `OrderedCollection`).
- `classDefinitions`, `methodDefinitions`, `methodsOf: aClassName`, `removeMethod: aSelector of: aClassName` help selecting definitions.
- `load` installs all the definitions.
- Class side: `definitionsFromFileNamed:`, `definitionsFromStream:`, `loadFileNamed:`, and `isTonelFile: aFileReference` that recognizes a Tonel class, trait or extension file from its first characters.

```
(TonelFileImporter fileNamed: 'MyClass.class.st')
	removeMethod: #obsolete of: #MyClass;
	load
```

See `TonelFileImporter class >> #exampleClassFile` for a configured instance.

## Internal Representation

- `fileReference`: the file to read, when created with `on:` or `fileNamed:`.
- `contents`: the Tonel text, read from `fileReference` on first need or given directly.
- `definitions`: the parsed `MCDefinition`s, computed on first access and then kept, so that changes made to the collection are what `load` installs.

### Implementation Points

- A blank file answers no definitions; otherwise parse errors (`TonelParseError`) are not caught. `package.st` files are not supported: `TonelParser` does not parse them.
- Definitions are Monticello value objects: to change one, replace it in `definitions`.