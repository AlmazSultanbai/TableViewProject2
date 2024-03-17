//
//  CustomTableViewCell.swift
//  TableViewProject2
//
//  Created by Sultanbai Almaz on 17/3/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {  //это уже тэйбл вьев селл
    
    //внутри tableViewCell создаем вюшку
    
    private let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 2
        view.layer.borderColor = UIColor.gray.cgColor
        return view
    }()
    
    private let showImage: UIImageView = {
        
        let view = UIImageView()
        view.image = UIImage(systemName: "star")
        view.tintColor = .blue
        return view
    }()
    
    private let labelInCell: UILabel = {
        let view = UILabel()
        view.textColor = .blue
        view.font = .italicSystemFont(ofSize: 18)
        return view
        
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        cellView.addSubview(showImage)
        cellView.addSubview(labelInCell)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setupConstraints() {
        labelInCell.translatesAutoresizingMaskIntoConstraints = false
        showImage.translatesAutoresizingMaskIntoConstraints = false
        cellView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            cellView.heightAnchor.constraint(equalToConstant: 50),
            
            showImage.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 5),
            showImage.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 5),
            
            labelInCell.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 5),
            labelInCell.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 30),
            labelInCell.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -10)
            
        ])
    }
    func setImageData(image: String, text: String ) {
        showImage.image = UIImage(systemName: image)
        labelInCell.text = text
    }
}
