/**
 * ReusableView
 * Copyright (c) Luca Meghnagi 2021
 * MIT license, see LICENSE file for details
 */

import UIKit

public extension UITableView {
    
    func register<Cell: UITableViewCell>(_: Cell.Type) {
        register(Cell.self, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func registerNib<Cell: UITableViewCell & NibLoadableView>(_: Cell.Type) {
        register(Cell.nib, forCellReuseIdentifier: Cell.reuseIdentifier)
    }
    
    func registerHeaderFooterView<View: UITableViewHeaderFooterView>(_: View.Type) {
        register(View.self, forHeaderFooterViewReuseIdentifier: View.reuseIdentifier)
    }
    
    func dequeueHeaderFooterView<View: UITableViewHeaderFooterView>(
        _: View.Type,
        configure: (View) -> Void = { _ in }
    ) -> View {
        let view = dequeueReusableHeaderFooterView(withIdentifier: View.reuseIdentifier) as! View
        configure(view)
        return view
    }
    
    func dequeue<Cell: UITableViewCell>(
        _: Cell.Type,
        for indexPath: IndexPath,
        configure: (Cell) -> Void = { _ in }
    ) -> Cell {
        let cell = dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        configure(cell)
        return cell
    }
}

extension UITableViewCell: ReusableView {}

extension UITableViewHeaderFooterView: ReusableView {}
