# Zenbox drafts

## How to sequence the development

1. Split the input type into a list of quotient types ("a subset of users", "a subset of potential values")
2. Define the order on the list of quotient types
3. Implement the function progressively (as described in FunX document)

## Thoughts on tasks in general

* Tasks are type definitions
* Type definitions can be expressed as validator functions in non-dependently-typed languages
  * Easy to implement
  * Easy to use: just check that a specific value matches the type
  * Allows to customize the error messages ("translate" the validator)
* It's possible to define validators of validators (~ types of types)
  * Validators of validators must check the source code of the function (not the compiled function)
  * Validators of validators can be called higher-order validators (HOVs)

## System tests

* System must prevent over-spending time on product instead of marketing
  * This error has been reported multiple times by other startup founders
    * The founders who like programming more than marketing are more likely to do this error
* System must prevent under-spending time on planning
  * System must prevent building the product without market research
* System must allow specifying dependencies between tasks
* System must linearize the dependency tree (turn a tree into a flat list)
* System must distribute the tasks to other people
  * System should "advertise" the tasks (post them as jobs / send them as messages)
  * System should notify the external executor when the task is updated

## Thoughts on 2022-01-04

* main = pipe(getConfig, getDataSources, getData, getTasks)
* continuation = pipe(getTaskResults, getPublicPosts)
  * Some task results must be published (at least: notify the task creator)
    * Not every task result must be published
      * Example:
        * Setup SSH agent
* Data sources must include personal thoughts
  * May use a tree hierarchy to organize them
  * May link to functions
  * Should simplify adding repeating thoughts
  * How to move from personal thoughts to personal tasks?
    * Must sort the tasks by actual priority, not by the count of repetitions
      * Example:
        * Must sort "I need to pay taxes" higher than "I don't want to reenter SSH password"
    * Must not produce the tasks to act immediately on the thoughts
      * User must be instructed to internally process his thoughts according to the following algorithm:
        * If the thought is directly related to the current task, then act on it immediately, else add to the system
  * Must enforce a specific format of thoughts
    * Required to convert them into tasks
* Data sources may include:
  * Error monitoring alerts
  * CI alerts
  * GitHub dependabot alerts
* Maybe the system should allow the user to solve the tasks by editing code
  * Programming tasks are definitely solved by editing code
  * Regular messages must be answered via chat UI
  * App UIs are optimized for the tasks
  * Designers can't work in code
    * Not sure if we truly need designers
    * Designers can edit the theme file
      * But that would result in non-original design (no illustrations, etc)
        * We would have to hire very advanced programmers who can design the pages
  * Copywriters can work in code, but it's suboptimal

---

* How to choose event feeds?
  * Options
    * Return a list of event feeds to a trusted kernel
    * Do not use external event feeds - only your intuition
* How to organize the work of multiple people?
* How to choose which node of the tree to grow?
  * Options
    * By appearance timestamp (breadth-first)
      * But it takes less time to develop depth-first
    * By execution count (how many times a constant element was returned from a specific function)
    * By execution cost
      * Options
        * By amount of time lost due to constant element being returned
* How to choose between processing an external event and growing the tree? (~= how to handle interrupts?)
  * Options
    * Push onto the stack
      * If event is life-threatening
        * Fall back to default decision-making system ("lizard brain")
      * Else
        * Add to the queue
* How to determine that the tree is "correct"?
  * Options
    * By external events

## Task examples

* body.on('sleep')
* body.on('eat')
