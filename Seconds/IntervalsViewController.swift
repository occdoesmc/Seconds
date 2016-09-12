import UIKit

class IntervalsViewController: UIViewController {
    
    let intervals = IntervalList.preferredIntervals
    
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
        let intervalCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Interval Cell", for: indexPath) as! IntervalCell
        intervalCell.secondsLabel?.text = String(interval)
        return intervalCell
    }
    
}
