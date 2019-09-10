# handoff-ios
iOS Handoff and ubiquity key-value store sample

Works together with https://github.com/bzhoek/handoff-mac to demonstrate Handoff and the Ubiquity key-value store.

For ubiquity to work, both `.entitlements` files need to have the same value for `com.apple.developer.ubiquity-kvstore-identifier`, i.e. `$(TeamIdentifierPrefix)com.zilverline.classroom`.

Actual updates appear to take ~3 seconds.
