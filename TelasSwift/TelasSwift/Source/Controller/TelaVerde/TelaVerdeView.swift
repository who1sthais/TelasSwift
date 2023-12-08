//
//  TelaVerdeView.swift
//  TelasSwift
//
//  Created by IFBIOTIC12 on 03/07/23.
//

import Foundation
import UIKit

class TelaVerdeView: UIView {
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .green
            setupVisualElements()
            
        }
    var onInicialTap: (()-> Void)?
    //cria a função com as propriadades do botão Vermelho
    var buttonV = ButtonDefault(botao: "Ir para tela Vermelha")
    
    //cria a função com as propriadades da butao Azul
    var buttonA = ButtonDefault(botao: "Voltar para tela Azul")
    
   
        
    
    func setupVisualElements() {
        
        self.addSubview(buttonV)
        self.addSubview(buttonA)
        
        
        NSLayoutConstraint.activate([
        
            
            buttonV.widthAnchor.constraint(equalToConstant: 374),
            buttonV.heightAnchor.constraint(equalToConstant: 60),
            buttonV.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 25),
            buttonV.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonV.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonA.widthAnchor.constraint(equalToConstant: 374),
            buttonA.heightAnchor.constraint(equalToConstant: 60),
            buttonA.topAnchor.constraint(equalTo: buttonV.bottomAnchor, constant: 25),
            buttonA.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonA.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),

        
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
        private func inicialTap(){
            onInicialTap?()
        }
}
