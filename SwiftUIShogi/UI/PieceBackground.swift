import SwiftUI

struct PieceBackground: View {
    static let backgroundColor = SwiftUI.Color(red: 245 / 255, green: 222 / 255, blue: 179 / 255)

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width
                let spacing = width * 0.06
                let middle = width / 2
                let topWidth = 0.38 * width
                let topHeight = 0.12 * height

                let topPoint = CGPoint(x: middle - topWidth, y: topHeight + spacing)
                path.addLines([
                    topPoint,
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: spacing),
                    topPoint
                ])
            }
            .fill(Self.backgroundColor, strokeContent: Color.black, strokeStyle: StrokeStyle(lineWidth: 0.1))
        }
    }
}

struct PieceBackground_Previews: PreviewProvider {
    static var previews: some View {
        PieceBackground()
    }
}
