## Day 1
### Find
* Some Io Example problems.
https://gist.github.com/jezen/7972975

* Io Community that will answer questions
Mailing list
https://groups.yahoo.com/neo/groups/iolanguage/info


* Style guide with Io Idioms
http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

### Answer
* Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code
```
1 + "1"
"1" + 1
```

Throws:

```
  Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
  ---------
  message '+' in 'Command Line' on line 1
```

It's a strongly typed language


* Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code
0 is true
```
if (0, "true" println, "false" println)
==> true
```

an empty string is true
```
if ("", "true" println, "false" println)
==> true
```

nil is false
```
if (nil, "true" println, "false" println)
==> false
```

* How can you tell what slots a prototype supports?
```
Sequence proto
```

* What is the diference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?

```
=       updateSlot  Assigns value to slot if it exists, otherwise raises exception
:=      setSlot     Creates slot, assigns value
::=     newSlot     Creates slot, creates setter, assigns value
```

