//
//  CombineCardView.swift
//  Catalogo de produtos
//
//  Created by Cicero Nascimento on 07/08/21.
//

import UIKit

class CombineCardView: UIView{
    
    var produto: Produto? {
        didSet {
            if let produto = produto {
                fotoImageView.image = UIImage(named: produto.foto)
                nomeLabel.text = produto.nome
                precoLabel.text = produto.preco
                descricaoLabel.text = produto.frase
            }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView()
//        UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "roupa-4")
//        //nao ficar com imagem esticada
//        imageView.contentMode = .scaleAspectFill
//        //cortar caso ultrapasse card
//        imageView.clipsToBounds = true
//        return imageView
//    }()
//
    let nomeLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let precoLabel: UILabel = .textLabel(16, textColor: .white)
    let descricaoLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "icone-deslike")
    let likeImageView: UIImageView = .iconCard(named: "icone-like")
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        
        
        nomeLabel.adicionaShadow()
        precoLabel.adicionaShadow()
        descricaoLabel.adicionaShadow()
        
        addSubview(fotoImageView)
        
        addSubview(deslikeImageView)
        deslikeImageView.preencher(top: topAnchor, leading: nil, trailing: trailingAnchor, bottom: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 20))
        
        addSubview(likeImageView)
        likeImageView.preencher(top: topAnchor, leading: leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        
        fotoImageView.preencherSuperView()
        
        let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, precoLabel, UIView()])
        nomeIdadeStackView.spacing = 30
        
        let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, descricaoLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(top: nil, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor, padding: .init(top: 0, left: 16, bottom: 16, right: 16))
        
//        backgroundColor = .purple
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
