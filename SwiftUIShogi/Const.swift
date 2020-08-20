import SwiftUI
import SwiftShogi

struct Const {
    static let boardFontSize: CGFloat = 20
    static let boardSideFontSize: CGFloat = 21
    static let boardPadding: CGFloat = 1
    static var squareSize: CGFloat {
        let bounds = UIScreen.main.bounds
        let screenMin = min(bounds.width, bounds.height)
        return (screenMin - boardPadding * 2) / CGFloat(File.allCases.count)
    }
    static let boardWidth = Const.squareSize * CGFloat(File.allCases.count)
    static let boardHeight = Const.squareSize * CGFloat(Rank.allCases.count)
    static let fontName = "Hiragino Mincho Pro W3"
    static let boldFontName = "Hiragino Sans W6"
}
