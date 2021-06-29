//
//  CustomTableViewCell.swift
//  Stocks
//
//  Created by María Fernanda Bracho Salazar on 25.06.21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = "CustomTableViewCell"
    
    private let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textColor = .white
        nameLabel.font = .systemFont(ofSize: 17, weight: .bold)
        return nameLabel
    }()
    
    private let priceLabel: UILabel = {
        let priceLabel = UILabel()
//        priceLabel.textColor = .white
        priceLabel.font = .systemFont(ofSize: 17)
        priceLabel.text = "Stock Price"
        return priceLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.backgroundColor = .darkGray
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let labelSize = contentView.frame.size.height-10
        
        nameLabel.frame = CGRect(x: 5,
                                 y: 5,
                                 width: 100,
                                 height: labelSize)

        priceLabel.frame = CGRect(x: contentView.frame.size.width-nameLabel.frame.size.width,
                                  y: 5,
                                  width: 100,
                                  height: labelSize)
    }
}
