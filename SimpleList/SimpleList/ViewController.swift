//
//  ViewController.swift
//  SimpleList
//
//  Created by Sean on 1/4/25.
//

import UIKit

class ViewController: UIViewController {
    let fruits = ["apple", "banana", "orange", "strawberry", "melon"]
    let languages = ["swift", "object-c", "java", "python", "html", "javascript", "css"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        print("#3", #function)
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0: return "좋아하는 과일"
            case 1: return "사용할 수 있는 언어"
            default: return nil
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch section {
            case 1: return "\(languages.count)개의 언어를 사용할 수 있습니다."
            default: return nil
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function, section)
//        return fruits.count
        
        switch section {
            case 0: return fruits.count
            case 1: return languages.count
            default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function, indexPath)
        
        // #1
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // #2
//        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
//        cell.textLabel?.text = fruits[indexPath.row]
        switch indexPath.section {
            case 0: cell.textLabel?.text = fruits[indexPath.row]
            case 1: cell.textLabel?.text = languages[indexPath.row]
            default: break
        }
                
        // #3
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
            case 0: print(fruits[indexPath.row])
            case 1: print(languages[indexPath.row])
            default: break
        }
    }
}
