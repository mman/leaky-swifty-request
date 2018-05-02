# leaky-swifty-request

This example demonstrates that repetitive use of ``RestRequest`` from https://github.com/IBM-Swift/SwiftyRequest will leak memory.

Open the ``leaky-swifty-request.xcodeproj`` in XCode 9.3, run via leaks instrument and you will see ``URLSession`` leaking for each invocation of ``RestRequest.response()``.

### Root Cause Analysis

The root cause seems to be a retain cycle somewhere in ``URLSession`` code.

### Workaround

Use ``URLSession.shared`` unless anyting extra is needed.

