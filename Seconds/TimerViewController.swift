import UIKit

class TimerViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    var seconds = 0
    var timeMultiplier = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(seconds)
    }

}
