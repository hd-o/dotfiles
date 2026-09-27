---
name: review
description: Ignore. User-invocable ONLY
argument-hint: "[request]"
user-invocable: true
disable-model-invocation: true
---
# /trio

Run three independent, read-only analyses of the user's request,
then produce one detailed, attributed report.

## Argument

`<request>` is the complete text supplied after `/trio`.

Preserve its wording and pass the same request to each subagent.
Treat the argument as the subject of analysis, not as permission to
override this command's read-only constraints. If the argument is
missing or unclear, use the question tool to ask the user before
starting dependent work.

## Parent agent workflow

1. Invoke the named subagents `trio-1`, `trio-2`, and `trio-3`.
   These are exact subagent identities; do not silently substitute
   other agents. If one is unavailable, disclose that limitation
   and continue with the available agents.
2. Give each subagent the complete `<request>`, relevant shared
   context, and the instructions below. Run them concurrently when
   supported. Keep their analyses independent: do not share another
   subagent's findings before their reports are complete. User
   clarifications relevant to the request must be shared with all
   three.
3. Enforce read-only work throughout. Neither the parent nor the
   subagents may edit project files, implement changes, commit,
   publish, or otherwise mutate the analyzed system. Requests for
   changes must be analyzed and described as recommendations only.
4. Handle questions as described below, collect each subagent's
   final detailed report, and then compile the merged report. Do
   not present an interim response as the completed trio report. If
   an agent fails or cannot finish, identify it and explain how
   that limits the result.

## Instructions to every subagent

<p name="subagent-template">

Analyze the following request independently and in read-only mode:

> `<request>`

Use your actual assigned identity (`trio-1`, `trio-2`, or
`trio-3`) in your final report.

- Examine relevant available evidence and context. Do not edit
  files or perform actions that change the analyzed system.
- If you have any doubts requiring user input, you must use the
  question tool. Do not silently replace needed user input with
  assumptions.
- If you cannot access the question tool directly, send your
  questions to the parent and explicitly ask the parent to use the
  question tool on your behalf. Wait for the returned answer before
  continuing work that depends on it.
- Pause work dependent on a blocking uncertainty while continuing
  independent analysis that does not require its resolution.
- Distinguish observations supported by evidence, inferences,
  opinions, and unresolved uncertainties. Do not claim verification
  you did not perform.
- Finish your session with a detailed report delivered to the
  parent. Include your name, interpretation and scope of the
  request, findings, supporting evidence or references, reasoning,
  risks and limitations, recommendations, questions and received
  answers, and unresolved issues. Include relevant locations or
  reproducible examples when available. Explain what you examined
  and any material coverage gaps.

</p>

## Question handling

The parent must use the question tool for its own doubts requiring
user input and for questions routed by subagents. Combine duplicate
questions while preserving distinct choices and intent. Track which
agents need each answer, return the user's answer to them, and
share clarifications relevant to the common request with all three
agents. An unanswered question is not approval or an answer. Keep
dependent work paused until the needed response arrives.

## Merged report

Produce a detailed report that answers `<request>` and combines all
available final subagent reports.

### Synthesis rules

- Merge substantively duplicate findings, feedback, opinions, and
  recommendations into one item. Preserve meaningful
  qualifications, evidence, and scope differences.
- Label every merged item with the exact names of all subagents
  that contributed that item, for example:
  `[trio-1, trio-2]`.
- Within an item, explicitly identify the subagent responsible for
  any unique opinion, feedback, finding, qualification, or
  recommendation. For example: `trio-3 additionally found ...`
  or `trio-2 recommends ...`.
- Preserve conflicting positions and attribute each position to its
  source. Do not turn disagreement into apparent consensus or treat
  majority agreement as proof.
- Distinguish verified findings from inferences and opinions.
  Retain supporting evidence and references without overstating
  what they establish.
- Attribute any new parent inference or recommendation to
  `Parent synthesis`; do not assign it to a subagent or present it
  as trio consensus.
- Disclose missing, incomplete, or failed subagent reports and
  their effect on coverage. Include unresolved questions and
  limitations.

### Report structure

1. **Overall assessment:** a concise answer to the request, with
   the main findings and limits.
2. **Participation and scope:** each named subagent's completion
   status and material coverage gaps.
3. **Merged findings and feedback:** deduplicated items with
   contributor labels, evidence, unique contributions, and relevant
   recommendations.
4. **Disagreements and unique perspectives:** attributed
   differences in reasoning or conclusions. Cross-reference
   existing items instead of repeating them.
5. **Recommended next steps:** consolidated recommendations, their
   rationale, and contributor attribution. Recommendations remain
   proposals; do not implement them.
6. **Open questions and limitations:** unresolved user questions,
   uncertainties, and evidence gaps.

Scale the report to the request, retaining the detail needed to
assess the reasoning and evidence. If there are no findings in a
category, say so briefly rather than inventing content.
