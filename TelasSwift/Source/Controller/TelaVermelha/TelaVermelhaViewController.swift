//
//  TelaVermelhaViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaViewController: UIViewController{
    
    var onAzulTap: (()->Void)?
    var onVerdeTap: (()->Void)?
    
    lazy var vermelhaView: VermelhaView = {
        let vermelhaView = VermelhaView()
        
        vermelhaView.onAzulTap = {
            self.onAzulTap?()
        }
        vermelhaView.onVerdeTap = {
            self.onVerdeTap?()
        }
        
        return vermelhaView
    }()
    override func loadView() {
        self.view = vermelhaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vermelha"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
