/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UICollectionView {
    
    struct ElementKind {
        
        var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
    }
}

public extension UICollectionView.ElementKind {
    
    static var sectionHeader: Self {
        UICollectionView.ElementKind(rawValue: UICollectionView.elementKindSectionHeader)
    }
    
    static var sectionFooter: Self {
        UICollectionView.ElementKind(rawValue: UICollectionView.elementKindSectionFooter)
    }
}

extension UICollectionView.ElementKind: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: StaticString) {
        self.rawValue = "\(value)"
    }
}

extension UICollectionView.ElementKind: Hashable {}
