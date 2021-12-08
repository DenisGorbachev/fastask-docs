# Decimaker drafts

## Principle

Decimaker allows you to make the best decision in a fixed time.

## Making good decisions

We don't want to make random decisions. We want to make *good* decisions. Therefore, we need to compare decisions to select the best one.

The comparison operator is only defined on numbers. So we need to associate decisions with numbers ("weigh the decisions", "evaluate the decisions", "estimate the effects of decisions"). It's not obvious, so we need to decide how to do it. We need to make a decision about the order of decisions.

It is possible to evaluate decisions in two ways:

* Indirectly from code execution effects:
  * Run the decision in a simulator, calculate the total reward from the final state (machine learning approach)
* Directly from code internal structure:
  * It's possible to calculate the time complexity of the algorithm from its structure (without running the algorithm)

We can improve decisions by spending time. However, we need time for executing the decisions. How should we resolve this dilemma?

Deadline is a property of every decision.

---

It's possible to train a reinforcement learning model to write the code based on a formal description of the input & output spaces (= on their types).  Basically it's theorem proving. The state is the current proof state. The actions are tactics or individual function calls.

Get a reinforcement learning model:

* Use an existing model
  * Use GitHub Copilot
  * Find more models online
* Train our own model

We evaluate decisions by their outcomes. The outcome is defined

We have to use online learning methods

We will try to infer the program for ordering decisions from examples.

### Example 1: Buy a laptop

Let's compare two decisions:

```typescript
buy(laptopA)
// vs
buy(laptopB)
```

It is not immediately obvious which decision is better.

## Recursion

Sometimes it is incorrect to make correct decisions. This is because making a correct decision takes more time than making an incorrect-yet-a-good-approximation of a decision.

We need to compare the estimated value of estimating a new action with the estimated value of taking an old action.

* if `EV(estimate(new_action)) > EV(take(old_action))` then `estimate(new_action)` else `take(old_action)`

Branch and bound algorithm

For example, `2 * 2 = 5` is a better approximation than `2 * 2 = 7`, and even better than `2 * 2 = banana`.

What's correct: `2 * 2 is 4` or `2 * 2 is a number`?

## Rosetta stone

| Making decisions                  | Writing programs
| -----------                       | -----------
| Decision                          | Program
| Decision that outputs decisions   | Higher-order function

However, making random decisions is undesirable.

Normally, we compare decisions *comparing* decisions means making a decision about the order of decisions.

## Examples

### Hello world

```typescript
async function HelloWorldDecision(): TaskResult {
  await say('Hello world')
}

export async function say(input: string): TaskResult {
  // if the function returns TaskResult, the body must be empty (will be replaced by a result map)
}
```

The `HelloWorldDecision` is parsed by UI generator to display the human interface for executing this function. The interface looks like this:

* A single "human step"
  * "Start" button (start a new timetracking record)
  * "Stop" button (stop the current timetracking record)
  * "Edit timetracking records" button (show the table for editing / adding timetracking records manually (if you trust the user))

Each execution of such function is also saved in a TaskResult in a database.

The developer needs to provide a way to read & write TaskResults.

contains just one step: say what you see. When done, press the "Done" button. The `TaskResult` type contains a `finishedAt` timestamp

`throw task()` is a special marker that gets replaced by

---

Second, there is a need for a domain-specific language for writing decisions.

Third, there is a need for a compiler - a program that can translate a tree of terms into a sequential list of elementary instructions.

Fourth, there is a need for data format that allows executors to associate expressions with results.

(though some languages are better for this specific task)

better decisions because they already know how to optimize programs ().

However, not every program is a valid decision. In order to qualify as a decision, a program needs to pass the following tests:

* It must be syntactically valid:
* It must be semantically valid

## Human API design

* Every human function needs a timeout
* Every human function needs a default value (returned after timeout)

## Definitions

### Decisions
