//
//  BlueViewController.swift
//  LifeCycleApp
//
//  Created by Александр on 9.09.21.
//

import UIKit

class BlueViewController: UIViewController {

    // MARK: - Navigation

    // свойство нужно, чтобы понять в какой момент происходит инициалицация свойств класса
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! GreenViewController
        dvc.somePropertie = "somePropertie"
    }
    

}
