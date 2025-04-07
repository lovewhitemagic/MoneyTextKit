# 💰 MoneyTextKit

一个简洁轻量的 SwiftUI 金额展示组件，适用于记账、消费记录、财务类 App。

## ✨ 特性

- 自动格式化金额：
  - 没有小数则不显示小数（如：`100`）
  - 有一位小数保留一位（如：`100.5`）
  - 有两位小数保留两位（如：`100.56`）
  - 超过两位小数自动四舍五入（如：`100.567` → `100.57`）
- 不显示货币符号
- 支持自定义字体和颜色，适配多种 UI 风格

## 📦 安装方式

### Swift Package Manager（推荐）

在你的 Xcode 项目中：

1. 打开 `File > Add Packages...`
2. 添加本地或远程 Git 地址
3. 选择 `MoneyTextKit`

### 手动集成

将 `Sources/MoneyTextKit` 文件夹拖入你的 Xcode 项目中即可使用。

## 🧩 使用示例

```swift
import MoneyTextKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            MoneyText(amount: 100)
            MoneyText(amount: 12.5, font: .title, color: .red)
            MoneyText(amount: 88.888)
        }
    }
}
```

## 🧪 显示效果

| 输入金额    | 显示结果   |
|------------|------------|
| `100`      | `100`      |
| `100.5`    | `100.5`    |
| `100.56`   | `100.56`   |
| `100.567`  | `100.57`   |

