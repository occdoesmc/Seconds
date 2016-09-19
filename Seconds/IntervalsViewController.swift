import UIKit

class IntervalsViewController: UIViewController {
    
    // MARK: Data model
    
    let intervals = IntervalList.preferredIntervals
    
    // MARK: Status bar appearance
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
}

extension IntervalsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intervals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let interval = intervals[indexPath.item]
        let intervalCell = collectionView.dequeueReusableCell(withReuseIdentifier: IntervalCell.preferredReuseIdentifier, for: indexPath) as! IntervalCell
        intervalCell.secondsLabel.text = String(interval)
        return intervalCell
    }
    
}
