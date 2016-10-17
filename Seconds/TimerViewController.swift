import UIKit
import AVFoundation

class TimerViewController: UIViewController {

    @IBOutlet private var timeLabel: UILabel!
    
    var seconds = 0
    var timeMultiplier = 0.0
    
    private var timer: Timer?
    
    lazy var player: AVPlayer = {
        let soundURL = Bundle.main.url(forResource: "TimerDone", withExtension: "m4a")!
        return AVPlayer(url: soundURL)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTimeLabel()
        try! AVAudioSession.sharedInstance().setActive(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        timer = Timer.scheduledTimer(withTimeInterval: 1 / timeMultiplier, repeats: true, block: timerDidFire)
    }
    
    private func timerDidFire(timer: Timer) {
        seconds -= 1
        updateTimeLabel()
        if seconds == 0 {
            timer.invalidate()
            timerDone()
        }
    }
    
    private func timerDone() {
        player.play()
        present(alertController, animated: true, completion: nil)
    }
    
    var alertController: UIAlertController {
        let alertTitle = NSLocalizedString("Timer Done", comment: "")
        let alertController = UIAlertController(title: alertTitle, message: nil, preferredStyle: .alert)
        let okeyTitle = NSLocalizedString("Okay", comment: "")
        let okayAction = UIAlertAction(title: okeyTitle, style: .default) { [navigationController] _ in
            _ = navigationController?.popViewController(animated: true)
        }
        alertController.addAction(okayAction)
        return alertController
    }
    

    private func updateTimeLabel() {
        timeLabel.text = String(seconds)
    }

}
