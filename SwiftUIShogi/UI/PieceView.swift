import SwiftUI
import SwiftShogi

struct PieceView: View {
    let piece: Piece
    let fontName: String

    init(piece: Piece, fontName: String = Const.fontName) {
        self.piece = piece
        self.fontName = fontName
    }
    
    var body: some View {
        ZStack {
            PieceBackground()
            Text(piece.string)
                .minimumScaleFactor(0.01)
                .padding(4)
                .font(.custom(fontName, size: 500))
                .foregroundColor(.black)
        }
        .frame(width: Const.squareSize, height: Const.squareSize)
        .rotationEffect(piece.color.angle)
    }
}

struct PieceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PieceView(piece: Piece(kind: .rook(.normal), color: .black), fontName: Const.fontName)
            PieceView(piece: Piece(kind: .bishop(.normal), color: .white), fontName: Const.boldFontName)
        }
        .previewLayout(.fixed(width: Const.squareSize + 10, height: Const.squareSize + 10))
    }
}
