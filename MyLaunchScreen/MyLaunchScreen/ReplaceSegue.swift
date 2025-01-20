//
//  ReplaceSegue.swift
//  MyLaunchScreen
//
//  Created by Sean on 1/13/25.
//

import UIKit

class ReplaceSegue: UIStoryboardSegue {
    override func perform() {
        guard let window = source.view.window else { return }
        
        window.rootViewController = destination
        
        UIView.transition(with: window, duration: 0.3, options: [.transitionCrossDissolve], animations: nil)
    }

}
