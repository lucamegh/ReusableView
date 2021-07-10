/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UICollectionView {
    
    func register<Cell: UICollectionViewCell>(_: Cell.Type) {
        register(Cell.self, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func registerNib<Cell: UICollectionViewCell & NibLoadableView>(_: Cell.Type) {
        register(Cell.nib, forCellWithReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func registerSupplementaryView<View: ReusableView>(_: View.Type, ofKind kind: UICollectionView.ElementKind) {
        register(View.self, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: View.reuseIdentifier)
    }
    
    func registerSupplementaryViewNib<View: ReusableView & NibLoadableView>(_: View.Type, ofKind kind: UICollectionView.ElementKind) {
        register(View.nib, forSupplementaryViewOfKind: kind.rawValue, withReuseIdentifier: View.reuseIdentifier)
    }
    
    func dequeue<Cell: UICollectionViewCell>(
        _: Cell.Type,
        for indexPath: IndexPath,
        configure: (Cell) -> Void = { _ in }
    ) -> Cell {
        let cell = dequeueReusableCell(withReuseIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        configure(cell)
        return cell
    }
    
    func dequeueSupplementaryView<View: ReusableView>(
        _: View.Type,
        ofKind kind: String,
        for indexPath: IndexPath,
        configure: (View) -> Void = { _ in }
    ) -> View {
        let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: View.reuseIdentifier, for: indexPath) as! View
        configure(view)
        return view
    }
}

extension UICollectionReusableView: ReusableView {}
