# FunX drafts

## Main goals

* Solve the problem of mental blocks
  * Solve the problem of zero choices (production)
  * Solve the problem of many choices (reduction)
  * Solve the problem of validation (ensure the task is correct)
  * Solve the problem of implementation (ensure the result is correct)
* Solve the problem of progressive refinement (splitting into subtypes)
* Solve the problem of teamwork (distribution)

Isomorphisms:
* "How do I choose between ..." - Many choices problem
* "Am I doing the right thing?" - Validation problem
* "How do I define the output type?" - Zero choices problem (if no idea at all) | Many choices problem (if too many ideas)

Solutions:
* Zero choices
  * Find outside your head
    * Read Wikipedia (if zero choices for the semantic type)
    * Read language docs (if zero choices for a programming language expression)
  * Start with a refinement (a smaller case)
* Many choices
  * (?) Start with a refinement (don't generalize before it's time)
* Definition
  * Write a program top-down (requires correct partialization to prevent analysis paralysis)
  * When you have many choices, go one level up
    * Implement a parent function (or parent program)
    * Choose the child function definition to match the parent function
      * simulating the results of the parent function
    * Example
      * When you need to define the semantic type of the `main` function of your program, you need to define your `makeMoney` function
* Implementation
  * Just write tests
* Refinement
* Teamwork
  * Order people by "level" of generality (what kind of tests is the person able to write: data tests, function tests, test tests, ...)

Notes:
* Zero choice problems are rare in general
  * There is information overflow
  * Most zero choice problems reduce to many choice problems
    * Zero choice for partner - actually many choice, but no-one passes the internal validation
      * Solution: relax the validation rules
* Type validation is a special case of writing a filter for many choices problem

Paradoxes:
* Find a partner - zero choices in many choice situation
  * User defines a validator
  * User applies a validator to an array
  * User doesn't find any elements
  * User concludes it's a zero choice problem
  * However, his validator is too strict (e.g. choosing a partner on unrealistic criteria)
  * Solution: apply a higher-order validator to the user-defined validator
    * Options for a higher-order validator
      * Ensure validator is defined via extensional search
        * Implementation
          * Define a parent function
          * Ensure the element fits into the parent function
        * Example
          * User can't find a romantic partner
            * User defines an unrealistic validator
              * Must have 140 IQ
              * Must have $100'000'000
              * Must be a supermodel
            * Higher-order validator requires the user to define the parent function
            * User defines a parent function: `haveSex` with output type `Orgasm`
              * Notice that there's no requirement for the partner to be a supermodel (user has had sex with non-supermodels before, and he was able to reach the orgasm)
              * Notice that there's no requirement for a specific IQ or specific wealth
            * Higher order validator returns errors, because the user-defined validator is too strict (includes criteria which are not relevant for the parent function)

## Thoughts on 2022-01-06

* Take a look at novel techniques
  * Point-free programming
  * Type-driven development
* Types are syntactic validators
  * Still need semantic validators
    * Options
      * Validator functions
      * Refinement types (sigma types with extra conditions) 

## Main algorithm (2022-01-04)

1. Define the [validator](definitions/Validator.md)
   1. Define the name

## Main algorithm (2021-12-13)

1. Define an output type as a list of constructors
2. Define an input type as a list of constructors
3. Define a scoring function:
   1. Input: input-output pair
   2. Output: additional input filters
4. Define a sampling function:
   1. Input: input, general filter predicates on output, additional filter predicates
   2. Output: [?]

We can use a machine learning algorithm to teach the program to write programs.

## Rosetta stone

| Machine learning | Programming                                                           |
|------------------|-----------------------------------------------------------------------|
| State            | Current code                                                          |
| Action           | Modify the phrase (functionalize a constant, replace a variable, ...) |
| Reward function  | Test                                                                  |

---

Use the map:

1. Constructor = Action
2. State = Target Function Implementation

Your Self:

1. Output is always a program for yourself (output is always code)
2. Input is always a state of yourself (input is always data)

Maker-Taker generates tasks for developers based on the code execution statistics.

---

We can refer to this fundamental property of an executor as "incompleteness" (in a tribute to [Gödel's incompleteness theorems](https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems)

---

Maker-Taker outputs a pair of "current algorithm" and "current task":

* The "current algorithm" is generated from a probability distribution over possible implementations.
* The "current task" is generated from the "previous algorithm" execution statistics.

Maker-Taker minimizes the development time by tasking the developers to implement approximations instead of the ideal algorithm. The approximations are guaranteed to converge to the ideal algorithm. However, the convergence might not always be necessary in practice, because the actual execution never covers the entire domain of inputs.

---

Both Maker and Taker are functions:

* Maker outputs a list of tasks.
* Taker outputs a list of function implementations (task results).

Together, Maker and Taker are referred to as "MT system", or simply "MT".

---

Func's basic type is a term trees.

1. Define the function name.
2. Define the function input.

Func is a program that outputs a single task for a software developer based on the current state of his code. Func doesn't require any configuration.

Func is a fully automated task tracker : specialized task manager for software developers. an algorithm for writing functions. Func generates the tasks for the developer based on the current code. Each task has a form "Define output based on 1. input 2. output type".

Main ideas:

* Allow multiple input-output pairs for a single input
* Associate each input-output pair with
  * Cost of definition
    * Time
    * Money
  * Probability of execution
* Define meta-tasks (actions):
  * Define output value based on input value & output type (label: `DEVAL`)
  * Define function body based on list of input-output pairs (label: `DEFUN`)
* Define transitive meta-tasks:
  * Redefine function body = `DEVAL` of function body

BASICALLY: Each name is a probability distribution over values.

* Name can be a variable signature
* Name can be a function signature

* The developer writes an append-only list of equalities
* The system selects the correct equalities based on certain equalities marked as axioms

Replace the equality with a distribution of equalities

## Examples

### Start

```typescript
type Input = string
type Output = {} // must be defined by programmer

const add = func<Input, Output>(addMap)

const addMap: Record<Input, Output> = {}
```

`program 2 2`

## FAQ

### How can I write a program for a human?

A program for a human by writing a text in natural language which conforms to certain rules.

A human is a probabilistic executor: the same input may yield different outputs. However, it is possible to write a program for a human with a high chance of producing the expected output.

### How can I write & test a program that influences the world state probabilistically?

Every program influences the world state.

### How can I output tasks for multiple developers working on the same project?
