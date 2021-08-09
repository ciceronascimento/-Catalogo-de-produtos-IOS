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
        
//        self.adicionarCards()
        self.buscaProdutos()
    }
    
    func buscaProdutos () {
        self.produtos = ProdutoService.shared.buscaProdutos()
        self.adicionarCards()
        //        print(self.produtos)
    }
}

extension CombineVC {
    func adicionarCards () {
        
        for produto in produtos {
            
            let card = CombineCardView()
//            darkGrayView.backgroundColor = item == 2 ? .lightGray : .darkGray
            card.frame = CGRect(x: 0, y: 0, width: view.bounds.width - 35, height: view.bounds.height * 0.55)
            
            card.center = view.center
            card.produto = produto
            card.tag = produto.id
            
            //funçao observar clique no card
            
            let gesture = UIPanGestureRecognizer()
            gesture.addTarget(self, action: #selector(handlerCard))
            
            card.addGestureRecognizer(gesture)
            
            view.insertSubview(card, at: 0)
            //view.addSubview(card)
        }
        

    }
}

extension CombineVC{
    @objc func handlerCard (_ gesture: UIPanGestureRecognizer ) {
        if let card = gesture.view as? CombineCardView {
            let point = gesture.translation(in: view)
            
            //fazer se movimentar com o click
            
            card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            
            //rotaçao
            let rotationAngle = point.x / view.bounds.width * 0.21
            
            if point.x > 0 {
                card.likeImageView.alpha = rotationAngle * 5
                card.deslikeImageView.alpha = 0
            } else {
                card.likeImageView.alpha = 0
                card.deslikeImageView.alpha = rotationAngle * 5 * -1
            }
            
            card.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            //voltar posiçao inicial ao soltar
            if gesture.state == .ended {
                
                UIView.animate(withDuration: 0.2){
                    card.center = self.view.center
                    card.transform = .identity
                    
                    card.likeImageView.alpha = 0
                    card.deslikeImageView.alpha = 0
                }
               
            }
        }
    }
}
