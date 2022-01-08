//
//  ViewController.swift
//  Famous
//
//  Created by Fizza Hagverdizade on 08.01.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var myTableView: UITableView!
    
    var users = [User]()
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadData()
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let row = users[indexPath.row]
        
        cell.textLabel?.text = row.firstname + " " + row.lastname
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = users[indexPath.row]
        user = row
        
        self.performSegue(withIdentifier: "toDetail", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            
            let destVC = segue.destination as! DetailViewController
            destVC.userDetail = self.user
            
        }
    }
    
    func loadData() {
        
        let user1 = User()
        
        user1.firstname = "Brad"
        user1.ActorDetail = "He was born in 1963. He is a famous Hollywood actor."
        user1.lastname = "Pitt"
        user1.picture = UIImage(named: "Brad")!
        users.append(user1)
        
        let user2 = User()
        user2.firstname = "Angelina"
        user2.ActorDetail = "She was born in 1975. She is a famous Hollywood actrees."
        user2.lastname = "Jolie"
        user2.picture = UIImage(named: "Angelina")!
        users.append(user2)
        
        let user3 = User()
        user3.firstname = "Eyyub"
        user3.lastname = "Yagubov"
        user3.ActorDetail = "He was born in 1965. He is a famous Azerbaijani singer."
        user3.picture = UIImage(named: "Eyyub")!
        users.append(user3)
        
        let user4 = User()
        user4.firstname = "Cemre"
        user4.lastname = "Baysel"
        user4.ActorDetail = "She was born in 1999. She is a famous Turkish actrees."
        user4.picture = UIImage(named: "Cemre")!
        users.append(user4)
        
        let user5 = User()
        user5.firstname = "Fizza"
        user5.lastname = "Hagverdizade"
        user5.ActorDetail = "She was born in 1991. She is a famous Azerbaijani influencer."
        user5.picture = UIImage(named: "Fizza")!
        users.append(user5)

    }


}

