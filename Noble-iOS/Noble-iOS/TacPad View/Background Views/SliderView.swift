import SwiftUI

struct SliderView: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        ZStack {
        Rectangle()
            .fill(Color.tacpadBlue)
            .frame(width: width, height: height)

        Rectangle()
            .fill(Color.tacpadBlue)
            .frame(width: width * 8, height: width)
            .offset(y: (height / 2) - (width * 2))
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(width: 10, height: 150)
    }
}
