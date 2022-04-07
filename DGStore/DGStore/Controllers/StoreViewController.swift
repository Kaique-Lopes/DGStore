//
//  ViewController.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 26/03/22.
//

import UIKit

class StoreViewController: UIViewController {
    var homeStoreView: HomeStoreView?
    
    override func loadView() {
        self.homeStoreView = HomeStoreView()
        self.view = homeStoreView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        self.homeStoreView?.delegate(delegate: self)
    }


}
extension StoreViewController: HomeStoreViewProtocol {
    func productDetail() {
        let detailsVC: DetailsViewController = DetailsViewController()
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
    
}

