//
//  TelaVerdeViewController.swift
//  TelasSwift
//
//  Created by IFBIOTIC12 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController {
    
    //MARK: - Initialize
    var onInicialTap: (()-> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var telaverdeView: TelaVerdeView = {
        let telaverdeView = TelaVerdeView()
        
        telaverdeView.onInicialTap = {
            self .onInicialTap?()
        }
        return telaverdeView
    }()
    
       override func loadView(){
           self.view = telaverdeView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
