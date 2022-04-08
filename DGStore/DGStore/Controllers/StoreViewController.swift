//
//  ViewController.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 26/03/22.
//

import UIKit

class StoreViewController: UITableViewController {
    var homeStoreView =  "HomeStoreView"
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.estimatedItemSize = CGSize(width: 202, height: 229)
        layout.itemSize = CGSize(width: 202, height: 229)
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 12
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(HomeStoreView.self, forCellWithReuseIdentifier: homeStoreView)

        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        collectionView.layer.opacity = 1
        return collectionView
    }()
    
//    override func loadView() {
//        self.homeStoreView = HomeStoreView()
//        self.view = homeStoreView
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemGray
//        self.homeStoreView?.delegate(delegate: self)
//    }

}
//extension StoreViewController: HomeStoreViewProtocol {
//    func productDetail() {
//        let detailsVC: DetailsViewController = DetailsViewController()
//        self.navigationController?.pushViewController(detailsVC, animated: true)
//    }
//}
