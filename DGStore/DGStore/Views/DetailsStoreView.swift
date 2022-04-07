//
//  DetailsStoreView.swift
//  DGStore
//
//  Created by Kaique Lopes de Oliveira on 06/04/22.
//

import Foundation
import UIKit

class DetailsStoreView: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Nome do Produto"
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
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.text = "Descrição do Produto"
        return label
    }()
}
