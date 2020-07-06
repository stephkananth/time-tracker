
#!/bin/bash

set -eo pipefail

xcodebuild  -project TimeTracker.xcodeproj \
            -scheme TimeTracker \
            -destination platform=iOS\ Simulator,OS=13.5,name=iPhone\ 11 \
            clean test | xcpretty