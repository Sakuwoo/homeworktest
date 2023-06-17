//
//  InfoViewController.swift
//  homework8
//
//  Created by Sevara on 17/6/23.
//

import UIKit

class InfoViewController: UIViewController {
    
    private let foodsTable = UITableView()
    var food: Food?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(foodsTable)
        title = food?.name
        view.backgroundColor = .white
        foodsTable.dataSource = self
        foodsTable.register(FoodTableViewCell.self, forCellReuseIdentifier: "cell")
        foodsTable.snp.makeConstraints { make in
            make.top.leading.bottom.trailing.equalToSuperview()
        }
    }
    
}

extension InfoViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FoodTableViewCell
        cell.foodImage.image = UIImage(named: food?.foodImage ?? "")
        cell.countyLabel.text = food?.country
        cell.timeLabel.text = food?.time
        cell.foodNameLabel.text = food?.name
        return cell
    }
}
