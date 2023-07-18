//
//  ViewController.swift
//  TableViewSpaceCheck
//
//  Created by Neosoft on 13/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblData.register(UINib(nibName: "MainCell", bundle: nil), forCellReuseIdentifier: "mainCell")
        tblData.delegate = self
        tblData.dataSource = self
        tblData.reloadData()
    }
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell", for: indexPath) as! MainCell
        cell.tblChild.reloadData()
        return cell
    }
}
