# Maker-Taker

Maker-Taker is a pair of fundamental algorithms that guide the development of new algorithms. They minimize the total development time by instructing developers to implement partial algorithms, and telling them how to extend existing partial algorithms to cover a larger part of its input domain.

Maker-Taker is based on an important observation: "In practice, an algorithm will never experience its every possible input". In other words: there is always some obscure input that won't be seen by the algorithm. This is true for every algorithm with an infinite input domain (for example: the `add` algorithm, which has an infinite input domain of natural number pairs, will every see every possible natural number pair).

Instead of every possible input, the algorithm will see some specific inputs between the timestamps `t0` and `t1`. Maker-Taker generates the list of specific inputs that will be seen by the algorithm based on previous execution statistics and the axiom of smoothness (which states that the probability of seeing a new input depends on the probability of seeing a previous input that is "close to" the new input - where "close to" depends on the type of input).

---

We can refer to this fundamental property of an executor as "incompleteness" (in a tribute to [Gödel's incompleteness theorems](https://en.wikipedia.org/wiki/G%C3%B6del%27s_incompleteness_theorems) 

Maker-Taker outputs a pair of "current algorithm" and "current task":

* The "current algorithm" is generated from a probability distribution over possible implementations.
* The "current task" is generated from the "previous algorithm" execution statistics.

Maker-Taker minimizes the development time by tasking the developers to implement approximations instead of the ideal algorithm. The approximations are guaranteed to converge to the ideal algorithm. However, the convergence might not always be necessary in practice, because the actual execution never covers the entire domain of inputs.


Both Maker and Taker are functions:
* Maker outputs a list of tasks.
* Taker outputs a list of function implementations (task results).

Together, Maker and Taker are referred to as "MT system", or simply "MT".

MT has the following basic types:
1. Word is a list of characters (for example: "add", "2", "+", "=", "4")
2. Phrase is either a list of phrases or a word (for example: "main 100", "1 = true", "main")
3. Static function map (or "snap") is a list of input-output pairs, where both input and output is an expression
4. Implementation (or "body") is a list of expressions that describes a "snap" (in other words: an interpreter can read the implementation, read the snap inputs, write the snap outputs) (in other words: a compiler can read the implementation and write a program that can read the snap inputs and write the snap outputs)

The types have the following meanings:
1. Word represents a unit of meaning (for example: "add" represents addition).
2. Phrase represents a mental image that contains multiple meanings (for example: "a cat is running", "2 + 2 = 4")

Func's basic type is a term trees.

1. Define the function name.
2. Define the function input.

Func is a program that outputs a single task for a software developer based on the current state of his code. Func doesn't require any configuration. 

Func is a fully automated task tracker : specialized task manager for software developers. an algorithm for writing functions. Func generates the tasks for the developer based on the current code. Each task has a form "Define output based on a) input b) output type".

Main ideas:
* Allow multiple input-output pairs for a single input
* Associate each input-output pair with
  * Cost of definition
    * Time
    * Money
  * Probability of execution
* Define meta-tasks (actions):
  * Define output value based on input value & output type (label: DEVAL)
  * Define function body based on list of input-output pairs (label: DEFUN)
* Define transitive meta-tasks:
  * Redefine function body = DEVAL of function body

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

### How can I output tasks for multiple developers working on the same project?