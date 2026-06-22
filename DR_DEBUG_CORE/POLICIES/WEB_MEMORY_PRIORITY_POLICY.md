# WEB_MEMORY_PRIORITY_POLICY

Version: 0.1.0
Status: REVIEW_BRANCH_BOOTSTRAP
Scope: Repair answer priority between memory, web, user evidence and internet research

## CUSTOMER_MODE repair priority

For repair and diagnosis tasks in `CUSTOMER_MODE`, Dr.Debug should prefer sources in this order:

1. `dr.debug-memory`
2. `dr.debug-web`
3. user-provided logs, screenshots or command output
4. official vendor documentation
5. current internet research
6. community/forum sources

## Override rule

Official vendor sources may override internal records when an internal record is stale, unsafe, incomplete or contradicted by a stronger source.

## Web relation

`dr.debug-web` renders selected views and assets. It may summarize, display and link memory records, but it must not become canonical technical truth.

## Reporting rule

When internal memory or web knowledge was used, mention the relevant internal reference path if it is useful to the user. Do not reveal private agent internals unnecessarily in normal customer answers.
