I'm a parser for tonel files. 
I parse a class with the following format: 

Tonel spec
====

    [comment]
    type { typeDefinition }
    (
        [{ methodMetadata }]
        method [
            methodBody ] 
    )*


comment
---
"
comment string
"
is optional (but it should be there, in good design ;)

type
---
Class|Trait|Extension

typeDefinition
---
a STON file with class/trait/extension metadata

methodMetadata
---
a STON file with method metadata
is optional (but also, recommended)

method
---
method declaration as this: 

Class[ class] >> selector

methodBody 
---
the method body (we do not parse contents, that's class builder task)