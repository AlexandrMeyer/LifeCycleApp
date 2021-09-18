//
//  GreenViewController.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

class GreenViewController: UIViewController {
    
    // Вызывается сразу после инициализацией класса (самым первым)
    // Метод доступен для любого элемента интерфейса, его можно использовать вместо viewDidLoad(), там где его нет и работать в нём с IBOutlet и т.д.
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib")
    }
    
    var somePropertie: String! {
        didSet {
            print(somePropertie ?? "")
        }
    }
    
    @IBOutlet var openThirdVC: UIButton! {
        didSet {
            print(openThirdVC.currentTitle ?? "")
        }
    }
    
    // Метод используется при ручной инициализации View если мы работаем без Storyboard и если необходимо переопределить superView
//    override func loadView() {
//
//        }
    
    // Вызывается после загрузки View в память
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GreenVC"
        printMessage()
    }
    
    // Вызывается перед каждым появлением View
    // (тут пишется код для изменения, обновления настроек, элементов)
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Вызывается при растановке констрейнтов
    // (переопределять необходимо только если требуется оптимизировать изменение констрейнтов и оно происходит с запозданием, в противном случае обновлять констрейнты лучше сразу в экшене, по нажатию на кнопку)
    // чтобы его вызвать нужно вызвать setNeedsUpdateConstraints() в экшене
    override func updateViewConstraints() {
        printMessage()
        super.updateViewConstraints()
        
    }
    
    // Вызывается перед растановкой всех элементов на экране (вызывается два раза, первый раз с размерами из строриборда, а второй с актуальными)
    // (становятся доступны геометрические велечины, размеры View и subView и мы можем их менять чтобы установить актуальные, если размеры зависят от размера экрана)
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // Тут срабатывает Auto Layout (растановка элементов на экране)
    
    
    // Вызывается после растановкки всех элементов на экране
    // (в методе можно сохранять последние состояния элементов, положение scrollView, выделение ячейки в tableView)
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // Появляется View
    
    // Вызывается после появления View на экране
    // (в методе показывают финальную анимацию, рекламу, запускают видео после паузы)
    // метод не предназначен для хранения каких-либо свойств и объектов
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Вызывается при изменении размеров View (например при повороте экрана)
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        // size возвращает новый размер
        print(size.height)
        // coordinator может использоваться доя управления анимацией при переходе View из одного состояния в другое
    }
    
    // Вызывается перед скрытием View
    // Убирают firstResponderStatus, ставят на паузу действия, анимацию, отменяют ориентацию, стиль, статусБар, чистят данные, обнуляют кэш
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Вызывается после скрытия View (действия схожи с viewWillDisappear)
    // Чистяться данные, ставится на паузу плеер
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}

extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}

