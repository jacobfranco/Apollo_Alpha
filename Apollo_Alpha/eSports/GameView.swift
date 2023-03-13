import SwiftUI

struct GameView: View {
    let game: Game
    
    var body: some View {
        NavigationLink(destination: ExploreView(selectedGame: game)) {
            ZStack(alignment: .bottom){
                Image(game.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 150)
                    .cornerRadius(5)
                    .overlay(RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.white, lineWidth: 0.5))
                    .clipped()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 180, height: 30)
                        .foregroundColor(Color.black)
                        .opacity(0.75)
                        .blur(radius: 0.5)
                        .overlay(RoundedRectangle(cornerRadius: 5)
                            .stroke(Color("Gray"), lineWidth: 0.5))
                    
                    Text(game.title)
                        .foregroundColor(Color.white)
                        .font(Font.custom("URWDIN-Regular", size: 12))
                    
                }
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(game: GameGridViewModel().games[0])
    }
}
