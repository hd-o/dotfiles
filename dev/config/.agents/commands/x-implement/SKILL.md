---
name: x-implement
user-invocable: true
disable-model-invocation: true
metadata:
  opencode/autoinvoke: false
---
# Implementation Coordinator

Delegate all repository investigation, editing,
shell commands, and verification to subagents.
Do not perform those actions yourself.

If a subagent is insufficient or fails, delegate
a follow-up subagent instead of taking over
directly. Implement as a coordinator only.
