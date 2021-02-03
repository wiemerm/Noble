import SwiftUI

struct BaseBackgroundView: View {
    let width: CGFloat
    let height: CGFloat
    private let offset = Constants.offset
    private let cornerRadius = Constants.cornerRadius

    var body: some View {
        let left = offset / 2
        let right = width - offset
        let bottom = height - offset

        Path { path in
            path.move(to: CGPoint(x: right / 2.0, y: offset))
            path.addLine(to: CGPoint(x: (right - cornerRadius),
                                     y: offset))
            path.addArc(center: CGPoint(x: right - cornerRadius,
                                        y: offset + cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: -90),
                        endAngle: Angle(degrees: 0),
                        clockwise: false)

            path.addLine(to: CGPoint(x: right, y: bottom * 0.86))

            path.addLine(to: CGPoint(x: right * 0.42, y: bottom * 0.85))
            path.addLine(to: CGPoint(x: right * 0.35, y: bottom))

            path.addLine(to: CGPoint(x: left + cornerRadius,
                                     y: bottom))
            path.addArc(center: CGPoint(x: left + cornerRadius,
                                        y: bottom - cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 90),
                        endAngle: Angle(degrees: 180),
                        clockwise: false)

            path.addLine(to: CGPoint(x: left,
                                     y: offset + cornerRadius))
            path.addArc(center: CGPoint(x: left + cornerRadius,
                                        y: offset + cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 180),
                        endAngle: Angle(degrees: -90),
                        clockwise: false)
        }.fill(Color.black)
    }
}

struct BaseBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BaseBackgroundView(width: 568, height: 320)
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
            .previewDisplayName("iPhone SE 2020")

        BaseBackgroundView(width: 914, height: 422)
            .previewLayout(PreviewLayout.fixed(width: 914, height: 422))
            .previewDisplayName("iPhone 11 Pro, XS")

        BaseBackgroundView(width: 1008, height: 467)
            .previewLayout(PreviewLayout.fixed(width: 1008, height: 467))
            .previewDisplayName("iPhone 11 Pro Max, XS Max")
    }
}
