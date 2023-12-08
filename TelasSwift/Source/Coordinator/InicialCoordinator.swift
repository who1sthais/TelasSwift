//
//  InicialCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//

import Foundation
import UIKit
class InicialCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = InicialViewController()
            self.navigationController.pushViewController(viewController, animated: true)

        viewController.onVerdeTap = {
            let coordinator = TelaVerdeCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }

    }
}
