//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by Sean on 1/10/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func openBrowser(_ sender: Any) {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.sharedData
        }
        
        if let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            sceneDelegate.sharedData
        }
        
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate {
            sceneDelegate.sharedData
        }
        
        // 디바이스를 서버에 등록할 때 사용하는 메소드
        UIApplication.shared.registerForRemoteNotifications()
        
        // 아이들 상태를 꺼서 화면이 꺼지지 않도록 하는 메소드
        UIApplication.shared.isIdleTimerDisabled = false
        
        NotificationCenter.default.addObserver(forName: UIScene.didActivateNotification, object: nil, queue: .main) { _ in print(UIScene.didActivateNotification) }
        
//        UIApplication.shared
        
//        URLSession.shared
//        NotificationCenter.default
//        UserDefaults.standard
    }


}

