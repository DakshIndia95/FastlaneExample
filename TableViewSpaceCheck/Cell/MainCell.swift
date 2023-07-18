//
//  MainCell.swift
//  TableViewSpaceCheck
//
//  Created by Neosoft on 13/07/23.
//

import UIKit

class MainCell: UITableViewCell {

    @IBOutlet weak var tblChild: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tblChild.register(UINib(nibName: "ChildCell", bundle: nil), forCellReuseIdentifier: "childCell")
        tblChild.delegate = self
        tblChild.dataSource = self
    }
}

extension MainCell : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "childCell", for: indexPath) as! ChildCell
        return cell
    }
}
