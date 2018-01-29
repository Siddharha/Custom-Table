//
//  ViewController.swift
//  Custom Table
//
//  Created by Siddhartha Maji on 30/01/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

var name = ""
class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return restus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvRestu.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomTableViewCell
        cell.resturentName.text = restus[indexPath.row]
        cell.resturentImg.image = UIImage(named: restusImg[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == .delete){
            restus.remove(at: indexPath.item)
            restusImg.remove(at: indexPath.item)
            tvRestu.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        name = restus[indexPath.row]
        performSegue(withIdentifier: "segue1", sender: nil)
    }
    
    @IBOutlet weak var tvRestu: UITableView!
    
    var restus = ["r1 Resturent","r2 Resturent","r3 Resturent"]
    var restusImg = ["r1","r2","r3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tvRestu.delegate = self
        tvRestu.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

