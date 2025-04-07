import SwiftUI

public struct MoneyText: View {
    let amount: Double
    let font: Font
    let color: Color

    public init(amount: Double,
                font: Font = .body,
                color: Color = .primary) {
        self.amount = amount
        self.font = font
        self.color = color
    }

    var formattedText: String {
        let rounded = (amount * 100).rounded() / 100
        let string = String(format: "%.2f", rounded)

        if string.hasSuffix("00") {
            return String(Int(rounded))
        } else if string.hasSuffix("0") {
            return String(format: "%.1f", rounded)
        } else {
            return string
        }
    }

    public var body: some View {
        Text(formattedText)
            .font(font)
            .foregroundColor(color)
    }
}
