import shared
import Foundation

class TacPadViewModel: ObservableObject {
    private let audioService: AudioService

    init(audioService: AudioService = AudioService()) {
        self.audioService = audioService
    }

    func playClip(_ soundBite: CarterSoundBites) {
        audioService.playSoundClip(name: soundBite.rawValue)
    }
}
