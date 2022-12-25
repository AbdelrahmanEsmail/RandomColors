//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Abdelrahman Esmail on 22/12/2022.
//

import UIKit

class ColorsTableVC: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        // Do any additional setup after loading the view..
    }
    
    func addRandomColors(){
        for _ in 0..<50{
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor{
        let randomColor = UIColor(red:  CGFloat.random(in:0...1),
                                 green: CGFloat.random(in:0...1),
                                 blue:  CGFloat.random(in:0...1),
                                 alpha: 1)
        return randomColor
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
        cell?.backgroundColor = colors[indexPath.row]
        return cell!
    }
     
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }

}
