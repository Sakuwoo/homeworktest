//
//  ViewController.swift
//  homework8
//
//  Created by Sevara on 17/6/23.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let welcomeLabel = {
        let view = UILabel()
        view.text = "Welcome ours App"
        view.textColor = .black
        view.font = .systemFont(ofSize: 35, weight: .semibold)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(welcomeLabel)
        welcomeLabel.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
        }
    }
}

