//
//  OrangeViewController.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

class OrangeViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        print("OrangeVC - View Did Load")
    }
    
    // Вызывается перед каждым появлением View
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("OrangeVC - View Will Appear")
    }
    
    // Вызывается после появления View на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("OrangeVC - View Did Appear")
    }
    
    // Вызывается перед скрытием View
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("OrangeVC - View Will Disappear")
    }
    
    // Вызывается после скрытия View
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("OrangeVC - View Did Disappear")
    }
    
    // Вызывается когда View выгружается из памяти
    deinit {
        print("OrangeVC - deinit")
    }
    
    @IBAction func closeVC() {
        dismiss(animated: true, completion: nil)
    }
    
}
