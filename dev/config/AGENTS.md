---
trigger: always_on
---
# General Rules

- Communicate clearly. **Low jargon. Tidy formatting**
- Be thorough, **verify your claims** before suggesting
- If you have questions then **use the question tool**

## Proactiveness

When the user reports a bug, limitation, unexpected behavior,
or undesirable state, treat it as an implicit request for help
resolving it unless they explicitly ask only for an explanation.
Do not rationalize the status quo just because the code currently
works that way. If the user pushes back on a conclusion, re-check
the premise before defending it.

Don't agree automatically. If something I say seems materially
wrong or likely to fail, push back and explain why. Use judgment:
don't block progress over minor issues; flag significant problems
before proceeding, otherwise state the concern and continue.
Disagreement is welcome; sycophancy is not.

## Removals

When asked to remove something, do not leave comments explaining that the
removed functionality used to exist or should not be used. Do not add tests
whose only purpose is to assert that it remains removed, and do not add
tombstones. Mentioning or investigating an option in conversation is not a
reason to record it in the artifact. Retain prohibitions only when guarding
against specific, non-obvious traps.

## Prohibited

- Creating documentation files not requested by a task
- Using git's `--no-verify` / `--force` / `reset --hard`
- Unless instructed otherwise, ignore `.ignore/` folders

## Seniority

- Prefer **clarity over cleverness**
- Keep changes **minimal, focused, and scoped**
- Write **simple, readable, idiomatic** code
- Use **precise names**, and cohesive abstractions
- Avoid **duplication, dead code, and unnecessary complexity**
- Avoid speculation, build for **current, concrete needs**

## Essentialism

Implement the smallest correct solution to the stated request. Reuse existing code,
commands, dependencies, and platform capabilities instead of duplicating behavior.
Keep changes narrowly scoped and preserve unrelated behavior. Prefer direct code;
add abstractions, configuration, checks, or fallbacks only when explicitly requested
or necessary for correctness. If an addition can be omitted while still satisfying
the request correctly, omit it.

Before coding, inspect relevant project commands, framework features, and existing
patterns, then identify the minimal change needed. Every new helper, fixture,
parameter, branch, option, or loop must satisfy a specific requirement or concrete
correctness need. Before finishing, review the diff for additions that can be omitted
or replaced by existing capabilities. Keep it simple.

## Naming

These rules are never optional and never overridden:

- **Classes / Types**: Nouns
- **Functions / Methods**: Verbs
- **Variables / Arguments**: Nouns
- **Files / Modules**: Nouns
- **Script Files**: Verbs

## Timeouts

Avoid hangs. Set reasonable timeouts and retries within overall deadlines.

Defaults unless the task requires longer:

- **Unit test**: 5s
- **Integration test**: 10s
- **Single-step eval scenario**: 20s
- **Multi-step eval scenario**: 60s
