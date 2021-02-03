//swiftlint:disable line_length
import SwiftUI

struct ImageBackgroundDisplayView: View {
    var body: some View {
        GeometryReader { geometry in
            self.drawBackground(geometry: geometry)
        }
    }

    private func drawBackground(geometry: GeometryProxy) -> some View {
        let width = geometry.size.width
        let height = geometry.size.height

        return ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Image(systemName: "heart").imageScale(.large).foregroundColor(Color.black)
                    Text("61 BPM")
                        .font(Font.title)
                        .foregroundColor(Color.black)
                    Spacer()
                }
            }
        }
        .padding(8)
        .frame(width: width * 0.99, height: height * 0.99)
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.tacpadBlue))
        .position(x: width / 2, y: height / 2)
    }

    //Placeholder only
    private let name = "UNSC"
    private let placeholderText = """
    Bulbasaur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ivysaur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Venusaur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Charmander Lorem ipsum dolor sit amet, consectetur adipiscing elit. Charmeleon Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    """
}

struct InformationDisplayBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ImageBackgroundDisplayView()
            .previewLayout(PreviewLayout.fixed(width: 1218, height: 562))
            .previewDisplayName("iPhone 11 Pro, XS")
    }
}
