//
//  AddViewController.swift
//  homework8
//
//  Created by Sevara on 17/6/23.
//

import UIKit

class AddViewController: UIViewController {
    
    let cellID = "cell"
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Создать продукт"
        label.textColor = .black
        label.font = UIFont.italicSystemFont(ofSize: 21)
        return label
    }()
    
    private let addTable: UITableView = {
        let table = UITableView()
        table.separatorStyle = .none
        return table
    }()
    
    private let createProdButton: UIButton = {
        let button = UIButton()
        button.backgroundColor =  #colorLiteral(red: 0, green: 0.7049505115, blue: 0.5256783366, alpha: 1)
        button.setTitle("Создать новый продукт", for: .normal)
        let color =  #colorLiteral(red: 0.9937880635, green: 0.9937880635, blue: 0.9937880635, alpha: 1)
        button.setTitleColor(color, for: .normal)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let arrTable = ["Наименование продукта(Мандарин)","Цена продукта (пример: 50)","Детальное описание продукта","Категория продукта","Бренд продукта"]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        addViews()
        addConstrains()
        addExtention()
    }
    
    func addExtention() {
        addTable.dataSource = self
        addTable.delegate = self
    }
    
    func addViews() {
        view.addSubview(topLabel)
        view.addSubview(createProdButton)
        view.addSubview(addTable)
    }
    
    func addConstrains() {
        //label
        topLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
        }
        
        //tableView
        addTable.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(20)
            make.top.equalTo(topLabel.snp.bottom).offset(15)
            make.bottom.equalTo(createProdButton.snp.top).offset(-10)
        }
        
        //button
        createProdButton.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.bottom.equalToSuperview().offset(-110)
            make.height.equalTo(50)
        }
    }

}

//MARK: - UITableViewDataSource && UITableViewDelegate

extension AddViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: cellID)
        cell.textLabel?.text = arrTable[indexPath.section]
        cell.backgroundColor =  #colorLiteral(red: 0.664085865, green: 0.6720654964, blue: 0.6993013024, alpha: 0.07767885726)
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        //headerView.backgroundColor = UIColor.clear
        return headerView
    }
}
