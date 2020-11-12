//
//  RegistrationViewController.swift
//  Delegate(передача данных с RegistrationViewController)
//
//  Created by Сергей Голенко on 12.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

//cоздаю протокол
protocol RegistrationDelegate : class {
    func newPasswordWill(newPassword:String)
}





class RegistrationViewController: UIViewController {
    //создаю свойство delegate.Это свойсто содержит доступ к функции newPasswordWill
    var delegate : RegistrationDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBOutlet weak var secondTextField: UITextField!
    
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        //передаю в функцию новое значение
        guard let newPassword = secondTextField.text else {return}
        
        delegate?.newPasswordWill(newPassword: newPassword)
    }
    
    

}
