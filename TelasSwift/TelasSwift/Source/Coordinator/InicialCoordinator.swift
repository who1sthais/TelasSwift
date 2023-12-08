//
//  InicialCoordinator.swift
//  TelasSwift
//
//  Created by IFBIOTIC12 on 03/07/23.
//

import Foundation
import UIKit
class InicialCoordinator: Coordinator {
    
    //faço com que todas as telas que usarem o LoginCoordinator impremente
    //o navigation controller. Senão todos todas as vezes teria que instãnciá-lo
    var navigationController: UINavigationController
    
    //cria um construtor para incializar meu navationCrontroller
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = InicialViewController()
            self.navigationController.pushViewController(viewController, animated: true)

    }
}
