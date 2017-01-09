//
//  ViewController.swift
//  NewMidTerm
//
//  Created by BHSRam5 on 1/5/17.
//  Copyright © 2017 BHSRam5. All rights reserved.


import UIKit

var tapCount=0

class ViewController:
    UIViewController ,
    UITableViewDataSource ,
    UITableViewDelegate{
    

    
    @IBOutlet weak var sportsTableView: UITableView!
    
    

    
    //conditional to change the color of button when clicked. Once I know how to change button color with conditional, I will replace the background color with it.
    @IBAction func RecentEvents(_ sender: UIButton) {
        tapCount=tapCount+1
        if tapCount == 1 {
            (self.view.backgroundColor=UIColor.green)
        }
        print(tapCount)
    }
    

    
    
    
    
    var sports=["Fall", "Winter", "Spring"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sportsTableView.dataSource=self
        
        sportsTableView.delegate=self

        
    }
    //method, will be added to a text field when we lwarn to connect it from another view controler.
    func sportEvents  (sport1:String,sport2:Int,sport3:String,sport4:String,sport5:String,sport6:String,sport7:String) -> String {
        return "The winner of the football game is \(sport1) . Badin placed \(sport2)st at the cross country meet. The winner of the girl's soccer game is \(sport3). The winner of the boy's soccer game is  \(sport4). The winner of the volleyball game is \(sport5). The winner of the girl's golf match is \(sport6). The winner of the boy's golf match is \(sport7)."
        
    }
    

    //array
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

