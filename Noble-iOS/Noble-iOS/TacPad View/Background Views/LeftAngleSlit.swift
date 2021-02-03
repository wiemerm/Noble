import SwiftUI

struct LeftAngleSlit: View {
    let width: CGFloat
    let height: CGFloat

    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: width * 0.32, y: Constants.offset))
            path.addLine(to: CGPoint(x: width * 0.36, y: height * 0.36))
            path.addLine(to: CGPoint(x: width * 0.36, y: height * 0.77))
        }
        .stroke(style: StrokeStyle(lineWidth: width * 0.02, lineCap: .round, lineJoin: .bevel))
        .foregroundColor(Color.tacpadBlue)
    }
}

struct LeftAngleSlit_Previews: PreviewProvider {
    static var previews: some View {
        LeftAngleSlit(width: 568, height: 320)
            .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
            .previewDisplayName("iPhone SE 2020")

        LeftAngleSlit(width: 914, height: 422)
            .previewLayout(PreviewLayout.fixed(width: 914, height: 422))
            .previewDisplayName("iPhone 11 Pro, XS")

        LeftAngleSlit(width: 1008, height: 467)
            .previewLayout(PreviewLayout.fixed(width: 1008, height: 467))
            .previewDisplayName("iPhone 11 Pro Max, XS Max")
    }
}
