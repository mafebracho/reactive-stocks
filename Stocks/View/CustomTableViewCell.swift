//
//  CustomTableViewCell.swift
//  Stocks
//
//  Created by María Fernanda Bracho Salazar on 25.06.21.
//

import UIKit
import TinyConstraints

class CustomTableViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.font = .preferredFont(forTextStyle: .headline)
        return nameLabel
    }()
    
    private let priceLabel: UILabel = {
        let priceLabel = UILabel()
        priceLabel.font = .preferredFont(forTextStyle: .subheadline)
        priceLabel.text = "Stock Price"
        return priceLabel
    }()
    
    func setUp() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        
        nameLabel.topToSuperview(offset: 12)
        nameLabel.leadingToSuperview(offset: 12)
        
        priceLabel.trailingToSuperview(offset: 12)
        priceLabel.centerYToSuperview()
    }
}

extension CustomTableViewCell {
    static let reuseIdentifier = String(describing: self)
}
