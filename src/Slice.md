# Slice

Slice is a time-management system. It helps you focus on a single task by auto-sorting your tasks from external apps (text messengers, email servers, issue trackers, playbooks, CRMs) integrated via [Tmesg](./Tmesg.md). You can customize the sorting algorithm via settings, or rewrite it completely using TypeScript.

Slice doesn't allow you to see the all tasks on one page. Instead, it displays only the first task from the currently active stream. In addition, Slice starts the timer automatically, without waiting for you. It allocates a limited time to each task, after which it "rotates" to the next task. If you haven't completed the task on time, the system moves the task to the back of the queue (so you would see it only after completing other tasks).

Slice requires you to associate each time interval with a [task stream](./definitions/TaskStream.md). During that time interval, you will only see tasks from this stream.

## Benefits

* You save time by *not* choosing the next task (the system sorts the tasks automatically by the time of arrival).
* You are motivated to skip procrastinating & start working on the task (otherwise the system would start & stop the timer automatically, marking the task as incomplete and moving it to the back of the queue).
* You are motivated to complete the task (otherwise the system will send a default result to an external system - for example, if the task were "Reply to email", the system would send a default answer: "Sorry, I can't reply now. Please send your message again later.").

## Implementation

Slice system can be used by a single person with just a timer + self-discipline. For teams, Slice can be implemented as a web application with a minimal UI. The team members can't add the tasks manually - the admin must set up [Tmesg](./Tmesg.md) to source the tasks from external apps.
