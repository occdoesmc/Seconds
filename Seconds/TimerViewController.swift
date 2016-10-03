import UIKit

class TimerViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "13"
    }

}
