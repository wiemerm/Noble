import SwiftUI

struct BackgroundView: View {
    let width: CGFloat
    let height: CGFloat
    let offset = Constants.offset
    let cornerRadius = Constants.cornerRadius

    var body: some View {

        ZStack(alignment: .topLeading) {
            BaseBackgroundView(width: width, height: height)

            LeftAngleSlit(width: width, height: height)

            RightAngleSlit(width: width, height: height)

            //Rectangular slit at the top
            Rectangle()
                .frame(width: width * 0.01, height: height * 0.45)
                .offset(x: width * 0.4, y: offset)
                .foregroundColor(Color.tacpadBlue)

            //Rounded rectangle underneath the buttons
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(Color.tacpadBlue)
                .frame(width: width * 0.07, height: height * 0.22)
                .offset(x: width * 0.06, y: height * 0.4)

            //Line from right slit to mini-display
            let rectWidth = width * 0.93 - width * 0.8
            Rectangle().fill(Color.tacpadBlue)
                .offset(x: width * 0.8, y: height * 0.32)
                .frame(width: rectWidth, height: height * 0.01)

            //"Sliders underneath main display
            RoundedRectangle(cornerRadius: height * 0.025)
                .stroke(Color.tacpadBlue, lineWidth: height * 0.02)
                .frame(width: width * 0.53, height: height * 0.2)
                .offset(x: width * 0.4, y: height * 0.55)

            Sliders(width: width, height: height)

            Circle().fill(Color.tacpadBlue)
                .frame(width: width * 0.025)
                .position(x: width * 0.86, y: height * 0.61)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(width: 568, height: 320)
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
            .previewDisplayName("iPhone SE 2020")

        BackgroundView(width: 914, height: 422)
            .previewLayout(PreviewLayout.fixed(width: 914, height: 422))
            .previewDisplayName("iPhone 11 Pro, XS")

        BackgroundView(width: 1008, height: 467)
            .previewLayout(PreviewLayout.fixed(width: 1008, height: 467))
            .previewDisplayName("iPhone 11 Pro Max, XS Max")
    }
}
