//
//  ViewController.swift
//  Week3
//
//  Created by labuser on 22/11/2024.
//

import UIKit

//Step 4: Implement interface
class ViewController:
    UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var name: UITextView!
    
    //Step 5:Create array
    var array: [String] = ["Ali","Abu","Charles"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Step 6: tell table view how many row?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    //Step 7: tell table view cell how to display?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = array[indexPath.row]
        return cell!
    }
    
    @IBAction func Submit(_ sender: Any) {
        var name: String = name.text!.description
        array.append(name)
        tableView.reloadData()
        
        
        //if let newName = name.text, !newName.isEmpty {
        //array.append(newName)
        //tableView.reloadData()
        //name.text = ""
        //}
    }
}


