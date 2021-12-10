# Programmer API

Programmer API is a list of functions that can be executed by a human programmer. All functions are internal: they don't have formally defined implementations, only hints to guide the human programmer intuition.

The hints aim to resolve **writing blocks** & **psychological loops** that arise when a person has 0 solutions or too many solutions so that it's hard to choose from.

## Write a program

* Input: algorithm in informal language X (spec)
* Output: algorithm in formal language Y (code)
* Tests:
  * Must be equal: {result of executing an input algorithm by carrier of language X} and {result of executing an output algorithm by carrier of language Y}
* Implementation:
  * Get the output type of code from output type of spec.

## Define a value

* Input: informal [term](https://en.wikipedia.org/wiki/Term_(logic))
* Output: formal [term](https://en.wikipedia.org/wiki/Term_(logic))

### Interpretations

* Give an example

## Define a variable

* Interpretations
  * Assign a value to a name
  * State an axiom (in languages with dependent types)
* Define a function
  * Interpretations
    * Find a way
    * Make a decision
    * Design a process
  * Implementations
    * Formal
      * Give an expression with the property: `theorem has_tests (f : Function) (out: Example f) (in: Input f) : f(in) = out` (for every output `out` there is an input `in` which matches a condition that `f` applied to `in` equals `out`)
    * Informal
      * Define output type
      * Try to define an input type
        * Guess a type
        * Sort the list of types
        * Reset the timer to N seconds
      * If no input type: set input type to string
      * Try to write the body
        * Try to choose a basic function with the same output type
* Define a type
  * Implementations
    * Type-theoretic
      * Choose a name
      * Choose a list of
* Choose a name
  * Implementations
    * Random
    * Native with fallback to random
      * Try to write the name
      * If not done in 60 seconds: choose a random name

## Definitions

### Specification

Specification is a [type definition]

### Type

Type is a named list of [constructors].

Usage:

* "Variable 'a' has type 'Nat'" means "Variable 'a' can be replaced by an expression which begins with one of the constructors of the type 'Nat'"

Properties:

* Type name is capitalized by convention (but the compiler doesn't require that).

### Point

Point is a single definite value.

Examples:

* "0" is a point
* "1" is a point
* "true" is a point
* "Ann" is a point

Properties:

* If you ask multiple humans about the point's name, you will get the same name in 95.45% cases.

### Path

Path is a way from one point to another point.

Examples:

* "0 -> 1" is a path from 0 to 1
* "false -> true" is a path from false to true

Properties:

*
* Every path can be viewed as a point in the space of paths.
* Path are undefined. If the path is defined, that means there's a path from this path's name to a point in the space of implementations.

### Space

Space is a group of points.

The grouping is done by creating a path between Every point from a single space has a path to a single point in the space of spaces.
