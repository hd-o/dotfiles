---
name: cmd-orchestrate
description: Ignore. User-invocable ONLY
user-invocable: true
disable-model-invocation: true
---
# Orchestration

The result is a reviewed, verified, and committed implementation of every
`tasks/task-*.md` in the tracker, plus a final `REPORT.md`. `$ARGUMENTS`
is the supplied tracker directory, or its parent when it names a PRD file.

## Progress Tracking

`tasks/STATUS.md` is the authoritative completion ledger. At startup and after
any resumed run, read this single file and create a runtime todo item for each
entry. Mirror checked entries as completed and unchecked entries as pending.
Verify that its filenames match `tasks/task-*.md`; halt for tracker regeneration
if the index is absent or inconsistent. Never open, dispatch, modify, or
recommit a task with a checked entry. Open a task file only when its entry is
the next pending task. The runtime todo list is a progress view, not a
replacement for the file-backed ledger.

## Responsibilities

The orchestrator owns dispatch, acceptance verification, independent review,
task state, commits, and reporting. Implementation sub-agents own application
logic; the orchestrator does not implement it. One complete `task-NN.md` is one
sequential sub-agent dispatch. Its sub-tasks remain ordered steps within that
dispatch. Tasks are neither split nor merged; an oversized task requires human
renegotiation.

## Dispatch Contract

Each dispatch uses this template with one task's content:

```markdown
# SUB-AGENT TASK ASSIGNMENT

## Goal

Task #[number]: [title].

PRD: `{prd-file-path}`.

## Sub-Tasks

[Verbatim sub-task list: target files, test files, acceptance criteria]

## Expected Outcome

All acceptance criteria are satisfied with the smallest task-scoped change.
Tests cover changed observable behavior or contracts without duplicating
coverage or pinning internal names. Existing tests are never weakened, skipped,
or marked `xfail` to obtain a passing result.

The implementation contains no unrelated refactors, speculative compatibility
shims, git operations, tracker edits, or self-review.

## Return

After implementation, return each sub-task's status, files touched, verification
results, and one retrospective. The parent orchestrator owns `subagent-review`.

## Retrospective

Prompt/Skill gaps: missing paths, conflicting instructions
Failed commands: exact commands and why they failed
Keep: payloads or workflow items that saved a hop
Change: concrete payloads, skills, or CLI changes
```

## Completion Gate

A task is complete only when:

1. The implementation subagent reports all sub-tasks complete
1. Project verification succeeds on the working tree
1. New and renamed identifiers follow language naming conventions
1. An independent `subagent-review` run reports **PASS**

The review receives the task goal, PRD, acceptance criteria, touched files, and
changed tests. A **FAILED** review returns to the same implementation thread
with the findings; the orchestrator does not fix application code or delegate a
concurrent repair. After **PASS**, the orchestrator checks the task's `STATUS.md`
entry and creates one conventional commit containing only that task's changes
and the status update. Only after that commit succeeds does it mark the runtime
todo complete and continue to the next unchecked entry. Explicit paths are
staged instead of `git add -A`; secrets are never staged.

```bash
git commit -m "<feat|fix|chore|docs|test|refactor>: <task>"
```

Attempts 1-9 preserve the working tree and resume the same implementation
thread with only the relevant failure details. Attempt 10 records failures in
`debug.log` and halts for human review.

## Final Report

`{tracker-dir}/REPORT.md` contains in order:

- Retrospective section, with a TLDR
- Manual usage or testing instructions
- Commits and their change summaries
