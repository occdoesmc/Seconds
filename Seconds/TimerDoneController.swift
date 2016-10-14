import UIKit

class TimerDoneController {
    
    var onOkay: () -> Void = {}
    
    var alertController: UIAlertController {
        let alertTitle = NSLocalizedString("Timer Done", comment: "")
        let alertController = UIAlertController(title: alertTitle, message: nil, preferredStyle: .alert)
        let okeyTitle = NSLocalizedString("Okay", comment: "")
        let okayAction = UIAlertAction(title: okeyTitle, style: .default) { [onOkay] _ in onOkay() }
        alertController.addAction(okayAction)
        return alertController
    }
    
}
