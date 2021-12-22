# Scheduler configuration

Scheduler configuration is a structure with the following fields:

* Duration - the time interval in milliseconds after which the schedule repeats
* Task stream offsets - a list of pairs where
  * The first element is a task stream
  * The second element is a duration in milliseconds that defines how long the current task stream should be active (see examples in [playbook repo](https://github.com/DenisGorbachev/playbook/tree/dev/src/Slice/models))
