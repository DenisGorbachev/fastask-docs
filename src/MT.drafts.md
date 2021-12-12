# Maker-Taker drafts

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
