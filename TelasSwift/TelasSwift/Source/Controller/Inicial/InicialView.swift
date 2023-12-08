//
//  InicialView.swift
//  TelasSwift
//
//  Created by IFBIOTIC12 on 03/07/23.
//

import Foundation
import UIKit

class InicialView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .viewBackGroundColor
            setupVisualElements()
            
        }
    
    var onTelaVerdeTap: (() -> Void)?

    
    //cria a função com as propriadades da butao no logor
    var buttonVerde = ButtonDefault(botao: "Ir para tela Verde")
    
    //cria a função com as propriadades do botão registrar
    //var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
        
    
    func setupVisualElements() {
        self.addSubview(buttonVerde)
        //self.addSubview(buttonRegistrar)
        
        NSLayoutConstraint.activate([
        
            
            buttonVerde.widthAnchor.constraint(equalToConstant: 374),
            buttonVerde.heightAnchor.constraint(equalToConstant: 60),
            buttonVerde.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonVerde.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonVerde.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
        private func telaverdeTap(){
            onTelaVerdeTap?()
        }
}
