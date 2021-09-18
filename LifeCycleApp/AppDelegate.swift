//
//  AppDelegate.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // Вызывается после выгрузки приложения в память
    // (вызывается самый первым в жизненном цикле приложения и передаёт управление приложением в SceneDelegate)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print(#function)
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.

        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.

    }
    
    // Вызывается перед выгрузкой приложения из памяти
    // происходит изменение сохранения в базе данных (тут все сохраняется)
    // метод вызывается всегда, даже при краше
    func applicationWillTerminate(_ application: UIApplication) {
        print(#function)
    }

}

