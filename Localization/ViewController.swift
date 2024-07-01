//
//  ViewController.swift
//  Localization
//
//  Created by E5000855 on 01/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let tableViewSource: [String] = [
          NSLocalizedString("一", comment: "table view source"),
          NSLocalizedString("二", comment: "table view source"),
          NSLocalizedString("三", comment: "table view source"),
          NSLocalizedString("四", comment: "table view source"),
          NSLocalizedString("五", comment: "table view source"),
          NSLocalizedString("六", comment: "table view source"),
      ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    @IBAction func onOpenPreferenceButtonPressed(_ sender: UIButton) {
          
          guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {return}
          UIApplication.shared.open(settingsURL, options: [:], completionHandler: nil)
          
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell")! as UITableViewCell
        cell.textLabel?.text = tableViewSource[indexPath.row]
        return cell
    }

}

