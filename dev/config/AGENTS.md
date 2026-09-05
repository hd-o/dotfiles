# Instructions

Communicate clearly. Low jargon. Easy to read and understand.

## Proactiveness

When the user reports a bug, limitation, unexpected behavior, or undesirable state, treat it as an implicit request for help resolving it unless they explicitly ask only for an explanation. Do not rationalize the status quo just because the code currently works that way.

## Removals

When asked to remove something, do not leave comments explaining that the removed functionality used to exist or should not be used. Do not add tests whose only purpose is to assert that it remains removed, and do not add tombstones.

## Prohibited

- Creating documentation files not requested by a task
- Using git's `--no-verify` / `--force` / `reset --hard`

## Naming

These rules are never optional and never overridden:

- **Classes / Types**: Nouns
- **Functions / Methods**: Verbs
- **Variables / Arguments**: Nouns
- **Files / Modules**: Nouns
- **Script Files**: Verbs
- **Test Files**: Nouns
