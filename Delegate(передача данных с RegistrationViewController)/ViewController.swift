//
//  ViewController.swift
//  Delegate(передача данных с RegistrationViewController)
//
//  Created by Сергей Голенко on 12.11.2020.
//  Copyright © 2020 Сергей Голенко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startPassword = "1"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBOutlet weak var firstTextField: UITextField!
    
    @IBAction func goButton(_ sender: UIButton) {
        if firstTextField.text == startPassword{
            print("delegate работает правильно")
        } else {
            print("скорее всего не верный пароль")
        }
    }
    
    
    
    
    @IBAction func registrationButton(_ sender: UIButton) {
    }
    
}


//Здесь я подписуюсь на протокол RegistrationDelegate,для того что бы реализовать метод делегата
extension ViewController : RegistrationDelegate {
    //в startPassword попадет новое значение с другого контроллера
    func newPasswordWill(newPassword: String) {
        startPassword = newPassword
    }
    
    
    
    //В этом методе я подписываюсь на delegate который находится в RegistrationViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            if let vc = segue.destination as? RegistrationViewController {
                vc.delegate = self
            }
        }
    }
    
    
    
}

