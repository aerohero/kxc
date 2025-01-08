//
//  AddViewController.swift
//  JustToDo
//
//  Created by Sean on 1/6/25.
//

import UIKit

class AddViewController: UIViewController {
    
    var listVC: ListViewController?
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        guard let text = inputField.text else {
            return
        }
        listVC?.toDoList.append(text)
//        print(listVC?.toDoList)
        listVC?.toDoTableView.reloadData()
        
        dismiss(animated: true)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
