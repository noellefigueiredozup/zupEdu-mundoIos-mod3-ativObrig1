//
//  LoginViewController.swift
//  atividade-obrig1
//
//  Created by Noelle Figueiredo on 11/10/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var fieldEmail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onClickButtonLogin(_ sender: UIButton) {
        present(criarAlertaLogando(), animated: true)
    }
    
    @IBAction func onClickButtonSenha(_ sender: UIButton) {
        present(criarAlertaRecuperacao(), animated: true)
    }
    
    func criarAlertaLogando() -> UIAlertController
    {
        let alert = UIAlertController(
            title: "Logando",
            message: "Fazendo login na sua conta...",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil))
        
        return alert
        
    }
    
    func criarAlertaRecuperacao() -> UIAlertController
    {
        let alert = UIAlertController(
            title: "Redefinir senha",
            message: "Enviamos um email para \(fieldEmail.text!).\nSiga as instruções para criar uma senha segura.",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "Ok",
            style: .default,
            handler: nil))
        
        return alert
        
    }
    
}
