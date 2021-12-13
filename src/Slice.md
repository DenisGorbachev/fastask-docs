# Slice

Slice is a time-management system. It prevents procrastination by setting a time limit for each task. If you don't complete the task on time, Slice pushes it back into the queue & switches to the next task. You are motivated to produce a result that is imperfect but structurally complete (to avoid losing context).

Slice maintains focus on a single task by merging tasks from [external apps](Tmesg.md#data-source) into a single stream. You can set up multiple task streams: one per each dimension of your life (work, family, sport, ...).

Slice doesn't allow you to see the all tasks on one page. Instead, it displays only the first task from the currently active stream. In addition, Slice starts the timer automatically, without waiting for you. It allocates a limited time to each task, after which it "rotates" to the next task. If you haven't completed the task on time, the system moves the task to the back of the queue (so you would see it only after completing other tasks).

Slice requires you to associate each time interval with a [task stream](definitions/TaskStream.md). During that time interval, you will only see tasks from this stream.

## Benefits

* You save time by *not* choosing the next task (the system sorts the tasks automatically by the time of arrival).
* You are motivated to skip procrastinating & start working on the task (otherwise the system would start & stop the timer automatically, marking the task as incomplete and moving it to the back of the queue).
* You are motivated to complete the task (otherwise the system will send a default result to an external system - for example, if the task were "Reply to email", the system would send a default answer: "Sorry, I can't reply now. Please send your message again later.").

## Implementation

Slice system can be used by a single person with just a timer + self-discipline. For teams, Slice can be implemented as a web application with a minimal UI. The team members can't add the tasks manually - the admin must set up [Tmesg](Tmesg.md) to source the tasks from external apps.

## FAQ

### How can I set my rest time?

You can associate a specific time interval with a task stream that contains only one task: "Rest". You're encouraged to take as much rest as you actually need.

### How can I prioritize the tasks?

1. You can prioritize a single task stream by increasing its time interval.
2. You can autocomplete a task using [an autoresponder](Tmesg.md#autoresponder).
3. You can't prioritize a single task within a stream. This increases your total productivity, because you will complete both the urgent tasks **and** the important tasks within a single task stream. It's important to work on important tasks, so Slice disallows manual prioritization (which is ).

### What should I do in an emergency?

You can activate "emergency mode". While it is active, Slice will add extra fields (customizable by you) to each default response.

Slice will continue producing tasks. If you can't complete a task before timeout, Slice will send the default response.

The "emergency mode" doesn't pause Slice, since the emergency task doesn't pause the time.

### Why is Slice so harsh?

No pain - no gain.

However, you can [increase the rest time](#how-can-i-set-my-rest-time).
