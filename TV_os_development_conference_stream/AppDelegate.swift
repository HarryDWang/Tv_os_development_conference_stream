//
//  AppDelegate.swift
//  TV_os_development_conference_stream
//
//  Created by Harry Wang on 6/5/17.
//  Copyright © 2017 Harry Wang. All rights reserved.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {

    var window: UIWindow?
    
    //handles communicating with server
    var appController: TVApplicationController?
    static let TVBaseURL = "http://localhost:9001/"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)js/application.js"
    
    
    //fills out the path to main javascript file and the root directory of the server
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // 1
        //initializes TVApplicationController; will fill this object with information
        let appControllerContext = TVApplicationControllerContext()
        
        // 2
        //fills context with the path to main Javascript file, and the root directory of server.
        guard let javaScriptURL = URL(string: AppDelegate.TVBootURL) else { fatalError("unable to create NSURL") }
        appControllerContext.javaScriptApplicationURL = javaScriptURL
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
        
        // 3
        //will pull down root Javascript file and begin executing it.
        appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        return true
    }
    
    



}

