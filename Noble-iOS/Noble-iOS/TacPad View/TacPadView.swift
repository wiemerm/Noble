import SwiftUI

struct TacPadView: View {
    @Binding var navBarHidden: Bool

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height

            BackgroundView(width: width, height: height)

            DialView(lineWidth: width * 0.01)
                .frame(width: width * 0.2, height: width * 0.2)
                .position(x: width * 0.22, y: height * 0.68)

            DisplayView()
                .frame(width: width * 0.425, height: height * 0.375)
                .position(x: width * 0.65, y: height * 0.28)

            TacPadButtonsGrid()
                .frame(width: width * 0.25, height: height * 0.175, alignment: .topLeading)
                .position(x: width * 0.175, y: height * 0.2)
        }
        .onAppear {
            DispatchQueue.main.async {
                navBarHidden = true
                AppDelegate.orientationLock = UIInterfaceOrientationMask.landscapeLeft
                UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
                UINavigationController.attemptRotationToDeviceOrientation()
            }
        }
    }
}

struct TacPadView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TacPadView(navBarHidden: .constant(true))
                .previewLayout(PreviewLayout.fixed(width: 568, height: 320))
                .previewDisplayName("iPhone SE 2020")

            TacPadView(navBarHidden: .constant(true))
                .previewLayout(PreviewLayout.fixed(width: 609, height: 281))
                .previewDisplayName("iPhone 11 Pro, XS")

            TacPadView(navBarHidden: .constant(true))
                .previewLayout(PreviewLayout.fixed(width: 672, height: 311))
                .previewDisplayName("iPhone 11 Pro Max, XS Max")
        }
    }
}
