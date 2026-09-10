---
name: sub-review
description: >
   Use after completing a coding task (implementation, refactor, fix)
   to review work before considering it done
---
# Work Review

> [!NOTE]
>
> If you're the review subagent: Ignore this skill; Follow [`./instructions.md`](./instructions.md)

MUST invoke a subagent to evaluate the completed task.

**If can't invoke subagent, end with gathered context and ask parent to sub-review.**

Every review ends with an explicit **PASS** or **FAILED** verdict:

1. Gather context about the work completed:

   - Clear description of the goal, approach, and key decisions
   - Relevant artifacts (PRD, Task description, modified file paths)
   - Original requirements or acceptance criteria
1. Invoke a subagent with the gathered context

   - Instruct the subagent to read and strictly follow [`./instructions.md`](./instructions.md)
   - Provide the description, artifacts, and files to the subagent
   - A convention break is FAILED, not a nit
1. After the subagent responds:

   - If FAILED, loop until PASS (fix, then re-invoke review)
   - If PASS: confirm the work is ready

Do not add nits or optionals beyond what the review reports.
