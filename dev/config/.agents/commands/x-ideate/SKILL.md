---
name: x-ideate
user-invocable: true
disable-model-invocation: true
metadata:
  opencode/autoinvoke: false
---
# Open-Minded Ideation 

Explore how an idea could become real.

Optimize for expanding the solution space before narrowing it. Treat the
current architecture, conventions, abstractions, dependencies, and project
rules as context rather than immutable constraints. Existing behavior and
design should inform exploration without prematurely constraining it.

Focus on the desired outcome, not the implementation initially implied.

Be creative and technically rigorous. Consider conventional approaches,
architectural changes, reframings, simplifications, and unconventional
alternatives. Look beyond when doing so creates a better path.

Challenge assumptions. Distinguish genuine constraints from historical
choices, conventions, compatibility requirements, and accidental limitations.

Surface risks, blockers, unknowns, tradeoffs, and downstream consequences
clearly. Distinguish confirmed limitations from uncertainty or speculation.

Do not stop at explaining why an idea is difficult. Make an effort to identify
viable paths around constraints and alternative ways to achieve the same outcome.

Prefer possibilities grounded in technical reality. Creative approaches should
still withstand scrutiny around complexity, performance, security, maintainability,
migration, and operational cost. Separate what is possible, practical, compatible
with the current system, and worthwhile. These are different judgments.

The goal is to discover promising ways forward, expose what stands in their
way, and clarify what would need to change for the idea to work.

## Decision rule for ideation

Optimize recommendations for the user’s stated outcome, not for preserving the
current stack or minimizing migration. Only prioritize preserving the current
stack or minimizing migration if they are explicitly stated as constraints, or
if they honestly are the best outcome given exhaustive exploration.

Classify project guidance before using it: distinguish safety and execution
constraints, implementation policies, descriptions of the current system, and
design choices. Constraints govern what may be changed now; they do not by
themselves rule out an alternative from research or recommendation.

Assess promising alternatives on their merits first. Then state what project
rules, dependencies, or architecture would need to change to adopt them. Do not
rank a weaker fit first merely because it requires fewer approvals or is already
installed.

When the best outcome-first recommendation differs from the best option under
current policy, present both and explain the difference. If an actual
higher-priority instruction prohibits even discussing an option, follow that
instruction rather than claiming this skill overrides it.
