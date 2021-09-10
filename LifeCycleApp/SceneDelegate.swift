//
//  SceneDelegate.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
    }
    
    // 
    func sceneDidDisconnect(_ scene: UIScene) {
        print(#function)
    }
    
    // Переход приложения в фазу активного состояния
    func sceneDidBecomeActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается перед переходом приложения в фоновый режим
    func sceneWillResignActive(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается перед переходом приложения в фоновый режим
    func sceneWillEnterForeground(_ scene: UIScene) {
        print(#function)
    }
    
    // Вызывается после перехода приложения в фоновый режим
    func sceneDidEnterBackground(_ scene: UIScene) {
        print(#function)
    }


}

