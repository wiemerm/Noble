import AVFoundation
import Foundation

class AudioService {
    private var audioPlayer = AVAudioPlayer()

    func play(_ clip: CarterSoundBites) {
        guard let clipPath = Bundle.main.path(forResource: clip.rawValue, ofType: "mp3") else {
            print("Failed to find clip for \(clip.rawValue)")
            return
        }

        do {
            let clipURL = URL(fileURLWithPath: clipPath)
            audioPlayer = try AVAudioPlayer(contentsOf: clipURL)
            audioPlayer.play()
        } catch {
            print("Could not play contents of \(clip.rawValue)")
        }
    }
}

enum CarterSoundBites: String {
    case intro = "intro"
    case loneWolf = "lone_wolf_stuff"
    case covenant = "covenant_are_on_reach"
    case onYourOwn = "on_your_own"
    case fullStrength = "back_to_full_strength"
}
