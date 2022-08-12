# How to think

## Listeners

### Start

* Determine the type of the task
  * [Easy](#easy-task): just do it
  * [Complex](#complex-task): (incomplete)
  * Other: [write a plan](#write-a-plan)

### Write a plan

* [Write a name](#write-a-name)
* [Write a type for the name](#write-a-type-for-the-name)
* [Write a value for the name](#write-a-value-for-the-name)
  * Notes
    * The value is a [constructive model](#constructive-model) of a real thing that you want
* Check the value syntactically
  * On error: fix it (native)
* Check the value semantically
  * On error:
    * [Refine the type](#refine-the-type)
    * [Write a new value](#write-a-value-for-the-name)

Questions:

* Are we looking for an instance of a typeclass?
  * We're looking for an object whose model implements the interface
    * Examples
      * We're looking for a "throwable", not a "rock"
      * We're looking for an "exchangeable", not "money"
      * We're looking for "someone whom we can have sex with & live well & have children", not "human"

### Write a name

* Try each
  * Imagine a name (timeout: 5 minutes)
  * Find a name (timeout: 5 minutes)
  * [Generate a memorable name](#generate-a-memorable-name) (timeout: 1 minute)

Notes:

* The name is most often a name of the type

### Write a type for the name

(incomplete)

* Try each
  * Imagine types (timeout: 10 minutes)
  * [Get samples](#get-samples) -> Infer types from samples
* [Choose a type](#choose-a-type) from returned types

Notes:

* Here, "type" is a syntactic type
* Most often, the type is a [quotient record]  

### Write a value for the name

(incomplete)

* Try each
  * Imagine a value (timeout: 10 minutes)
  * Use an [empty value](#empty-value)
  * Use a [default value](#default-value)

### Refine the type

Inputs:

* Type
* [Discomfort](#discomfort)

* Get the relation that doesn't hold (input: discomfort)
* Add relation to the current type as another condition
  * If necessary, convert the type to the [quotient record](#quotient-record)

### Choose a type

* [Write a plan](#write-a-plan) where:
  * Name: `get${ucfirst(name)}Type`
  * Type: `Chooser<Type>`

### Get samples

Inputs:

* Length
* Existing samples

Outputs:

* Samples
* [Finality](#final-x) of samples
* Proof that samples are prefixed by existing samples  

* While has next
* [Get sample sources](#get-sample-sources) (timeout: 10 minutes)
* Get sorter for sample source (timeout: 10 minutes)
* Get sorted sample sources
* For each sample source:
  * Get next sample
  * If next sample is in existing samples: continue
  * Append next sample to existing samples

### Get sample sources

Type: (native)

### Generate a memorable name

Meaning: use a [random word generator](#random-word-generator)
Type: (native)

### Try each

Meaning: try each method, return the first value that is not empty
Type: (native)

### On task changed

1. Create a new file
2. [Start](#start) a new task

Notes:

* It's better not to delete the previous file, because you might circle back to it
* It's better to use "pointer naming":
  * Rename the first target to "$name" + "1"
  * Rename the second target to "$name" + "2"
  * Create a naming file with contents:
    * $name = unquote("$name" + "1") # or "2" if you think that definition 2 is better

## Definitions

### Easy task

(incomplete)

Meaning: a task that matches the following conditions:

* Has an obvious plan
* Does not have negative returns
* And one of:
  * Is physical
  * [Is ancient](#ancient)

Type: (native)

### Complex task

(incomplete)

Meaning: [Complex task meaning](#complex-task-meaning)

### Constructive model

Meaning: a plan for constructing the object
Type: an expression where each sub-expression is a constructor

### Random word generator

Meaning: a generator of gibberish words that look like real words
Type: a function that returns a [memorable string](#memorable-string)

Examples:

* <https://feldarkrealms.com/>

### Memorable string

Meaning: a string that is easy to memorize (must look like a word, may not be a real word)
Type: string

Examples:

* Shonfinkel
* Amagus
* Sixing

Counter-examples:

* 123
* #@#!

### Ancient

Meaning: Something that has been experienced by many of your ancestors.
Type: (native)

Notes:

* Ancient tasks are easier than modern tasks because you can rely on intuition

Examples:

* Find a partner (all of your ancestors have completed this task - you are the proof)

Counter-examples:

* Find a trading strategy for a stock market (your ancestors didn't trade on a stock market)

### Quotient record

Meaning: a record with a single "main" field & conditions

### Empty value

Meaning: a value that doesn't change the second argument in two-argument functions

Type: (same type as input type)

Examples:

* `0` (for natural number addition)
* `1` (for natural number multiplication)
* `""` (empty string) (for string concatenation)
* `[]` (empty list) (for list concatenation)
* `id` (identity function) (for function composition)

Counter-examples:

* `10` (for natural number addition)
* `"abc"` (for string concatenation)
* `[1, 2, 3]` (for list concatenation)

Notes:

* The "emptiness" of the value depends on operation (e.g. 1 is empty for multiplication, but is not empty for addition)
* Also known as "identity element" or "identity value"

### Default value

Meaning: a value that is a "common sense" solution for a specific problem by a specific person.

Examples:

* Restaurant is a default place for a date
* Red Square is a default meeting place in Moscow
* Capital is a default city in a country
* Telegram is a default messenger in crypto in 2022

Notes:

* It's subjective

### Final X

Meaning: X can't be updated (see examples)

Type: (X : Type) : (op : BasicOperation) -> op(X) = X

Examples:

* Samples are final if it's impossible to find more samples
* Type is final if you are sure that it completely represents the actual objects

Counter-examples:

* Samples from Google are not final if you only looked at the first page of many pages

### Sample

(incomplete)

Meaning: [an object](#object) that has a [symbolic model](#symbolic-model) described by a specific type

### Object

Meaning: something that does not change under observation (can be measured multiple times with a small deviation in results)

Type: (native)

Examples:

* A car
* A process of burning
* A file on a hard drive

### Symbolic model

Meaning: [a model](#model) that is made of symbols

* Doesn't share any objective properties with [an object](#object)
* Does share subjective properties with [an object](#object) according to agreement between observers (people)

Examples:

* "3 meters" (this string doesn't have the same length as a 3-meter-long cable, but it "means" the same length according to the agreement between people)
* "next(next(next(zero)))" (this string is equivalent to number 3 in constructive mathematics. It doesn't have the same length as a 3-meter-long cable, and doesn't even look like 3, but it "means" 3 according to the agreement between mathematicians)

### Physical model

Meaning: [a model](#model) that is made of another object (shares some objective properties with [an object](#object))

Examples:

* A ruler (has the same length as the object being measured, but doesn't have the same weight, which makes it easier to move)

### Model

Meaning: an object that shares some properties with a target object (the one being modelled)

Examples:

* [Physical model](#physical-model)
* [Symbolic model](#symbolic-model)

### Discomfort

Meaning: a state of being dissatisfied with something

Type: (native)

Examples:

* Discomfort from "1 = 0"
* Discomfort from eye strain

### NaturalProblem

NaturalProblem is a natural language expression that matches the following criteria:

* Is well-formed according to the syntactic rules
* Matches pattern: "I need $something that matches $filters" where
  * "$something" is the name of the type (e.g. a car, a person, a function)
  * "$filters" is a list of boolean expressions on "$something"

Examples:

* I need a car
* I need a function that returns a list of square roots

## Drafts

### Complex task meaning

Type: filters

Inclusion options:

* Has never been completed by people before
* It is unknown whether it has been completed by people before
  * Examples
    * Trading strategy
* Has a skewed probability distribution
  * Meaning: a small number of winners gets positive returns, a large number of losers gets negative or zero returns
  * Examples
    * Olympic competitions
    * Startups
* Has an undefined completion time
  * Questions
    * Add a new type of task ("research")?

Notes:

* `Inductive SystemNaturality := synthetic | natural`
  * Synthetic systems are made by people - hence, they can be deconstructed down to their natural parts
  * Natural systems aren't made by people - hence, they may or may not be deconstructed

```gallina

CHC = [Curry-Howard correspondence](https://en.wikipedia.org/wiki/Curry%E2%80%93Howard_correspondence)

CHC -> Thinking is programming

Programming =
| Writing types
| Writing values

Writing types ~ Posing a task
Writing values ~ Solving a task

Human operation :=
| Atomic operation
| Atomizable operation // can be easily decomposed into atomic operations
| Non-atomic operation

Difficulty := 
| Easy
| Hard

HoD : Human operation -> Difficulty := match
| Non-atomic operation => Hard
| _ => Easy
```

* Sometimes we can't formulate the problem (can't write the type)
  * Synonyms
    * Sometimes we can't specify the task
    * Sometimes we don't know exactly what we're looking for
* Sometimes we can't find a solution (can't write an expression that satisfies the type)
* Sometimes we have multiple formulations of the task
* Sometimes wet have multiple solution
* Sometimes we don't know how to express what we're looking for in a specific language (solved by studying the language)
  * Synonyms
    * Sometimes we don't know the tactics applicable to the current problem

Three types of problems:

* E-problem - expression problem (don't know how to express / don't know the tactics / don't know available tools)
* Z-problem - zero problem (don't know how to formulate the problem / don't know how to formulate the solution)
* M-problem - many problem (don't know how to choose a problem / don't know how to choose a solution)

Notes:

* All problems are reducible to Z-problem:
  * M-problem is reducible to Z-problem (find a path from multiple options to a single option)
  * E-problem is reducible to Z-problem (find an expression in target : Language that has the same meaning as in source : Language)
* E-problem has partial solutions (ordered by complexity ascending):
  * Read the language docs (including the full grammar)
  * Read the language standard library
  * Read other libraries
  * Ask a friend
  * Ask a stranger
  * Implement your own language
* E-problem can be solved by translation if the person can express the problem in a different language

Notes 2:

* There are two kinds of errors:
  * Syntactic errors (computer complains)
  * Semantic errors (person complains)
* Syntactic errors must be solved by changing the code
* Semantic errors must be solved by transforming them into syntactic ones (writing a test) (specifying an equality that doesn't hold)
  * May require metaprogramming

Notes 3:

* It's better to imagine "default" solutions, then ask whether it's worth your time to look for better solutions

Notes 4:

* If you have a many-problem, find a sorter
  * If you can't find a sorter, take the first option
    * If you don't like the first option, add a condition on the type (~ formalize why you don't like the first option)
      * If you can't add a condition on the type, take the first option (realize that your inability to add a condition is a proof that the first option is good enough)

Notes 5 (timing):

* We want to get a "satisfying" value in the shortest possible time
* Basic operations take a different amount of time depending on inputs
  * Examples
    * "imagine" may be faster than "find" (for complex queries)
    * "find" may be faster than "imagine" (for simple queries)
    * "ask" may be faster than "imagine"
* It looks like every basic operation requires a timeout (otherwise we can get )

Notes 6 (synonyms):

* make
  * Meaning: do it yourself
  * Synonyms:
    * imagine (for creative mental tasks)
    * recall (for non-creative mental tasks)
    * design
    * produce
    * construct
* find
  * Meaning: find in the world
  * Synonyms:
    * google search (find from inanimate)
    * find-in-page (find from inanimate)
    * ask (find from humans)

* "make" is faster for creative tasks
* "find" is faster for non-creative tasks

## Goal

Options:

* A computer program that takes a path to file & outputs a task
* A human program
  * Must be human-readable (-> Must be written in English)

Decision:

* Write a human program
  * If possible, write Coq terms immediately
* Write a computer program using the human program as input

## TODO

* Merge with [How to make decisions](HowToMakeDecisions.md)
* Merge with [Decimaker](Decimaker.md)
