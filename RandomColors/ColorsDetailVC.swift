//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Abdelrahman Esmail on 22/12/2022.
//

import UIKit

class ColorsDetailVC: UIViewController {

    
    var color:UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=color ?? .blue
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
