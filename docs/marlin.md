# Modifications

## configuration.h

```
#define INVERT_E0_DIR true
```

### standard

```
// Travel limits (mm) after homing, corresponding to endstop positions.
#define X_MIN_POS -33
#define Y_MIN_POS -5
#define Z_MIN_POS 0
#define X_MAX_POS X_BED_SIZE
#define Y_MAX_POS Y_BED_SIZE
#define Z_MAX_POS 240
```

### [Anet A8 E3D V6 Bowden MODULAR X Carriage V4 *BEST ONE*](https://www.thingiverse.com/thing:2193695)
```
// Travel limits (mm) after homing, corresponding to endstop positions.
#define X_MIN_POS -13
#define Y_MIN_POS -18
#define Z_MIN_POS 0
#define X_MAX_POS X_BED_SIZE
#define Y_MAX_POS Y_BED_SIZE
#define Z_MAX_POS 240
```

```
// Optional custom name for your RepStrap or other custom machine
// Displayed in the LCD "Ready" message
#define CUSTOM_MACHINE_NAME "BOMBONS"
```

### titan
```
/**
   Default Axis Steps Per Unit (steps/mm)
   Override with M92
                                        X, Y, Z, E0 [, E1[, E2[, E3[, E4]]]]
*/
#define DEFAULT_AXIS_STEPS_PER_UNIT   { 100, 100, 400, 300 }
```
