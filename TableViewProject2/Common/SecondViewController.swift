//
//  File.swift
//  TableViewProject2
//
//  Created by Sultanbai Almaz on 17/3/24.
//

import UIKit

class SecondViewController: UIViewController {
    
     lazy var label1: UILabel = {
        let view = UILabel()
         view.textColor = .systemBlue
        view.font = .italicSystemFont(ofSize: 50)
        return view
    }()
    
    
    lazy var imageShow: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "star")
        return view
    }()
    var simpleData : Simple?   // simpleData ссылается на структуру Simple
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(label1)
        view.addSubview(imageShow)
        setupConstraints()
        print("Simple Data : \( simpleData)")
    }
    func setupConstraints() {
        label1.translatesAutoresizingMaskIntoConstraints = false
        imageShow.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            imageShow.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            imageShow.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageShow.heightAnchor.constraint(equalToConstant: 100),
            imageShow.widthAnchor.constraint(equalToConstant: 115)
        ])
    }
    
}
