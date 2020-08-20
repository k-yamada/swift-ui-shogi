import SwiftUI
import SwiftShogi

struct SquareView: View {
    @EnvironmentObject var userData: UserData
    let square: Square
    let piece: Piece?

    var body: some View {
        ZStack {
            if piece != nil {
                PieceView(piece: piece!, fontName: fontName)
            }
        }
        .frame(width: Const.squareSize, height: Const.squareSize)
    }

    private var fontName: String {
        userData.previousMove?.destination == .board(square)
            ? Const.boldFontName
            : Const.fontName
    }
}

struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SquareView(square: .fiveI, piece: Piece(kind: .king, color: .black))
            SquareView(square: .fiveI, piece: nil)
        }
        .previewLayout(.fixed(width: Const.squareSize + 10, height: Const.squareSize + 10))
        .environmentObject(UserData(game: Game(sfen: .default)))
    }
}
