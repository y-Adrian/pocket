## 模块设计
### 模块概览
```puml
@startuml Pocket_Module_Dependency
title Pocket Camera - Module Dependency Diagram
skinparam dpi 300
skinparam componentStyle rectangle
skinparam packageStyle rectangle

package "Application" {
    [Camera App]
    [Gallery App]
    [Settings App]
}

package "Core Services" {
    [Camera Service]
    [Media Service]
    [Storage Service]
    [Power Manager]
    [UI Manager]
}

package "System Framework" {
    [ISP Controller]
    [Encoder]
    [Display Manager]
    [Input Manager]
    [File Manager]
    [Config Manager]
}

package "Hardware Abstraction" {
    [Camera HAL]
    [Display HAL]
    [GPIO HAL]
    [Battery HAL]
}

package "Linux Kernel" {
    [V4L2]
    [DRM/KMS]
    [Input]
    [MMC/SD]
    [I2C]
    [SPI]
    [PWM]
}

package "Hardware" {
    [Image Sensor]
    [LCD]
    [Buttons]
    [TF Card]
    [Battery]
}

Camera App --> Camera Service
Camera App --> UI Manager

Gallery App --> Media Service
Gallery App --> UI Manager

Settings App --> Config Manager
Settings App --> Power Manager

Camera Service --> ISP Controller
Camera Service --> Encoder
Camera Service --> Storage Service

Media Service --> File Manager
Media Service --> Display Manager

Storage Service --> File Manager

ISP Controller --> Camera HAL
Encoder --> Camera HAL
Display Manager --> Display HAL
Input Manager --> GPIO HAL
Power Manager --> Battery HAL

Camera HAL --> V4L2
Display HAL --> DRM/KMS
GPIO HAL --> Input
Battery HAL --> I2C
File Manager --> MMC/SD

V4L2 --> Image Sensor
DRM/KMS --> LCD
Input --> Buttons
MMC/SD --> TF Card
I2C --> Battery

@enduml
```

### Camera

|          | 描述                                       |
| -------- | ------------------------------------------ |
| 职责     | 负责采集图像信息，作为照片、视频的输入来源 |
| 接口     |                                            |
| 依赖关系 |                                            |
| 生命周期 |                                            |

### Display

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Storage

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Button

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Audio

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Battery

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Power

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Settings

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |

### Gallery

|          | 描述 |
| -------- | ---- |
| 职责     |      |
| 接口     |      |
| 依赖关系 |      |
| 生命周期 |      |
