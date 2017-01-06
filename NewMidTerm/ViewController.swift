//
//  ViewController.swift
//  NewMidTerm
//
//  Created by BHSRam5 on 1/5/17.
//  Copyright © 2017 BHSRam5. All rights reserved.


import UIKit

class ViewController:
    UIViewController ,
    UITableViewDataSource ,
    UITableViewDelegate{
    
    @IBOutlet weak var sportsTableView: UITableView!
    
    
    
    var sports=["Fall", "Winter", "Spring"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sportsTableView.dataSource=self
        
        sportsTableView.delegate=self

        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sports.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell=UITableViewCell()
        cell.textLabel?.text=sports[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "moveSegue", sender: "Fall")
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
            // Dispose of any resources that can be recreated.
    }


}

