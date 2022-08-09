//
//  ViewController.swift
//  SampleUIKit
//
//  Created by Sunil K on 05/08/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {
    var items = [Item]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let rightButton = UIBarButtonItem(image: .init(systemName:"plus"),
                                    style: .plain,
                                    target: self, action:  #selector(addItem))
        
        navigationItem.rightBarButtonItem = rightButton
        title = "Items"
        
        self.tableView.reloadData()
    }
    
    @objc func addItem() {
        let item = Item(itemName: "Item \(items.count + 1)",
                        itemDetail: "Sample item details for \(items.count + 1)",
                        date: Date())
        items.append(item)
        
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        
        cell.profileImageView.image = UIImage(named: "contactPlaceholder")
        cell.itemName.text = item.itemName
        cell.itemDetail.text = item.itemDetail
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        cell.timeLabel.text = dateFormatter.string(from: item.date)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        let dv = DetailVC(item: item)
        
        self.navigationController?.pushViewController(dv, animated: true)
    }
}

