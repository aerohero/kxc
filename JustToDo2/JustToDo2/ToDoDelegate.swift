//
//  ToDoDelegate.swift
//  JustToDo2
//
//  Created by Sean on 1/8/25.
//

import UIKit

// protocol naming: -able, -ing
// swift protocol
//protocol ToDoDelegate: AnyObject {
//    func addViewController(_ vc: UIViewController, didInsert todo: String)
//    func addViewControllerDidCancel(_ vc: UIViewController)
//}

// objective-C protocol
@objc protocol ToDoDelegate: AnyObject {
    func addViewController(_ vc: UIViewController, didInsert todo: String)
    @objc optional func addViewControllerDidCancel(_ vc: UIViewController)
}

