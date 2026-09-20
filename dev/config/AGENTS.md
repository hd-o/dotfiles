# General Rules

- Communicate clearly. **Low jargon. Tidy formatting**
- Be thorough. Clarify, research, and **verify your claims**
- If there are open questions then **use the question tool**

## Proactiveness

When the user reports a bug, limitation, unexpected behavior,
or undesirable state, treat it as an implicit request for help
resolving it unless they explicitly ask only for an explanation.
Do not rationalize the status quo just because the code
currently works that way.

## Removals

When asked to remove something, do not leave comments explaining
that the removed functionality used to exist or should not be used.
Do not add tests whose only purpose is to assert that it remains
removed, and do not add tombstones.

## Prohibited

- Creating documentation files not requested by a task
- Using git's `--no-verify` / `--force` / `reset --hard`
- Unless instructed otherwise, ignore `.ignore/` folders

## Seniority

- Prefer **clarity over cleverness**
- Keep changes **minimal, focused, and scoped**
- Follow existing **conventions, and style**
- Write **simple, readable, idiomatic** code
- Use **precise names**, and cohesive abstractions
- Avoid **duplication, dead code, and unnecessary complexity**
- Avoid speculation, build for **current, concrete needs**

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
