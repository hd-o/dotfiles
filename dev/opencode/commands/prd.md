---
description: Write a project requirements document.
agent: build
---

# Write a PRD

Create `.tracker/$ARGUMENTS/PRD.md`: a complete, internally consistent
specification from which dependency-correct implementation tasks can be
generated without guessing. Scope and decisions come only from the user's
request, approved/current plan, and named live or tracker documents. Live
project files validate facts such as behavior, paths, architecture, tests, and
commands; they do not authorize additional scope. Approved decisions,
exclusions, uncertainties, prerequisites, sequencing, atomicity constraints,
validation gates, and follow-on conditions remain intact. Requirements describe
observable, verifiable outcomes and preserved contracts rather than speculative
design. Unsupported metrics, research, baselines, contracts, paths,
architecture, and product scope are absent. Material unresolved decisions are
returned to the user. Minor assumptions are narrow and labeled; open questions
are non-normative. Every goal traces to requirements and success criteria;
requirements align with non-goals, contracts, dependencies, valid repository
checkpoints, and proportionate validation.

## Adaptable Outline

```md
# PRD: [Feature / Project Name]

## 1. Overview
[What this is, why it exists, and the intended outcome.]

## 2. Problem
[The observed problem, affected reader or user, and validated current state.]

## 3. Current State or Diagnostic Baseline
[Relevant behavior, structure, evidence, and limitations.]

## 4. Goals
- [Required outcome]

## 5. Non-goals
- [Explicit exclusion]

## 6. Behavior, Design, or Target Shape
[Required flow, ownership, boundaries, and live-versus-target paths.]

## 7. Locked Decisions and Preserved Contracts
- [Behavior, interface, boundary, or decision that must not change]

## 8. Requirements

### Functional
- [ ] [Observable requirement]

### Architecture and Boundaries
- [ ] [Dependency, ownership, or layering constraint]

### Documentation and Evidence
- [ ] [Documentation, research, or manual evidence requirement]

### Tests and Validation
- [ ] [Required automated or manual gate]

### Non-Functional
- [Performance, reliability, security, maintainability, or UX constraint]

## 9. Delivery and Dependencies
[Ordered phases, atomic changes, prerequisites, and valid exit states.]

## 10. Success Criteria
- [Observable completion outcome]

## 11. Risks and Mitigations
- Risk: [Concrete risk]
  Mitigation: [Required mitigation]

## 12. Open Questions or Follow-on Conditions
- [Unresolved decision or evidence-dependent next step]

## 13. Completion Guardrails
- Do not land [invalid partial state].
```
