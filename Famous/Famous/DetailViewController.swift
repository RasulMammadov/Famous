//
//  DetailViewController.swift
//  Famous
//
//  Created by Fizza Hagverdizade on 08.01.22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var MyImageView: UIImageView!
    @IBOutlet weak var MyLabel: UILabel!
    @IBOutlet weak var MySecondLabel: UILabel!
    
    var userDetail = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        MyLabel.text = userDetail.firstname + " " + userDetail.lastname
        MySecondLabel.text = userDetail.ActorDetail
        MyImageView.image = userDetail.picture
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
