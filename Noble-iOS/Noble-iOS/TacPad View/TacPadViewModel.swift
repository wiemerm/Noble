import Foundation

class TacPadViewModel: ObservableObject {
    private let audioService: AudioService
    init(audioService: AudioService = AudioService()) {
        self.audioService = audioService
    }

    func play(_ clip: CarterSoundBites) {
        audioService.play(clip)
    }
}
