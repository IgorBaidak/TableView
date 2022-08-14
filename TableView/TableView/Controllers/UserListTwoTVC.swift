//
//  UserListTwoTVC.swift
//  TableView
//
//  Created by Igor Baidak on 14.08.22.
//

import UIKit

class UserListTwoTVC: UITableViewController {
    
    var userInfo = [UsersProtocol]()

    override func viewDidLoad() {
        super.viewDidLoad()
        userLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    private func userLoad() {
        userInfo.append(Users(firstName: "Алексей", secondName: "Навальны", email: "night-minsk@mail.ru", numberPhone: "+4322343764"))
        userInfo.append(Users(firstName: "Сергей", secondName: "Жданов", email: "dnfjdk@mail.coijk", numberPhone: "+433254522"))
        userInfo.append(Users(firstName: "Jon", secondName: "Carter", email: "dfnvf-minsk@mail.ru", numberPhone: "+4523523"))
        userInfo.append(Users(firstName: "Frank", secondName: "Johi", email: "nightdscminsk@mail.ru", numberPhone: "+4352424"))
        userInfo.append(Users(firstName: "Sergio", secondName: "Cooper", email: "night-gadd@mail.ru", numberPhone: "+452432454"))
        userInfo.append(Users(firstName: "Oman", secondName: "Grek", email: "fdvdfbv-minsk@mail.ru", numberPhone: "+43989898"))
        userInfo.append(Users(firstName: "Julia", secondName: "Hide", email: "nfvbdjkgvbnsk@mail.ru", numberPhone: "+43534433"))
        userInfo.append(Users(firstName: "Alex", secondName: "Jdssewe", email: "nfdgvfvsk@mail.ru", numberPhone: "+4578287423"))
        userInfo.append(Users(firstName: "Alina", secondName: "Solo", email: "nigfbgdnsk@mail.ru", numberPhone: "+232322899"))
        userInfo.append(Users(firstName: "Jimy", secondName: "Jol", email: "nfgvdfbdfnsk@mail.ru", numberPhone: "+3234298974"))
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let section = tableView.dataSourceSectionIndex(forPresentationSectionIndex: userInfo.endIndex)
        return section
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo", for: indexPath)
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "CellTwo")
        cell.textLabel?.text = userInfo[indexPath.row].firstName + " " + userInfo[indexPath.row].secondName
        cell.detailTextLabel?.text = userInfo[indexPath.row].email + " " + userInfo[indexPath.row].numberPhone
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
