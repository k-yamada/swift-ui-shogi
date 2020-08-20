import SwiftUI
import SwiftShogi

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            BoardSideView(color: .white)
            BoardView()
            BoardSideView(color: .black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        let capturedPieces: [Piece] = [
//            Piece(kind: .gold, color: .black),
//            Piece(kind: .silver(.normal), color: .white),
//            Piece(kind: .silver(.normal), color: .white)
//        ]
//        let sfen: SFEN = .default
//        let game = Game(board: sfen.board, color: .black, capturedPieces: capturedPieces)
//        return ContentView().environmentObject(UserData(game: game))
        ContentView().environmentObject(UserData(game: Game(sfen: .default)))
    }
}
