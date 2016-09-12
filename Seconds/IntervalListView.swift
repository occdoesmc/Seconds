import UIKit

class IntervalListView: UICollectionView {
    
    @IBOutlet var collectionViewFlowLayout: UICollectionViewFlowLayout!

    // MARK: Layout
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionViewFlowLayout.itemSize = itemSize
        collectionViewFlowLayout.sectionInset = sectionInset
        collectionViewFlowLayout.minimumLineSpacing = minimumLineSpacing
    }
    
    private var itemSize: CGSize {
        return CGSize(width: cellSide, height: cellSide)
    }
    
    private var sectionInset: UIEdgeInsets {
        return UIEdgeInsets(top: blankSide, left: blankSide, bottom: blankSide, right: blankSide)
    }
    
    private var minimumLineSpacing: CGFloat {
        return blankSide
    }
    
    // MARK: Cells
    
    private var cellSide: CGFloat {
        return totalCellWidth / CGFloat(cellsPerRow)
    }
    
    private var totalCellWidth: CGFloat {
        return cellArea * bounds.width
    }
    
    let cellsPerRow = 3
    let cellArea: CGFloat = 0.75 // 0 - 1
    
    // MARK: Blanks
    
    private var blankSide: CGFloat {
        return totalBlanksWidth / CGFloat(numberOfBlanks)
    }
    
    private var totalBlanksWidth: CGFloat {
        return bounds.width - totalCellWidth
    }
    
    private var numberOfBlanks: Int {
        return cellsPerRow + 1
    }
    
}
