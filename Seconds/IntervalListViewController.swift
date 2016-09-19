import UIKit

class IntervalListViewController: UIViewController {
    
    // MARK: Data model
    
    let intervals = IntervalList.preferredIntervals
    
    // MARK: Status bar appearance
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
}

extension IntervalListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intervals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let interval = intervals[indexPath.item]
        let intervalListCell = collectionView.dequeueReusableCell(withReuseIdentifier: IntervalListCell.preferredReuseIdentifier, for: indexPath) as! IntervalListCell
        intervalListCell.secondsLabel.text = String(interval)
        return intervalListCell
    }
    
}
