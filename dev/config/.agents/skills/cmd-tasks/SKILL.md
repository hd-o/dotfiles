---
name: tasks
description: Ignore. User-invocable ONLY
user-invocable: true
disable-model-invocation: true
---
# Generate Tasks

Transform PRD `$ARGUMENTS` into dependency-ordered, commit-sized task files in
a `tasks/` in same directory as PRD. The result is a complete and exact execution
plan, not a reinterpretation of the PRD.

**Fidelity:** Every normative PRD requirement appears in an acceptance
criterion or task-wide constraint; no task introduces unauthorized work.
PRD-named live paths may validate targets but never expand scope. All tasks
belong to one PR unless specified otherwise.

**Independence:** Each top-level task is an independently valid repository
checkpoint that satisfies its own criteria without later work and preserves all
PRD invariants, phase boundaries, and completion guardrails.

**Atomicity:** Work required in one phase or atomic change remains together,
including file moves, consumer rewiring, tests, documentation, and exit gates.
Atomic sub-tasks carry an explicit execution constraint.

**Specificity:** Required commands, manual checks, evidence protocols,
limitations, preserved contracts, and conditional outcomes retain the PRD's
specificity. Files are sequentially numbered `task-NN.md`, headings use the matching
Task N, and sub-tasks are sequential. No `TASKS.md` remains.

**Immutability:** Existing completed tasks and recorded scope remain unchanged.
Still-valid acceptance criteria, numbering conventions, TDD emphasis, and test pairing
remain intact. Only unstarted tasks may be renumbered for dependency order. Stale paths,
impossible targets, internal contradictions, and invalid partial states are absent.

## Completion Tracking

Create `tasks/STATUS.md` as the authoritative completion ledger so consumers
can discover progress without opening every task file. Initialize it with
exactly one unchecked entry per generated task in filename order:

```markdown
# Task Status

- [ ] `task-01.md` - Task 1: {task title}
- [ ] `task-02.md` - Task 2: {task title}
```

## Template

Without testing strategy:

```markdown
# Task 1: {task title}

PRD file path: `{prd-file-path}`.

- Sub-Task 1: {sub-task title}
  - Target File(s): {path(s)}
  - Testing Strategy: none.
  - Acceptance Criteria:
    - {criteria 1}
    - {criteria 2}
```

With testing strategy:

```markdown
# Task 2: {task title}

PRD file path: `{prd-file-path}`.

- Sub-Task 1: {sub-task title}
  - Target File(s): {path(s)}
  - Testing Strategy:
    - {required command or manual check}
    - `{test path}`
  - Acceptance Criteria:
    - {criteria 1}
```
