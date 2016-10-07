import UIKit

class IntervalListCell: UICollectionViewCell {

    @IBOutlet var secondsLabel: UILabel!
    
    var seconds: Int? {
        didSet {
            guard let seconds = seconds else {
                secondsLabel.text = nil
                return
            }
            secondsLabel.text = String(seconds)
        }
    }
    
    static let preferredReuseIdentifier = "Interval List Cell"

}
