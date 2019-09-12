//
//  TopMainView.swift
//  Test-5-8
//
//  Created by 杉浦多可楽 on 2019/09/03.
//  Copyright © 2019 多可楽. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewDelegate: NSObjectProtocol{
    func selectedRow(indexPath:IndexPath)
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var tableVIew: UITableView!
    var labelNum:[String] = ["1","2","3","4","5","6","7"]
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableVIew.dataSource = self
        tableVIew.delegate = self
        loadTableViewCellFromXib(tableView: tableVIew, cellName: "TopMainTableViewCell")
    }
}

// MARK: - Protocol
extension TopMainView:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labelNum.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell:TopMainTableViewCell = tableVIew.dequeueReusableCell(withIdentifier: "TopMainTableViewCell", for: indexPath)as?TopMainTableViewCell else{return UITableViewCell()}
        cell.label.text = labelNum[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        delegate?.selectedRow(indexPath: indexPath)
    }
    
}

// MARK: - method
extension TopMainView {
    
}

