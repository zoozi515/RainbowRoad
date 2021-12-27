//
//  ViewController.swift
//  RainbowRoad
//
//  Created by admin on 27/12/2021.
//

import UIKit

class ViewController: UIViewController {

    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]
    
    @IBOutlet weak var colorTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTableView.dataSource = self
        colorTableView.rowHeight = 120
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]

        return cell
    }
}
