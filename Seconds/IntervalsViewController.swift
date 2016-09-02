import UIKit

class IntervalsViewController: UIViewController {
    
    let intervals: Set = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}

extension IntervalsViewController: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intervals.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier("Interval Cell", forIndexPath: indexPath)
    }
    
}