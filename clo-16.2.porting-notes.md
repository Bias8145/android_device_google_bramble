# CLO 16.2 bramble port

## Base
- LineageOS `lineage-23.2` hardware tree
- Android 16 reference: crDroid `16.0`
- Target: AOSPA 16.2 / CLO

## Current decision
The core `device-bramble.mk` and `aosp_bramble.mk` are identical between LineageOS 23.2 and crDroid 16.0. Hardware-specific configuration should therefore be preserved rather than rewritten.

## Remaining integration work
- Replace ROM-specific product inheritance only where required by AOSPA 16.2.
- Keep device hardware configuration, init, audio, vibrator, NFC, thermal, Bluetooth and overlays unless a build/interface incompatibility is proven.
- Do not introduce a guessed CAF/CLO stack into the device tree. CLO integration must follow the AOSPA 16.2 manifest/build interfaces.
- Redbull/common dependencies are intentionally handled in the next stage of the port.
