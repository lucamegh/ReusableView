/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public protocol NibLoadableView: UIView {
    
    static var nib: UINib { get }
}

public extension NibLoadableView {
    
    static var nib: UINib {
        let bundle = Bundle(for: Self.self)
        let nibName = String(describing: Self.self)
        return UINib(nibName: nibName, bundle: bundle)
    }
}
