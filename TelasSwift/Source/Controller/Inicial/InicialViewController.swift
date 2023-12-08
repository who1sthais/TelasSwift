//
//  InicialViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//
 
import Foundation
import UIKit

class InicialViewController: UIViewController{
    
    var onVerdeTap: (() -> Void)?

    
    lazy var inicialView: InicialView = {
        let inicialView = InicialView()
        inicialView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return inicialView
    }()
    override func loadView() {
        self.view = inicialView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Azul"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
