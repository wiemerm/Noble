import SwiftUI

struct DialView: View {
    let lineWidth: CGFloat

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width

            Circle()
                .stroke(Color.tacpadBlue, lineWidth: lineWidth)
            RoundedRectangle(cornerRadius: width * 0.02)
                .stroke(Color.tacpadBlue, lineWidth: lineWidth * 0.75)
                .frame(width: width * 0.43, height: width * 0.18)
                .position(x: width * 0.56, y: width * 0.25)

            Group {
                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.2, y: width * 0.32)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.2, y: width * 0.57)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.52, y: width * 0.57)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.81, y: width * 0.57)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.3, y: width * 0.77)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.62, y: width * 0.71)

                Circle()
                    .fill(Color.tacpadBlue)
                    .frame(width: width * 0.1)
                    .position(x: width * 0.76, y: width * 0.75)
            }
        }

    }
}

struct DialView_Previews: PreviewProvider {
    static var previews: some View {
        DialView(lineWidth: 10).frame(width: 250, height: 250)
    }
}
