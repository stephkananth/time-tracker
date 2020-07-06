
#!/bin/bash

set -eo pipefail

xcodebuild  -project closet.xcodeproj \
            -scheme closet \
            -destination platform=iOS\ Simulator,OS=13.5,name=iPhone\ 11 \
            clean test | xcpretty