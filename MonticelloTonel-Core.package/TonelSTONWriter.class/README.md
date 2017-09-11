I'm a modified STON writer to make tonel metadata look as we want.

- it accept aliasses for classes, so I can say OrderedDictionary -> nil (then I do not have an extra information I do not want). Btw, tonel needs to use ordered dictionaries instead plain dictionaries because output needs to be deterministic, and we want to control the order of attributes we publish.
- if dictionary has just one element, it prints it in just one line, to have a more compact view.