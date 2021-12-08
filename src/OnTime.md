# OnTime

OnTime is a time management system. It's based on a task queue sorted by time (earliest in front). However, it doesn't allow the user to see the full task queue. Instead, it displays only a single current task from the top of the queue. In addition, the system starts the timer automatically, without waiting for the user. It allocates a limited time to each task, after which it "rotates" to the next task. If the user hasn't completed the task on time, the system moves the task to the back of the queue (so the user would see it only after completing other tasks).

OnTime allows users to submit task results. The system saves the results, then sends them to external systems. For example, if the task were "Reply to email", the system would expect the task result to be the email answer, and it would send the answer on user's behalf. This allows to use OnTime as a proxy between the user and the external task sources (email, messengers, Salesforce notifications, GitHub issues, Google Sheets rows, ...).

## Benefits

* The user saves time by *not* choosing the next task (the system sorts the tasks automatically by the time of arrival).
* The user is motivated to skip procrastinating & start working on the task (otherwise the system would start & stop the timer automatically, marking the task as incomplete and moving it to the back of the queue).
* The user is motivated to complete the task (otherwise the system will send a default result to an external system - for example, if the task were "Reply to email", the system would send a default answer: "Sorry, I can't reply now. Please send your message again later.").

## Implementation

OnTime system can be used by a single person with just a timer + self-discipline. For teams, OnTime can be implemented as a web application with a minimal UI. The team members can't add the tasks manually - the admin must set up connectors to external task sources.

## API

* `push` - add a task to the queue
  * Inputs:
    * Task push token (JWT string) (includes username)
    * Task description (JSON string)
  * Output:
    * Task pull token (JWT string)
  * Default implementation
    * Add a new task "Implement a handler for task" to a FIFO queue
* `pull` - remove an task from the queue
  * Inputs:
    * Task pull token (JWT string)
  * Output:
    * Success status (bool)
* `get` - get a task
  * Inputs: none
  * Output:
    * Task description (JSON string)
  * Default implementation
    * If task queue is not empty: Return the task from the queue
    * If unreviewed task results queue is not empty: Return the task "Review a task result"
    * Return the task "Automate the task type"
      * Choose the task type by statistics (most incomplete tasks first)
  * Notes
    * `get` command opens a text editor for making a set of changes to the system code
      * The user sees the default code (respond with an empty string) pre-written in the editor
      * The user can freely edit the code
      * The user can save the new code only if it passes the typechecker
      * The user can close the editor if the current code has been saved ("complete the task early")
      * The editor will self-close after a timeout (can be adjusted as a separate task at the end of the day)
    * The user can react to the task in the following ways:
      * Provide a direct response
