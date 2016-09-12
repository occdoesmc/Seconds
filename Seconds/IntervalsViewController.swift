import UIKit

class IntervalsViewController: UIViewController {
    
    let intervals = IntervalList.preferredIntervals
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var collectionViewLayout: UICollectionViewFlowLayout!
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let numberOfColumns = 3
        let contentSize: CGFloat = 0.75 // 0 - 1
        
        let viewWidth = collectionView.bounds.width
        
        let totalCellWidth = contentSize * viewWidth
        let totalBlankSpaceWidth = viewWidth - totalCellWidth
        
        let cellSide = totalCellWidth / CGFloat(numberOfColumns)
        let blankSpaceSide = totalBlankSpaceWidth / CGFloat(numberOfColumns + 1)

        collectionViewLayout.itemSize = CGSize(width: cellSide, height: cellSide)
        collectionViewLayout.sectionInset = UIEdgeInsets(top: blankSpaceSide, left: blankSpaceSide, bottom: blankSpaceSide, right: blankSpaceSide)
        collectionViewLayout.minimumLineSpacing = blankSpaceSide
        
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
