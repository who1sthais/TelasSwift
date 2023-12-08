//
//  InicialViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC12 on 03/07/23.
//

import Foundation
import UIKit

class InicialViewController: UIViewController {
    //cria uma variável que é do tipo LoginView
    var viewMain = InicialView()
    
       override func loadView(){
           self.view = viewMain
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
