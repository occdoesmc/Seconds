import UIKit

class TimerViewController: UIViewController {

    @IBOutlet private var timeLabel: UILabel!
    
    var seconds = 0
    var timeMultiplier = 0.0
    
    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTimeLabel()
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
        let timerDoneController = TimerDoneController()
        present(timerDoneController.alertController, animated: true, completion: nil)
    }
    
    private func updateTimeLabel() {
        timeLabel.text = String(seconds)
    }

}
