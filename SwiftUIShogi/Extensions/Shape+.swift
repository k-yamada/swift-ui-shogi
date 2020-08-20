import SwiftUI

extension Shape {
    /// fills and strokes a shape
    public func fill<S:ShapeStyle>(
        _ fillContent: S,
        strokeContent: S,
        strokeStyle: StrokeStyle
    ) -> some View {
        ZStack {
            self.fill(fillContent)
            self.stroke(strokeContent, style: strokeStyle)
        }
    }
}
