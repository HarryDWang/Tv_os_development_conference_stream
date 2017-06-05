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
    
    var appController: TVApplicationController?
    static let TVBaseURL = "http://localhost:9001/"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)js/application.js"



}

