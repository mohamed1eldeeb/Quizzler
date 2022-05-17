//
//  second ViewController.swift
//  Quizzler
//
//  Created by Mohamed AbdElhakam on 17/05/2022.
//

import UIKit

class second_ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    var coming : String = ""
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = coming

        // Do any additional setup after loading the view.
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
