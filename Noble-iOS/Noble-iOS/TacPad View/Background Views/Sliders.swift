import SwiftUI

struct Sliders: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        ZStack {
            SliderView(width: height * 0.01, height: height * 0.25)
                .position(x: width * 0.515, y: height * 0.5)

            SliderView(width: height * 0.01, height: height * 0.25)
                .position(x: width * 0.6, y: height * 0.5)

            SliderView(width: height * 0.01, height: height * 0.25)
                .position(x: width * 0.685, y: height * 0.5)

            Rectangle().fill(Color.tacpadBlue)
                .frame(width: height * 0.01, height: height * 0.25)
                .position(x: width * 0.77, y: height * 0.5)

            Rectangle().fill(Color.tacpadBlue)
                .frame(width: width * 0.06, height: height * 0.01)
                .position(x: width * 0.55, y: height * 0.67)

            Rectangle().fill(Color.tacpadBlue)
                .frame(width: width * 0.06, height: height * 0.01)
                .position(x: width * 0.64, y: height * 0.67)

            Rectangle().fill(Color.tacpadBlue)
                .frame(width: width * 0.34, height: height * 0.01)
                .position(x: width * 0.67, y: height * 0.7)

            Rectangle().fill(Color.tacpadBlue)
                .frame(width: height * 0.01, height: height * 0.125)
                .position(x: width * 0.425, y: height * 0.64)
        }
    }
}

struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        Sliders(width: 568, height: 320)
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
            .previewDisplayName("iPhone SE 2020")

        Sliders(width: 914, height: 422)
            .previewLayout(PreviewLayout.fixed(width: 914, height: 422))
            .previewDisplayName("iPhone 11 Pro, XS")

        Sliders(width: 1008, height: 467)
            .previewLayout(PreviewLayout.fixed(width: 1008, height: 467))
            .previewDisplayName("iPhone 11 Pro Max, XS Max")
    }
}
