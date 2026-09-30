---
name: subagent-review
description: >
   Use after completing a coding task (implementation, refactor, fix)
   to review work before considering it done. Skip this skill if the task
   only included minor updates that are sufficiently verified by running
   the project's automated checks (typecheck, lint, tests, evals)
---
# Work Review

> If you're the review subagent: IGNORE this skill, follow [`./instructions.md`](./instructions.md)

MUST invoke review subagent or general subagent to evaluate the completed task.

**If can't invoke subagent, end with gathered context and ask parent to subagent-review.**

## When to use

Run this review after implementation and relevant automated checks,
before declaring a coding task complete. Review is required for changes
to behavior, control flow, interfaces, data handling, or code structure,
even when automated checks pass.

Skip only small, mechanical changes whose correctness is sufficiently
verified by the project's automated checks. A small diff alone does
not justify skipping review. If unsure whether the exception applies,
run the review.

## Instructions

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
