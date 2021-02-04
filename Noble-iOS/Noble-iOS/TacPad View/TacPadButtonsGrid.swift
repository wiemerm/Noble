import SwiftUI

struct TacPadButtonsGrid: View {
    private let viewModel = TacPadButtonsViewModel()
    private let spacing: CGFloat = 16

    var body: some View {
        GeometryReader { geometry in

            VStack(alignment: .leading) {
                addButtonRow(geometry: geometry,
                             leftButton: Button(action: { viewModel.playSoundClip(clip: .intro) },
                                                label: {Text("1")}),
                             rightButton: Button(action: { viewModel.playSoundClip(clip: .onYourOwn) },
                                                 label: {Text("2")}))
                Spacer().frame(height: spacing)

                addButtonRow(geometry: geometry,
                             leftButton: Button(action: { viewModel.playSoundClip(clip: .loneWolf) },
                                   label: {Text("3")}),
                             rightButton: Button(action: { viewModel.playSoundClip(clip: .covenant) },
                                    label: {Text("4")}))
            }
        }
    }

    private func addButtonRow(geometry: GeometryProxy,
                              leftButton: Button<Text>,
                              rightButton: Button<Text>) -> some View {
        let width = (geometry.size.width - spacing) / 2.1
        let height = (geometry.size.height) / 2

        return HStack(alignment: .top) {
            leftButton
                .frame(width: width, height: height)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.tacpadBlue, lineWidth: 5))

            Spacer().frame(width: spacing)

            rightButton
                .frame(width: width, height: height)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.tacpadBlue, lineWidth: 5))
        }
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        TacPadButtonsGrid()
    }
}
