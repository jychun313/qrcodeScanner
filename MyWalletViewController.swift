//
//  MyWalletViewController.swift
//  LiveenWallet
//
//  Created by Jae Yoon Chun on 03/07/2018.
//  Copyright © 2018 veenfoundation. All rights reserved.
//

import UIKit
import web3

class MyWalletViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var importedWalletAddress : String!
    
    @IBOutlet weak var tableView: UITableView!
    
//    var importedWalletAddress = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.isHidden = true;
        
//        tableView.dataSource = self
//        tableView.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeView(sender: AnyObject?) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myWalletTableViewCell", for: indexPath) as! MyWalletTableViewCell
        return cell
    }
    
}
