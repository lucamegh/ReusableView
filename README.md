# ReusableView ♻️

ReusableView was primarly developed for [Lists](https://github.com/lucamegh/Lists).

## Installation

ReusableView is distributed using [Swift Package Manager](https://swift.org/package-manager). To install it into a project, simply add it as a dependency within your Package.swift manifest:
```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/lucamegh/ReusableView", from: "1.0.0")
    ],
    ...
)
```

## Usage

### Registering cells

Vanilla UIKit:
```swift
tableView.register(ArticleCell.self, forCellReuseIdentifier: "ArticleCell")
```

ReusableView:
```swift
tableView.register(ArticleCell.self)
```

Using Nibs? Make your cell conform to `NibLoadableView` and call `registerNib`.

### Dequeuing cells

Vanilla UIKit:
```swift
collectionView.dequeueReusableCell(withReuseIdentifier: "PostCell", for: indexPath) as! PostCell
```

ReusableView:
```swift
collectionView.dequeue(PostCell.self, for: indexPath)
```

You can also dequeue and configure cells right away:
```swift
collectionView.dequeue(ArticleCell.self, for: indexPath) { cell in
    // cell configuration goes here
}
```
