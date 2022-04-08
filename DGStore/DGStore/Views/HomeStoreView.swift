//
//  StoreView.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 06/04/22.
//

import Foundation
import UIKit

protocol HomeStoreViewProtocol: AnyObject {
    func productDetail()
}
class HomeStoreView: UICollectionViewCell {
    weak var delegate : HomeStoreViewProtocol?
    
    func delegate(delegate: HomeStoreViewProtocol) {
        self.delegate = delegate
    }
    lazy var productLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Olá, Kaique"
        return label
    }()
    
    // MARK: - Create ImageView
    lazy var productImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "recharge_banner")
        image.tintColor = .green
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 8
        image.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tappedProduct)))
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configSuperViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configSuperViews() {
        self.addSubview(productLabel)
        self.addSubview(productImageView)
    }
    
    @objc private func tappedProduct(sender: UITapGestureRecognizer){
        if sender.state == .ended {
                                print("UIImageView tapped")
                        }
        self.delegate?.productDetail()
        
    }
    private func setupConstraints() {
        
        self.productLabel.anchor(top: safeAreaLayoutGuide.topAnchor,
                                  left: self.leftAnchor,
                                  paddingTop: 5,
                                  paddingLeft: 20)
        
        self.productImageView.anchor(top: productLabel.bottomAnchor,
                                     left: self.leftAnchor,
                                     right: self.rightAnchor,
                                     paddingTop: 5,
                                     paddingLeft: 20,
                                     paddingRight: 20,
                                     width: 180,
                                     height: 180)
          
    }
}
