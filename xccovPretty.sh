#/bin/bash

XCCOVPRETTY="${GITHUB_ACTION_PATH}/xccovPretty"

curl -L https://github.com/prachigauriar/xccovPretty/releases/download/1.0.0/xccovPretty -o "${XCCOVPRETTY}"

chmod +x "${XCCOVPRETTY}"

echo -e "\033[1;33m▸\033[0m Code Coverage"

xcrun xccov view --report "${RESULT_BUNDLE}" --json 2> /dev/null \
    | "${XCCOVPRETTY}" -includeTargets "${INCLUDED_TARGETS}"
