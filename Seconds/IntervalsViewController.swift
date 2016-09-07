import UIKit

class IntervalsViewController: UIViewController {
    
    let intervals = IntervalList.preferredIntervals
        
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}

extension IntervalsViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intervals.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let interval = intervals[indexPath.item]
        let intervalCell = collectionView.dequeueReusableCellWithReuseIdentifier("Interval Cell", forIndexPath: indexPath) as! IntervalCell
        intervalCell.secondsLabel?.text = String(interval)
        return intervalCell
    }
    
}