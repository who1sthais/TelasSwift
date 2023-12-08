//
//  TelaVerdeCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-10 on 08/12/23.
//

import Foundation
import UIKit
class TelaVerdeCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

      func start() {
        let viewController = TelaVerdeViewController()
            self.navigationController.pushViewController(viewController, animated: true)

            viewController.onVermelhaTap = {
                let coordinator = TelaVermelhaCoordinator(navigationController: self.navigationController)
                coordinator.start()
            }

            viewController.onAzulTap = {
                let coordinator = InicialCoordinator(navigationController: self.navigationController)
                coordinator.start()
            }

    }
}
