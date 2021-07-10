/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */
    
import XCTest
@testable import ReusableView

class TableViewCell: UITableViewCell {}

class CollectionViewCell: UICollectionViewCell {}

final class ReusableViewTests: XCTestCase {
    
    func testTableViewCellReuseIdentifier() {
        XCTAssertEqual(TableViewCell.reuseIdentifier, "TableViewCell")
    }
    
    func testCollectionViewCellReuseIdentifier() {
        XCTAssertEqual(CollectionViewCell.reuseIdentifier, "CollectionViewCell")
    }
}
