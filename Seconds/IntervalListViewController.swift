import UIKit

class IntervalListViewController: UICollectionViewController {

    // MARK: Intervals
    
    let intervals = IntervalList.preferredIntervals
    
    func interval(at indexPath: IndexPath) -> Int {
        return intervals[indexPath.item]
    }
    
    // MARK: Animal
    
    var animal: Animal? {
        didSet {
            title = animal?.name
        }
    }
    
    // MARK: Storyboard segues
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let selectedIndexPath = collectionView?.indexPathsForSelectedItems?.first else { return }
        let selectedSeconds = interval(at: selectedIndexPath)
        guard let timerViewController = segue.destination as? TimerViewController else { return }
        timerViewController.seconds = selectedSeconds
        timerViewController.timeMultiplier = animal?.timeMultiplier ?? 1
    }
    
    // MARK: Status bar appearance
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Collection view data source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return intervals.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IntervalListCell.preferredReuseIdentifier, for: indexPath) as! IntervalListCell
        cell.seconds = interval(at: indexPath)
        return cell
    }
    
}
