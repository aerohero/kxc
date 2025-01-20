//
//  ViewController.swift
//  JustToDo2
//
//  Created by Sean on 1/8/25.
//

import UIKit

extension Notification.Name {
    static let toDoDidInsert = Notification.Name("toDoDidInsert")
}

class ListViewController: UIViewController {
    
    var toDoList = [String]()
    
    @IBOutlet weak var toDoTableView: UITableView!
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let vc = segue.destination.children.first as? AddViewController {
//            vc.delegate = self
//        }
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: .toDoDidInsert, object: nil, queue: .main) { noti in
            if let todo = noti.userInfo?[Key.todo] as? String {
                self.toDoList.append(todo)
                self.toDoTableView.reloadData()
            }
        }
    }
}

//extension ListViewController: ToDoDelegate {
//    func addViewController(_ vc: UIViewController, didInsert todo: String) {
//        toDoList.append(todo)
//        toDoTableView.reloadData()
//    }
////    func addViewControllerDidCancel(_ vc: UIViewController) {
////    }
//}

extension ListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
}
