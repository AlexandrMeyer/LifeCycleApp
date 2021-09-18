//
//  SceneDelegate.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // это свойство нужно для работы без сториборда
    var window: UIWindow?

    // Вызывается сразу после метода application didFinishLaunchingWithOptions
    // Тут можно определять интерфейс приложения в зависсимости от типа устройства на котором оно запущенно.
    // Тут определяется стартовый ViewController если мы работаем без Storyboard.
    // Тут происходит инициализация Push уведомлений (запрос разрешения на их показ)
    // Происходит загрузка первичных данных из базы
    // Можно сделать глобальные изменения интерфейса (цвет navigationBar, цвет заголовка и т.д. что бы не менять в каждом ViewController)
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // пример как назначить основной ViewController (определяем в guard let windowScene)
        guard let _ = (scene as? UIWindowScene) else { return }
//        window = UIWindow(windowScene: windowScene)
//        window?.rootViewController = UINavigationController(rootViewController: RootViewController())
        
        // метод appearance отвечает за внешний вид
        UIView.appearance().tintColor = .red
        UINavigationBar.appearance().barTintColor = .green
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.blue]
//        print(#function)
    }
    
    // 
    func sceneDidDisconnect(_ scene: UIScene) {
//        print(#function)
    }
    
    // Вызывается перед переходом приложения в активное состояние
    // Используется для отмены изменений примененных при переходе в фоновый режим
    func sceneWillEnterForeground(_ scene: UIScene) {
//        print(#function)
    }
    
    // Переход приложения в фазу активного состояния (запуск или возврат после прерывания, паузы)
    func sceneDidBecomeActive(_ scene: UIScene) {
//        print(#function)
    }
    
    // Вызывается перед переходом приложения в фоновый режим
    // Останавливаем активные действия, ставим на паузу игры
    func sceneWillResignActive(_ scene: UIScene) {
 //       print(#function)
    }
    
    // Вызывается после перехода приложения в фоновый режим
    // Анулируются таймеры, освобождаются ресурсы (в фоновом режиме не должно быть энергоёмких процессов)
    func sceneDidEnterBackground(_ scene: UIScene) {
//        print(#function)
    }
}

