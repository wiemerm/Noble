import SwiftUI

struct RightAngleSlit: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        Path { path in
            let percentDropLeft: CGFloat = 0.93

            path.move(to: CGPoint(x: width * 0.91, y: height * 0.1))
            path.addLine(to: CGPoint(x: width * percentDropLeft, y: height * 0.2))
            path.addLine(to: CGPoint(x: width * percentDropLeft, y: height * 0.77))
        }
        .stroke(style: StrokeStyle(lineWidth: width * 0.02, lineCap: .round, lineJoin: .bevel))
        .foregroundColor(Color.tacpadBlue)
    }
}

struct RightAngleSlit_Previews: PreviewProvider {
    static var previews: some View {
        RightAngleSlit(width: 568, height: 320)
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
            .previewDisplayName("iPhone SE 2020")

        RightAngleSlit(width: 914, height: 422)
            .previewLayout(PreviewLayout.fixed(width: 914, height: 422))
            .previewDisplayName("iPhone 11 Pro, XS")

        RightAngleSlit(width: 1008, height: 467)
            .previewLayout(PreviewLayout.fixed(width: 1008, height: 467))
            .previewDisplayName("iPhone 11 Pro Max, XS Max")
    }
}
