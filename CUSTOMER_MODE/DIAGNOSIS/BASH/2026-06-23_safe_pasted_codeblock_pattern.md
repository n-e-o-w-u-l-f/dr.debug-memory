# Safe Pasted Codeblock Pattern

Date: 2026-06-23
Status: CUSTOMER_MODE_DIAGNOSTIC_PATTERN
Canonical: false
Review required: true

## Rule

For pasted shell blocks in CUSTOMER_MODE:

- Do not use bare `exit` for expected validation failures.
- Do not continue after fatal context failure.
- Do not run repo-specific checks outside the verified repository.
- Always print the final Dr.Debug output marker.
- Wait for user output before the next action.

## Minimal pattern

    REASON="${REASON:-Describe task}"
    echo "== DR. DEBUG ${REASON} ANALYZING MACHINE =="

    DRDEBUG_STATUS="OK"
    DRDEBUG_ERRORS=""

    fail() {
      DRDEBUG_STATUS="FAIL"
      DRDEBUG_ERRORS="${DRDEBUG_ERRORS}
    - $*"
      echo "ERROR: $*"
    }

    echo "Current directory: $(pwd)"

    if [ ! -d ".git" ]; then
      fail "Not a Git repository root. No repository-specific checks will run."
    fi

    if [ "$DRDEBUG_STATUS" = "OK" ]; then
      echo "Run safe checked actions here."
    fi

    echo
    echo "Final status: $DRDEBUG_STATUS"
    echo "$DRDEBUG_ERRORS"

    echo
    echo "== DR. DEBUG's NEEDED OUTPUT =="
    echo "Copy the content between the Dr.Debug markers back to Dr.Debug."
