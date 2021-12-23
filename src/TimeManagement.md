# Time management

Zenbox prevents procrastination by setting a time limit for each task. If you don't complete the task on time, Zenbox pushes it back into the queue & switches to the next task. You are motivated to produce a result that is imperfect but good enough.

Zenbox allows you to switch between different task streams to cover all areas of your life. By default, you can switch between Work, Rest, Exercise, Socialize. In addition, you are encouraged to define your own task streams. Each task stream is associated with a time interval that specifies when this stream should be active. If no task stream is associated with the current time interval, Zenbox uses the default task stream: "Rest".

Each task stream downloads the tasks from [external apps](TaskManagement.md#data-source). You can connect messengers, email inboxes, calendars, project management systems & more. This allows you to create a single, unified task queue from different sources.

Zenbox uses a separate connector for each external app. Every connector can read the tasks from the app - but in addition to that, it can also write the task results back into the app. This allows you to directly update the data in the app (for example: send an email, update a spreadsheet row, create a new record in the database).

Zenbox doesn't allow you to see the all tasks on one page. Instead, it displays only the first task from the currently active stream. In addition, Zenbox starts the timer automatically, without waiting for you. It allocates a limited time to each task, after which it "rotates" to the next task. If you haven't completed the task on time, the system moves the task to the back of the queue.

Zenbox requires you to associate each time interval with a [task stream](definitions/TaskStream.md). During that time interval, you will only see tasks from this stream.

## Benefits

* You save time by *not* choosing the next task (the system sorts the tasks automatically by the time of arrival).
* You are motivated to skip procrastinating & start working on the task (otherwise the system would start & stop the timer automatically, marking the task as incomplete and moving it to the back of the queue).
* You are motivated to complete the task (otherwise the system will send a default result to an external system - for example, if the task were "Reply to email", the system would send a default answer: "Sorry, I can't reply now. Please send your message again later.").

## How to start

You can use Zenbox with just [a timer](https://www.google.com/search?q=timer) + self-discipline. Here is how:

### Setup

1. Define a list of task stream names (the areas of your life that you need to give time to)
   1. Feel free to use the default names in addition to your own:
      1. Work
      2. Exercise
      3. Socialize
      4. Rest
      5. Eat
   2. Ensure each name is a verb (rationale: you need to define what you're going to do, so it must be a verb)
2. Define your task streams as recurring events in calendar:
   1. [Create a new Google Calendar](https://calendar.google.com/calendar/u/0/r/settings/createcalendar)
   2. Create task streams as recurring events
      1. Minimize the amount of task streams (less is better)
      2. Ensure there is at least one task stream called "Rest"
      3. Ensure the task streams cover the entire schedule (no gaps)
   3. Associate a task source with each task stream except "Rest"
      1. Read the following notes:
         1. A task source is an external application where you see your tasks (e.g. instant messenger, email inbox, JIRA, Slack, Salesforce, ...)
         2. If you want to create a task source that aggregates multiple individual sources (e.g. for "Answer all messages" task stream), you can use multiple URLs or a single aggregate name (e.g. "Messengers")
      2. Put the task source identifier into event description
         1. Notes:
            1. A task source identifier can be any string:
               1. A web app URL (recommended)
               2. A desktop app name
               3. An aggregate name (e.g. "Messengers")

### Run

1. Pick the current task stream:
   1. Go through your calendars from top to bottom:
      1. If there is an event for current time, use this event as task stream
   2. If there is no event for current time in any of your calendars:
      1. Execute [Setup](#setup) (ensure there are no gaps between task streams)
      2. Execute [Run](#run) again
2. Pick the current task from the task stream
3. Choose the task duration
   1. Set a timer for 5 minutes
   2. Choose the task duration
      1. Don't think about other tasks; you will get to them later
      2. The more important the current task, the more time you should allocate to it
   3. If the timer runs out before you choose the duration: choose the default (1 hour)
      1. Don't spend more time on choosing the task duration
4. Set a timer for task duration minus 5 minutes
   1. Note: you will use those 5 minutes to publish the task result (e.g. push the commits, publish the documents, send messages from drafts).
5. Work on the task:
   1. Ensure you always have a structurally complete result
      1. It may have "TODO" markers, but the general idea must be understandable by the person who receives the task result.
6. When you finish the task:
   1. Publish the task result
   2. [Submit the task result for review](#submit-the-task-result-for-review)
   3. Stop the timer
7. If the timer runs out before you finish the task:
   1. Mark the task as failed
   2. Execute the same actions as in "When you finish the task"
      1. Don't spend more time on improving the task result. Instead, accept the failure & continue to the next task. This experience will help you to stop procrastinating & learn to produce a good-enough task result within a limited time

### Submit the task result for review

1. Send the task result to your teammates via group chat.
   1. If you don't have teammates: create a group chat with people who are working on similar projects.

## How to improve

For teams, Zenbox can be implemented as a web application with a minimal UI. The team members can't add the tasks manually - the admin must set up [task management](TaskManagement.md) to source the tasks from external apps.

## FAQ

### How can I set my rest time?

You can associate a specific time interval with a task stream that contains only one task: "Rest". You're encouraged to take as much rest as you actually need.

### How can I prioritize the tasks?

1. You can prioritize a single task stream by increasing its time interval.
2. You can autocomplete a task using [an autoresponder](TaskManagement.md#autoresponder).
3. You can't prioritize a single task within a stream. This increases your total productivity, because you will complete both the urgent tasks **and** the important tasks within a single task stream. It's important to work on important tasks, so Zenbox disallows manual prioritization (which is ).

### What should I do in an emergency?

You can activate "emergency mode". While it is active, Zenbox will add extra fields (customizable by you) to each default response.

Zenbox will continue producing tasks. If you can't complete a task before timeout, Zenbox will send the default response.

The "emergency mode" doesn't pause Zenbox, since the emergency task doesn't pause the time.

### How can I plan meetings?

1. Create a meeting in your calendar.
2. Connect your calendar to Zenbox.
3. Ensure the calendar for meetings has a higher priority than the calendar for normal task streams.

Zenbox will treat the meeting as a separate task stream. When the time comes, it will remind you to join the meeting.

Warning: meetings decrease productivity. You can avoid meetings with the following tactics:

- Ask the person who proposed the meeting to send you a summary of what he wants to say & promise to respond to him (most often, people schedule meetings because it gives them a guaranteed time slot to present their ideas).
- Hire someone to take the meetings for you.

### How do I choose the time interval to associate with a specific task stream?

Trust yourself. Only you can estimate how much time you need to spend on your goals. Also, you can change it later.

There is no objective estimator - no objective reward function. Your intuition is just as good as any formal algorithm.

If you want extra assurance, you can verify that your intuition is consistent (doesn't produce any contradictions). For that, you can write down your assumptions (axioms), then look for potential conflicts. In addition to your personal axioms, you can add an extra one: "every person is mortal". This axiom will free your mind from looking for a perfect solution, because you won't have perfect information, and other people won't have it either.

### Why is Zenbox so harsh?

No pain - no gain.

If you want something you don't have, you need to give up something you don't want.

What do you **really** want?
