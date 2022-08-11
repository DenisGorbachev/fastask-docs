# Drafts

## Instructions

### Make a product

1. [Write the name](#write-the-name).
2. [Write a generator of examples](#write-a-generator-of-examples).
3. [Make a plan](#make-a-plan).
4. [Execute the plan](#execute-the-plan).

Tests:

* Must not allow to imagine the tests
  * Rationale
    * If the user writes the initial tests before seeing examples, he can add the tests that are impossible to pass.
      * Generally: it is incorrect to look for an object based on non-constructive tests
      * It is possible to discover a new object, but futile to look for a specific object based on non-constructive tests

* Must allow to construct the tests from examples

### Write the name

1. Imagine a name.
2. If name is null
   1. Imagine a type name
   2. If type name is null
      1. Use a name generator
         1. <https://namelix.com/>
   3. Imagine an adjective that describes the product
   4. Return `${adjective}${type}`

Examples:

* Zenbox
* Playbook
* Coliquidity
* BluePill
* MyBusiness

Counterexamples:

* 123
* !@#
* _

### Write tests for object

Description of algorithm:

* Continue imagining new tests until timeout
* Reset the timer after writing down a new test.

Algorithm:

1. [Execute a sequential generation](#execute-a-sequential-generation) with arguments:
   1. Generator:
      1. Imagine a new [pretest](#pretest)
      2. If this pretest is also a [test](#test), then add it to "Tests" list, else add it to "Pretests" list
   2. Condition:
      1. Imagine whether there should be more tests
   3. Timeout: 5 minutes
2. Convert [pretests](#pretest) into [tests](#test)

### Write a generator of examples

1. Imagine [a generator](#generator)
   1. Write tests:
      1. Imagine a [locator type](#locator) of example

Examples:

* Get a Play-to-Earn game
  * Open <https://coinmarketcap.com/view/play-to-earn/>
  * For each row in table:
    * Yield a structure:
      * Name
      * Website
* Get agreements
  * $Dropbox = Locate your Dropbox folder
  * $Agreements = Open $Dropbox/Docs/Agreements
  * For each file in $Agreements
    * Yield a structure
      * Path
      * Content

### Make a plan

1. For each example in generator:
   1. Convert example to [a blueprint](#blueprint).
   1. Extract schema from examples.
      1. Extract tests from examples.
   1. Generate a minimal model by schema.

### Execute the plan

### Get a type

1. Find a source of the products.
1. If you can't find a source - then this is your product.
1. ...
1. Come up with a list of different models for your product

* Examples
  * Stone -> Weight
  * Stone -> Volume
  * Stone -> Density
  * Stone -> Type
  * Stone -> List of Atoms
  * Stone -> List of Molecules

### Get a batch size

Notes:

* Depends on the probability distribution of payouts
  * Depends on the presence of negative payouts
  * Depends on the availability of a retry mechanism
* Depends on the probability of a mistake
* Depends on the estimated time of creating a single blueprint

## Definitions

### Model

#### How to distinguish between objects and models

Theoretically, every object can be used as a model. For example, you can use a parrot to measure length ("The length of a python is 38 parrots"). However, in practice, some objects are more useful as models. For example, a ruler is more useful than a parrot because a ruler changes much slower.

### Blueprint

1:1 model of the object.

Examples:

* Blueprint of a car:
  * A toy model
* Blueprint of a train system:
  * A toy train system
* Blueprint of a website:
  * Domain
  * Pages
    * Path
    * Content
* Blueprint of an article:
  * Title
  * Text
    * Introduction
    * Arguments
    * Conclusion

### Constructive model

A model that is expressed in the syntax of a constructive type theory (using constants & function calls).

A constructive model is equivalent to an instruction - it shows how to "construct" a real object.

### Model example

A real object that is represented by the model.

### Type

A model of a model.

### Archetype

Archetype is the most fundamental type of model. There are only two archetypes:

* [Point](#point) (aka value)
* [Path](#path) (aka function)

### Point

A model that represents a static object.

Examples:

* A butterfly drawing.
* A weight of a person.
* A row in a spreadsheet.

Counterexamples:

* A butterfly itself (it's not a model - but see a note)
* A dance movement (it's [a path](#path))

### Path

A model that represents a process (a change).

Examples:

* A writing process.
* A morphism from a pupa into a butterfly.
* A path on the map.
* A flow of water (please note: a molecule of water is modelled as a point, but the process of moving in the space-time is modelled as a path).

Notes:

* A change can be a transition between two states of the same object.
  * In fact, there are no "same" objects. Everything changes, so the two states of the "same" object are not equal. Instead, they can be "equivalent" if they have the same model.
    * Examples:
      * Take a fruit & dry it. The fruit will have a different color, but it will still have a similar amount of sugar.
        * By color: a normal fruit is not equivalent to a dry fruit.
        * By sugar content: a normal fruit is equivalent to a dry fruit.

### Test

A boolean predicate on a model.

Tests:

* Must start with the word "Must"
* Must be objective

Examples:

* "Must weigh 5 kgs"
* "Must contain a letter 'A'"
* "Must be red"

Counterexamples:

* "Must be heavy"
* "Must be good"
* "Must be pretty"

### Pretest

An expression that describes an object.

Notes:

* Pretests are useful for writing down "hazy thoughts".
* Pretests should be turned into [tests](#test) (which are more specific).
* Pretests may be proper [tests](#test) (if you can do it - try to write proper tests instead of pretests).
* All pretests must be converted to proper [tests](#test) before the implementation.

### Generator

A function that returns a list of samplers.

### Sampler

A function that returns a list of objects.

### Locator

A string that allows to get an object.

Examples:

* "https://en.wikipedia.org/wiki/Wikipedia"
* "https://www.google.com/"
* "C:\Windows\System32"
* "/home/starfall/workspace/zenbox"
* "Go to the first crossroads, then turn right"

Counterexamples:

* 42 (unless it's a number of a specific location - depends on the context)
* #@$@#
* A cellphone (unless it refers to a specific cellphone in a specific context)

Notes:

* Theoretically, any string can be a locator (if there is a defined way to get the object using that locator)
* Practically, only strings in specific formats are used as locators
  * URL (which is an acronym for "Uniform Resource Locator")
  * Filesystem path
  * Navigation directions

### Locator type

A string refinement type that allows to construct a locator.

Examples:

* URL
* Filesystem path

Counterexamples:

* Number (unless used as a locator in a specific context)

## Generic built-in algorithms

### Execute a sequential generation

Inputs:

* `generator` - function that generates new elements on each invocation
* `condition` - function that checks whether to continue or stop the generation (if timeout is not reached)
* `timeout` - time interval after which to stop the generation

Outputs:

* `elements` - a list of generated elements (results of generator invocation)

Algorithm:

1. Setup listeners:
   1. On start
       1. Start a timer for `timeout` minutes.
       1. While `condition`:
           1. Run the `generator`.
           1. Restart the timer.
   1. On timer stop:
       1. Return the generated results.

### Execute a sequential independent application

Inputs:

* `elements` - a list of elements
* `mapper` - function to apply to each element
* `timeout` - time interval after which to stop the independent application

Outputs:

* `successes` - a list of new elements (results of mapper application)
* `failures` - a list of old elements for which the mapper application was stopped by timeout

## Goal

You're looking for an optimal state of mind. It can't be had directly, since the mind is changing all the time. However, we notice that the mind retains memories - you seem to remember what happened yesterday. You can make predictions about the future using your memories of the past. This is the most fundamental axiom - the axiom of continuity. In plain English: every future has a past (there is a connection between the future and the past). In type theory: functional types exist.

Your goal is an optimal context - the one that leads to an optimal state of mind. Context can't be modelled directly, since it encompasses the whole world.

Syntax is a validator for semantics.

How do you choose a good model?

Filters:

* Model must have the same relevant properties as the target object
* Model may not have the same irrelevant properties as the target object

Sorts:

* Model is better if it has lower cost of operations
  * Cost of producing the model
  * Cost of manipulating the model
  * Cost of applying the model to produce an object

## Points

: a table, a chair, a pencil. These objects have a multitude of properties. However, in specific tasks, only one of those properties is relevant. In such situations, we can _reduce the object to the point_.

For example: we have a ship, and we need to ensure that the total weight of the cargo is less than ship's total carrying capacity. In this situation, only the weight property is relevant - the color, shape or density doesn't matter. Therefore, we can reduce the cargo to a point of type "weight". For example: 13.54 tons.

Every point is a mathematical abstraction - it doesn't exist in the real world. Rather, it represents a projection of an object.

**A point is a shadow of a real object.**

## Sets

Sets are groups of points. For example, a group of weights is a set. A group of items in a supermarket is a set, too. This sentence is a set of words.

There's a funny set called an "empty set". It's a set that doesn't contain any points, like an empty shopping cart.

Having sets & points, we can ask some interesting questions. For example: is every set also a point? In other words: can every set be reduced to a point?

And **yes**, in fact, you can reduce every set to a point by measuring its size. _Measuring is reducing_: you link a real object to an imaginary point (a measure). For example, we can take a shopping cart & count how many items it has.

Note that the set doesn't _contain_ its size. Just like an object doesn't contain its shadow, the set only _projects_ its size for anyone who is looking at it.

**A set is a group of shadows of real objects. A set is also an object itself.**

There's another funny set called "a set of all sets". It contains all sets that can be constructed from points in a given space. But if this "set of all sets" actually exists, then it must include itself. However, including itself yields another set (it definitely has a bigger size). So the process of including itself again and again never ends, so... is such thing even possible? Let's find out in the next chapter.

## Types

---

## Notes

Some points are similar to each other. For example, all weights are similar, because they are numbers. They are different semantically (different weights of different objects) but they are similar syntactically (same numbers are used to represent different weights).

A type is a point that describes other points.

Points themselves have properties (points of points, if you like). When these properties

However, we can't weigh the cargo in one go - we have to weigh each item separately, then sum the weights. How do we express this real-world situation in the mathematical terms?

So... what's the point? Well, the options of every decision can be modelled as points in space. Therefore, we can use the available theorems to prove properties of the algorithm.

**This is important:** real objects can be modelled using multiple mathematical structures at the same time. For example, a shopping cart can be: 1) A set of goods 2) A point in the space of weights.

## Properties of models

* Multiple objects can be associated with a single model
* Multiple models can be associated with a single object

## How to think

Thinking is "connecting the dots" - making links between objects.

There are two basic definitions:

* The objects are points in the space.
* The links are paths from one point to another.

Paths are points in the path space.

* Take a sheet of paper
* Write the title: "Space of points"
* Draw a point A
* Draw a point B
* Draw a line from A to B
* Take another sheet of paper
* Write on it: "Space of paths"
* Draw a point AB
* Realize that the point AB in the space of paths represents the line from A to B in the space of points

This observation is one of the most important ones in the whole of mathematics.
