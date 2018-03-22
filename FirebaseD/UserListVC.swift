//
//  UserListVC.swift
//  FirebaseD
//
//  Created by callsoft on 24/11/17.
//  Copyright © 2017 callsoft. All rights reserved.
//

import UIKit

class UserListVC: UIViewController,UITableViewDataSource
{

    
    let finalArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return finalArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = "AMIT"
        
        return cell
    }

}
