import SwiftUI

struct DisplayView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let cornerRadius = height * 0.07

            ZStack {
                ScrollView(.vertical, showsIndicators: false) {

                }
                .padding(height * 0.05)
                .frame(width: width * 0.9, height: height * 0.85)
                .background(RoundedRectangle(cornerRadius: cornerRadius)
                                .foregroundColor(Color.tacpadBlue))
                .position(x: width / 2, y: height / 2)
            }.border(Color.tacpadBlue, width: height * 0.03, cornerRadius: cornerRadius)
        }
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
            .previewLayout(PreviewLayout
                            .fixed(width: 1218, height: 562))
            .previewDisplayName("iPhone 11 Pro, XS")
    }
}

extension View {
    func border(_ color: Color, width: CGFloat, cornerRadius: CGFloat) -> some View {
        self.overlay(RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(lineWidth: width)
                        .foregroundColor(color))
    }
}
