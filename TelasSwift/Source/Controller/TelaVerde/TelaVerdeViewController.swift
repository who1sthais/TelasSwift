//
//  TelaVermelhaView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//

import Foundation
import UIKit

class TelaVerdeViewController: UIViewController{
    
    var onVermelhaTap: (() -> Void)?
    var onAzulTap: (()->Void)?

    
    lazy var verdeView: VerdeView = {
        let verdeView = VerdeView()
        verdeView.onVermelhaTap = {
            self.onVermelhaTap?()
        }
        verdeView.onAzulTap = {
            self.onAzulTap?()
        }
        
        return verdeView
    }()
    

    
    override func loadView() {
        self.view = verdeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Verde"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
