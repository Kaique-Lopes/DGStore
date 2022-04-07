//
//  StoreView.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 06/04/22.
//

import Foundation
import UIKit

class HomeStoreView: UIView {
    
    lazy var productLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Usuário"
        return label
    }()
    
    // MARK: - Create ImageView
    lazy var productImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "recharge_banner")
        image.tintColor = .green
        image.contentMode = .scaleAspectFit
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
    private func setupConstraints() {
        
        
        self.productLabel.anchor(top: safeAreaLayoutGuide.topAnchor,
                                  left: self.leftAnchor,
                                  paddingTop: 5,
                                  paddingLeft: 15)
        
        self.productImageView.anchor(top: productLabel.bottomAnchor,
                                     left: self.leftAnchor,
                                     right: self.rightAnchor,
                                     paddingLeft: 15,
                                     paddingRight: 15)
        
//        self.productLabel.anchor(top: <#T##NSLayoutYAxisAnchor?#>, left: <#T##NSLayoutXAxisAnchor?#>, bottom: <#T##NSLayoutYAxisAnchor?#>, right: <#T##NSLayoutXAxisAnchor?#>, paddingTop: <#T##CGFloat#>, paddingLeft: <#T##CGFloat#>, paddingBottom: <#T##CGFloat#>, paddingRight: <#T##CGFloat#>, width: <#T##CGFloat?#>, height: <#T##CGFloat?#>)
     
    }
}
