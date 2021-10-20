#/bin/bash

XCCOVPRETTY="${GITHUB_ACTION_PATH}/xccovPretty"

curl -sSLo "${XCCOVPRETTY}" https://github.com/prachigauriar/xccovPretty/releases/download/1.0.0/xccovPretty
chmod +x "${XCCOVPRETTY}"
xcrun xccov view --report "${RESULT_BUNDLE}" --json 2> /dev/null \
    | "${XCCOVPRETTY}" -includeTargets "${INCLUDED_TARGETS}"
