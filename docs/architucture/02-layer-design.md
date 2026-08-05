## layer design

### 概览

```bash
┌─────────────────────────────────┐
│           Application Layer      │
│                                  │
│  Camera App                      │
│  Gallery                         │
│  Settings                        │
│  System UI                       │
└─────────────────────────────────┘
                ▲
                │
┌─────────────────────────────────┐
│          Framework Layer         │
│                                  │
│  Camera Manager                  │
│  Media Manager                   │
│  Display Manager                 │
│  Input Manager                   │
│  Power Manager                   │
│  Storage Manager                 │
└─────────────────────────────────┘
                ▲
                │
┌─────────────────────────────────┐
│          HAL Layer               │
│                                  │
│  Camera HAL                      │
│  Display HAL                     │
│  Audio HAL                       │
│  Input HAL                       │
│  Battery HAL                     │
└─────────────────────────────────┘
                ▲
                │
┌─────────────────────────────────┐
│       Linux Driver Layer         │
│                                  │
│  V4L2                           │
│  DRM/KMS                        │
│  ALSA                           │
│  GPIO/Input                     │
│  I2C                            │
│  SPI                            │
│  Power Supply                   │
└─────────────────────────────────┘
                ▲
                │
┌─────────────────────────────────┐
│          Kernel                  │
│                                  │
│  Device Tree                     │
│  Driver                          │
│  Scheduler                       │
│  Memory                          │
└─────────────────────────────────┘
                ▲
                │
┌─────────────────────────────────┐
│          Hardware                │
│                                  │
│ Milk-V Duo-S                    │
│ ST7701 LCD                      │
│ Camera Sensor                   │
│ Mic                             │
│ Battery                         │
│ Buttons                         │
└─────────────────────────────────┘
```

![软件架构图](uml/software/software-architecture.puml)
