//
//  DetailVC.swift
//  SampleUIKit
//
//  Created by Sunil K on 08/08/22.
//

import Foundation
import UIKit
class DetailVC: UIViewController {
    let item: Item
    
    init(item: Item) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    let itemNameLabel : UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    let itemDetailLabel : UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 0
        lb.textAlignment = .center
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    func setupView(){
        title = item.itemName
        itemNameLabel.text = item.itemDetail
        itemDetailLabel.text = item.date.formatted()
        
        view.backgroundColor = .white
        view.addSubview(itemNameLabel)
        view.addSubview(itemDetailLabel)
        
        itemNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        itemNameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        itemNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        itemNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        
        itemDetailLabel.topAnchor.constraint(equalTo: itemNameLabel.bottomAnchor, constant: 5).isActive = true
        itemDetailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        itemDetailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
    }
    
}
