//
//  SearchViewController.swift
//  homework8
//
//  Created by Sevara on 17/6/23.
//

import UIKit

class SearchViewController: UIViewController {
    
    let cellID = "cell"
    
    private let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Поиск продукта"
        label.textColor = .black
        label.font = .italicSystemFont(ofSize: 21)
        return label
    }()
    
    private let searchBar: UISearchBar = {
        let search = UISearchBar()
        search.placeholder = "Поиск"
        search.searchBarStyle = .minimal
        return search
    }()
    
    private let foodsTable: UITableView = {
        let table = UITableView()
        table.separatorStyle = .none
        return table
    }()

    private var foods: [Food] = []
    
    private var filteredFoods: [Food] = []
    
    private var isFiltered: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        foodsTable.register(FoodTableViewCell.self, forCellReuseIdentifier: cellID)
        addViews()
        addConstrains()
        addExtention()
        dataUpdate()
    }
    
    func addExtention() {
        foodsTable.dataSource = self
        foodsTable.delegate = self
        searchBar.delegate = self
    }
    
    func addViews() {
        view.addSubview(topLabel)
        view.addSubview(foodsTable)
        view.addSubview(searchBar)
    }
    
    func dataUpdate() {
        foods = [
            Food(foodImage: "pizza", name: "Vegetarian Pizza", country: "Italian", time: "10-15 min"),
            Food(foodImage: "burger", name: "Burger Craze", country: "Amerika", time: "15-20 min"),
            Food(foodImage: "ramen", name: "Katsu Ramen", country: "Korea", time: "5-10 min")]
    }
    
    func addConstrains() {
        //label
        topLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
        }
        
        //search
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(topLabel.snp.bottom).offset(15)
            make.trailing.leading.equalToSuperview().inset(15)
        }
        
        //tableView
        foodsTable.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview()
            make.top.equalTo(searchBar.snp.bottom).offset(13)
            make.bottom.equalToSuperview().offset(56)
        }
    }

}


//MARK: - UITableViewDataSource && UITableViewDelegate

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiltered ? filteredFoods.count : foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! FoodTableViewCell
        let food = isFiltered ? filteredFoods[indexPath.row] : foods[indexPath.row]
        cell.foodImage.image = UIImage(named: food.foodImage)
        cell.countyLabel.text = food.country
        cell.timeLabel.text = food.time
        cell.foodNameLabel.text = food.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = InfoViewController()
        vc.food = foods[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            isFiltered = false
        } else {
            isFiltered = true
            
            filteredFoods = foods.filter{ $0.name.contains(searchText)
            }
        }
        foodsTable.reloadData()
    }
}
