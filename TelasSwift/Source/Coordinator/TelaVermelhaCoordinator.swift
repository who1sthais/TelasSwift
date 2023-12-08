//
//  TelaVermelhaCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//

import Foundation
import UIKit

class TelaVermelhaCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = TelaVermelhaViewController()
            self.navigationController.pushViewController(viewController, animated: true)

            viewController.onAzulTap = {
                let coordinator = InicialCoordinator(navigationController: self.navigationController)
                coordinator.start()
            }

            viewController.onVerdeTap = {
                let coordinator = TelaVerdeCoordinator(navigationController: self.navigationController)
                coordinator.start()
            }
    }
}