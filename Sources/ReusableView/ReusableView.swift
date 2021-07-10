/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public protocol ReusableView: UIView {
    
    static var reuseIdentifier: String { get }
}

public extension ReusableView {
    
    static var reuseIdentifier: String {
        String(describing: self)
    }
}
