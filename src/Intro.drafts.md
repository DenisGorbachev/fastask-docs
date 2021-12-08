# Zenbox drafts

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
