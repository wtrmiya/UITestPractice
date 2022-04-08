//
//  TopTableViewCell.swift
//  UITestPractice
//
//  Created by Wataru Miyakoshi on 2022/04/09.
//

import UIKit
final class TopTableViewCell:UITableViewCell {
    static let identifier = String(describing: TopTableViewCell.self)
    
    private let titleLabel:UILabel = {
        let label = UILabel()
        label.text = "title"
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure(title: String) {
        self.titleLabel.text = title
    }
}
