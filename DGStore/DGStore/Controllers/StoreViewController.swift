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
        view.backgroundColor = .red
    }


}

