//
//  ViewController.swift
//  TableViewProject2
//
//  Created by Sultanbai Almaz on 17/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var myTableView: UITableView = {
        let view = UITableView()
        view.layer.borderColor = UIColor.blue.cgColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 15
        return view
        
    }()
    
    private let simpleList: [Simple] = [Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi"),
                                        Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi"),
                                        Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi"),
                                        Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi"),
                                        Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi"),
                                        Simple(image: "star", text: "star"),
                                        Simple(image: "person", text: "person"),
                                        Simple(image: "homekit", text: "homekit"),
                                        Simple(image: "pencil", text: "pencil"),
                                        Simple(image: "bolt.car", text: "bolt.car"),
                                        Simple(image: "wifi", text: "wifi")
    ]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        view.backgroundColor = .systemBackground
        view.addSubview(myTableView)
        setupConstraints()
        myTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")// зарегестрировали ячейку
        myTableView.dataSource = self //подписали количество и распределение содержимого ячеек
        myTableView.delegate = self  //подписали ячейки как кнопки
    }
    func setupConstraints(){
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        simpleList.count  // создаст столко же элементов сколко рисунков в массиве images
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.setImageData(image: simpleList[indexPath.row].image, text: simpleList[indexPath.row].text)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath \(indexPath.row)")
        let vc = SecondViewController()
        vc.simpleData = simpleList[indexPath.row]// присваеваем
        vc.label1.text = simpleList[indexPath.row].text
        vc.imageShow.image = UIImage(systemName: simpleList[indexPath.row].image)
       navigationController?.pushViewController(vc, animated: true)
    }
    
}
