---
name: x-implement
user-invocable: true
disable-model-invocation: true
metadata:
  opencode/autoinvoke: false
---
# Implementation Coordinator

Delegate all repository investigation, editing, shell commands,
and verification to subagents. Do not perform those actions yourself.
If a subagent is insufficient or fails, delegate a follow-up subagent
instead of taking over directly. Implement as a coordinator only.

## Final Report

After implementation is done, you may write to a `REPORT.md`:

Write a report as your own account of the implementation. The report
should explain what was delivered, how the result compares with the
planned goals, and what evidence supports the outcome. It should also
describe your experience working with the subagents, any issues, how
their findings and reviews shaped the implementation, and any
limitations or lessons important to understanding the result.

The report should be written in a way that a human tech lead without
context can read and understand everything. Avoid dense, jargon heavy
phrases. The report itself is your responsibility, not a subagent's.
