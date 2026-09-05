---
name: subagent-retro
description: >
  Use only when acting as a sub-agent, after the last sub-task of
  an implementation dispatch, when writing the final return
---
# Sub-Agent Retrospective

Load this skill only after the last sub-task. Do not change code with it.
Do not load `review-work`. Do not write a retro file. Append this block
to the final return, after the status summary. Facts only. No praise.
No speculation. Use `none` for an empty field.

```markdown
## Retrospective

- Prompt/Skill gaps:
- Failed commands:
- Keep:
- Change:
```

- Prompt/Skill gaps: missing paths, conflicting instructions, extra hops
- Failed commands: exact commands and why they failed
- Keep: payloads or workflow items that saved a hop
- Change: concrete payloads, skills, or CLI changes
