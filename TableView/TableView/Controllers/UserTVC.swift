//
//  UserTVC.swift
//  TableView
//
//  Created by Igor Baidak on 16.08.22.
//

import UIKit

class UserTVC: UITableViewController {

    // MARK: Создаем массив отсортированных по фамилии людей
    
    let user = UserData.createUser().sorted {a, b -> Bool in a.secondName < b.secondName }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    // MARK: задаем количество создаваемых ячеек
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }

    // MARK: конфигурируем ячейку (наполняем ячейку)
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let users = user[indexPath.row]
        cell.textLabel?.text = users.secondName
        cell.detailTextLabel?.text = users.firstName
        return cell
    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "goToDetail" {
            return
        }
        // проверяем индекс выбранной ячейки и передаем данные в другой контроллер
        if let indexPath = tableView.indexPathForSelectedRow,
           let detailVC = segue.destination as? DetailVC {
            detailVC.user = user[indexPath.row]
        }
    }

}
