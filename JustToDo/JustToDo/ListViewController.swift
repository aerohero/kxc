//
//  ViewController.swift
//  JustToDo
//
//  Created by Sean on 1/5/25.
//

import UIKit

class ListViewController: UIViewController {
    
    var toDoList = [String]()
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination.children.first as? AddViewController {
            vc.listVC = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function, toDoList.count)
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
}
