import Foundation

struct IntervalList {
    
    static var preferredRange = 1...60
    
    static var preferredIntervals: [Int] {
        let reversedRange = preferredRange.reverse()
        return Array(reversedRange)
    }
    
}