---
name: tasks
description: Generate tasks for given PRD
user-invocable: true
disable-model-invocation: true
argument-hint: "[prd-file-path]"
---

# Generate Tasks

Transform `{prd-file-path}` into dependency-ordered, commit-sized task files in
the same directory. The result is a complete and exact execution plan, not a
reinterpretation of the PRD. Every normative PRD requirement appears in an acceptance criterion or task-wide constraint; no task introduces unauthorized work. Each top-level task is an independently valid repository checkpoint that satisfies its own criteria without later work and preserves all PRD invariants, phase boundaries, and completion guardrails. Work required in one phase or atomic change remains together, including file moves, consumer rewiring, tests, documentation, and exit gates. Atomic sub-tasks carry an explicit execution constraint. Required commands, manual checks, evidence protocols, limitations, preserved contracts, and conditional outcomes retain the PRD's specificity. PRD-named live paths may validate targets but never expand scope. All tasks belong to one PR unless specified otherwise. Files are sequentially numbered `task-NN.md`, headings use the matching Task N, and sub-tasks are sequential. No `TASKS.md` remains. Existing completed tasks and recorded scope remain unchanged. Still-valid acceptance criteria, numbering conventions, TDD emphasis, and test pairing remain intact. Only unstarted tasks may be renumbered for dependency order. Stale paths, impossible targets, internal contradictions, and invalid partial states are absent.

## Template

Without testing strategy:

```markdown
# [ ] Task 1: {task title}

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
# [ ] Task 2: {task title}

PRD file path: `{prd-file-path}`.

- Sub-Task 1: {sub-task title}
  - Target File(s): {path(s)}
  - Testing Strategy:
    - {required command or manual check}
    - `{test path}`
  - Acceptance Criteria:
    - {criteria 1}
```
