# Tmesg

Tmesg is a task management system. It unifies tasks & messages under a single request-response paradigm.

Tmesg requires you to submit task results, which are forwarded to external systems. For example, if the task were "Reply to email", the system would expect the task result to be an answer to the email, and it would send the answer on user's behalf via email server. This allows to use Tmesg as a proxy between you and the external task sources (email, messengers, Salesforce notifications, GitHub issues, Google Sheets rows, ...).

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

## Definitions

### Data source

A data source is an API that pushes the tasks into your streams.

Examples:

* Text messengers: WhatsApp, Telegram, Facebook Messenger, ...
* Email servers: Gmail, Hotmail, company email server, ...
* Issue trackers: GitHub, Trello, JIRA, ...
* CRMs: Salesforce, Pipedrive, ...

### Autoresponder

Autoresponder is a function that generates automatic responses for certain messages. It saves your time by keeping simple messages away from your inbox.
