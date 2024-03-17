//
//  File.swift
//  TableViewProject2
//
//  Created by Sultanbai Almaz on 17/3/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    private lazy var label1: UILabel = {
        let view = UILabel()
        view.text = " Bolt.Car"
        view.textColor = .gray
        view.font = .italicSystemFont(ofSize: 45)
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(label1)
        setupConstraints()
    }
    func setupConstraints() {
        label1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label1.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 100)
        ])
    }
}
