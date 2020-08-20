import SwiftUI
import SwiftShogi

struct BoardSideView: View {
    private let color: SwiftShogi.Color

    init(color: SwiftShogi.Color) {
        self.color = color
    }

    var body: some View {
        HStack(spacing: 12) {
            Spacer()

            Text(color.string)
            PieceStandView(color: color)

            Spacer().frame(height: 8)
        }
        .frame(width: Const.boardHeight, height: 40)
        .rotationEffect(color.angle)
        .font(.custom(Const.fontName, size: Const.boardSideFontSize))
        .foregroundColor(.black)
    }
}

struct BoardSideView_Previews: PreviewProvider {
    static var previews: some View {
        let capturedPieces: [Piece] = [
            Piece(kind: .gold, color: .black),
            Piece(kind: .silver(.normal), color: .white),
            Piece(kind: .silver(.normal), color: .white)
        ]
        let sfen: SFEN = .default
        let game = Game(board: sfen.board, color: .black, capturedPieces: capturedPieces)
        return Group {
            BoardSideView(color: .black).environmentObject(UserData(game: game))
            BoardSideView(color: .white).environmentObject(UserData(game: game))
        }
        .previewLayout(.fixed(width: 500, height: 300))
    }
}
