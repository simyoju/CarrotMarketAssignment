//
//  ViewController.swift
//  CarrotMarketAssignment
//
//  Created by simyo on 2021/07/22.
//

import UIKit
import JJFloatingActionButton

class ViewController: UIViewController {
    @IBOutlet weak var locationView: UIView!
    
    @IBOutlet weak var magniBarBtn: UIBarButtonItem!
    @IBOutlet weak var listBarBtn: UIBarButtonItem!
    @IBOutlet weak var bellBarBtn: UIBarButtonItem!
    
    @IBOutlet weak var tableView:UITableView!
    var arrImageName:[String] = ["image1", "image2", "image3", "image4", "image5"]
    var arrTitleName:[String] = ["오리 인형", "젖소 인형", "애기 젖소 인형", "강아지 인형", "고양이 인형"]
    var arrWhere:[String] = ["송도동", "송도1동", "송도동", "풍림아이원", "송도1동"]
    var arrPrice:[String] = ["10,000", "15,000", "8,000", "12,000", "20,000"]
    var arrTime:[String] = ["53초 전", "끌올 54초 전", "끌올 3분 전", "끌올 4분 전", "13분 전"]
    var arrChat:[String] = ["27518", "0", "0", "1", "1"]
    var arrHeart:[String] = ["17", "15", "7", "3", "1"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var space = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: self, action: nil)
        space.width = 10
        
        self.navigationItem.setRightBarButtonItems([bellBarBtn,space, listBarBtn, space,magniBarBtn ], animated: false)
        
        let nibName = UINib(nibName: "ItemTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "ItemTableViewCell")
        
        let actionButton = JJFloatingActionButton()
        actionButton.buttonColor = #colorLiteral(red: 1, green: 0.4470588235, blue: 0.2117647059, alpha: 1)

        actionButton.addItem(title: "중고거래", image: UIImage(systemName: "pencil")?.withRenderingMode(.alwaysTemplate)) { item in
        }
        

        actionButton.addItem(title: "동네홍보", image: UIImage(systemName: "doc.plaintext.fill")?.withRenderingMode(.alwaysTemplate)) { item in
          // do something
        }

        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImageName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as! ItemTableViewCell
        
        cell.thumnail.image = UIImage(named: arrImageName[indexPath.row])
        cell.titleLabel.text = arrTitleName[indexPath.row]
        cell.whereLabel.text = arrWhere[indexPath.row]
        cell.priceLabel.text = arrPrice[indexPath.row]
        cell.timeLabel.text = arrTime[indexPath.row]
        cell.chatBtn.setTitle(arrChat[indexPath.row], for: .normal)
        cell.heartBtn.setTitle(arrHeart[indexPath.row], for: .normal)
        
        return cell
        
    }
}
