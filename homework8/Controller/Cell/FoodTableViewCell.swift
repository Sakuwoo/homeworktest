//
//  FoodTableViewCell.swift
//  homework8
//
//  Created by Sevara on 17/6/23.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    
    private let bgView = UIView()
    
    let foodImage = UIImageView()
    
    let foodNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .regular)
        label.text = "Burger Craze"
        label.textColor =  #colorLiteral(red: 0.2156862745, green: 0.2156862745, blue: 0.2156862745, alpha: 1)
        return label
    }()
    
    private let greenDotView: UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.5098039216, green: 0.768627451, blue: 0.2745098039, alpha: 1)
        view.layer.cornerRadius = 3
        return view
    }()
    
    private let conditionStoreLabel: UILabel = {
        let label = UILabel()
        label.text = "OPEN"
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor =  #colorLiteral(red: 0.5098039216, green: 0.768627451, blue: 0.2745098039, alpha: 1)
        return label
    }()
    
    let timeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor =  #colorLiteral(red: 1, green: 0.7725490196, blue: 0.2705882353, alpha: 1)
        label.text = "15-20 min"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .white
        return label
    }()
    
    private let starImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "star")
        image.tintColor =  #colorLiteral(red: 1, green: 0.6980392157, blue: 0, alpha: 1)
        return image
    }()
    
    private let countStarLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "4.6"
        label.textColor =  #colorLiteral(red: 0.2156862745, green: 0.2156862745, blue: 0.2156862745, alpha: 1)
        return label
    }()
    
    private let countPeopleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.text = "(601)"
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    let countyLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.text = "American"
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    private let dotView: UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.4941176471, green: 0.5137254902, blue: 0.537254902, alpha: 1)
        view.layer.cornerRadius = 3
        return view
    }()
    
    private let typeFoodLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .regular)
        label.text = "Burgers"
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    private let DeliveryLabel: UILabel = {
        let label = UILabel()
        label.text = "Delivery: FREE"
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    private let dotTwoView: UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.4941176471, green: 0.5137254902, blue: 0.537254902, alpha: 1)
        view.layer.cornerRadius = 3
        return view
    }()
    
    private let minimumLabel: UILabel = {
        let label = UILabel()
        label.text = "Minimum: "
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$10"
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    private let locationImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "paperplane.fill")
        image.tintColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return image
    }()
    
    private let awayLabel: UILabel = {
        let label = UILabel()
        label.text = "1.5 km away"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor =  #colorLiteral(red: 0.5137254902, green: 0.5137254902, blue: 0.5137254902, alpha: 1)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addUI()
        addConstrains()
    }
    
    func addUI() {
        addSubview(bgView)
        bgView.addSubview(foodImage)
        bgView.addSubview(foodNameLabel)
        bgView.addSubview(dotView)
        bgView.addSubview(dotTwoView)
        bgView.addSubview(greenDotView)
        bgView.addSubview(conditionStoreLabel)
        bgView.addSubview(timeLabel)
        bgView.addSubview(starImage)
        bgView.addSubview(countyLabel)
        bgView.addSubview(countStarLabel)
        bgView.addSubview(countPeopleLabel)
        bgView.addSubview(countPeopleLabel)
        bgView.addSubview(typeFoodLabel)
        bgView.addSubview(DeliveryLabel)
        bgView.addSubview(minimumLabel)
        bgView.addSubview(priceLabel)
        bgView.addSubview(locationImage)
        bgView.addSubview(awayLabel)
    }
    
    func addConstrains() {
        //view
        bgView.snp.makeConstraints { make in
            make.top.trailing.bottom.leading.equalToSuperview().inset(10)
            make.height.equalTo(305)
        }
        
        //image
        foodImage.snp.makeConstraints { make in
            make.top.trailing.leading.equalToSuperview()
            make.height.equalTo(194)
        }
        
        //name && open label
        foodNameLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(foodImage.snp.bottom).offset(13)
        }
        
        greenDotView.snp.makeConstraints { make in
            make.leading.equalTo(foodNameLabel.snp.trailing).offset(8)
            make.top.equalTo(foodImage.snp.bottom).offset(25)
            make.height.width.equalTo(6)
        }
        
        conditionStoreLabel.snp.makeConstraints { make in
            make.leading.equalTo(greenDotView.snp.trailing).offset(8)
            make.top.equalTo(foodImage.snp.bottom).offset(20)
        }
        
        //timeLabel
        timeLabel.snp.makeConstraints { make in
            make.top.equalTo(foodImage.snp.bottom).offset(14)
            make.trailing.equalToSuperview().offset(-3)
            make.width.equalTo(68)
            make.height.equalTo(33)
            
        }
        
        //awayLabel && locationImage
        awayLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-3)
            make.top.equalTo(timeLabel.snp.bottom).offset(17)
        }
        
        locationImage.snp.makeConstraints { make in
            make.trailing.equalTo(awayLabel.snp.leading).offset(-7)
            make.top.equalTo(timeLabel.snp.bottom).offset(16)
        }
        
        //star && comment
        starImage.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(2)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(10)
        }
        countStarLabel.snp.makeConstraints { make in
            make.leading.equalTo(starImage.snp.trailing).offset(6)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(8)
        }
        countPeopleLabel.snp.makeConstraints { make in
            make.leading.equalTo(countStarLabel.snp.trailing).offset(3)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(8)
            
        }
        
        //american && burger
        countyLabel.snp.makeConstraints { make in
            make.leading.equalTo(countPeopleLabel.snp.trailing).offset(10)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(8)
        }
        dotView.snp.makeConstraints { make in
            make.leading.equalTo(countyLabel.snp.trailing).offset(8)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(15)
            make.width.equalTo(4)
            make.height.equalTo(5)
        }
        typeFoodLabel.snp.makeConstraints { make in
            make.leading.equalTo(dotView.snp.trailing).offset(8)
            make.top.equalTo(foodNameLabel.snp.bottom).offset(8)
        }
        //delivery && price labels
        DeliveryLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(countStarLabel.snp.bottom).offset(6)
        }
        dotTwoView.snp.makeConstraints { make in
            make.leading.equalTo(DeliveryLabel.snp.trailing).offset(8)
            make.top.equalTo(countStarLabel.snp.bottom).offset(12)
            make.width.equalTo(4)
            make.height.equalTo(5)
        }
        minimumLabel.snp.makeConstraints { make in
            make.leading.equalTo(dotTwoView.snp.trailing).offset(8)
            make.top.equalTo(countStarLabel.snp.bottom).offset(7)
        }
        priceLabel.snp.makeConstraints { make in
            make.leading.equalTo(minimumLabel.snp.trailing).offset(2)
            make.top.equalTo(countStarLabel.snp.bottom).offset(7)
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
