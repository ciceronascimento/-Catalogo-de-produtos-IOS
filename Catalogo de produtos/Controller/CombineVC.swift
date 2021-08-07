//
//  CombineVC.swift
//  Catalogo de produtos
//
//  Created by Cicero Nascimento on 07/08/21.
//

import UIKit

class CombineVC: UIViewController {
    
    var produtos: [Produto] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.systemGroupedBackground
        
        self.adicionarCards()
        self.buscaProdutos()
    }
    
    func buscaProdutos () {
        self.produtos = ProdutoService.shared.buscaProdutos()
        print(self.produtos)
    }
}

extension CombineVC {
    func adicionarCards () {
        
        for produto in produtos {
            
            let darkGrayView = CombineCardView()
//            darkGrayView.backgroundColor = item == 2 ? .lightGray : .darkGray
            darkGrayView.frame = CGRect(x: 0, y: 0, width: view.bounds.width - 35, height: view.bounds.height * 0.55)
            
            darkGrayView.center = view.center
            
            //funçao observar clique no card
            
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlerCard))
            
            darkGrayView.addGestureRecognizer(gesture)
            
            view.addSubview(darkGrayView)
        }
        

    }
}

extension CombineVC{
    @objc func handlerCard (_ gesture: UIPanGestureRecognizer ) {
        if let card = gesture.view {
            let point = gesture.translation(in: view)
            
            //fazer se movimentar com o click
            
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            
            //rotaçao
            let rotationAngle = point.x / view.bounds.width * 0.21
            
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            //voltar posiçao inicial ao soltar
            if gesture.state == .ended {
                
                UIView.animate(withDuration: 0.2){
                    card.center = self.view.center
                    card.transform = .identity
                }
               
            }
        }
    }
}
