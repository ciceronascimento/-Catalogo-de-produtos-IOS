//
//  ProdutoService.swift
//  Catalogo de produtos
//
//  Created by Cicero Nascimento on 07/08/21.
//

import Foundation


class ProdutoService {
    
    static let shared = ProdutoService()
    
    let produtos: [Produto] = [
        Produto(id: 101, nome: "Roupa Cara", preco: "R$1000,00" ,listaDeCompras: true, frase: "Definitivamente não cabe no seu bolso", foto: "roupa-4"),
        Produto(id: 103, nome: "Camisa Cool", preco: "R$15,00" ,listaDeCompras: true, frase: "Camisa comum cool que todo mundo tem", foto: "roupa-11"),
        Produto(id: 104, nome: "Sueter normal", preco: "R$100,00" ,listaDeCompras: true, frase: "Sueter basico mas caro pq aqui é quente", foto: "roupa-6"),
        Produto(id: 105, nome: "Conjunto fofinho", preco: "R$100,00" ,listaDeCompras: true, frase: "Sei la, achei essa roupa fofa", foto: "roupa-7"),
        Produto(id: 106, nome: "Roupa vilã", preco: "R$400,00" ,listaDeCompras: true, frase: "Roupa de vilã de novela mexicana", foto: "roupa-8"),
        Produto(id: 107, nome: "Vestido carissmo", preco: "R$2000,00" ,listaDeCompras: true, frase: "Até a foto foi cara", foto: "roupa-9"),
        Produto(id: 108, nome: "Moletom de nerd", preco: "R$50,00" ,listaDeCompras: true, frase: "Moletom basico de nerd", foto: "roupa-2"),
        Produto(id: 109, nome: "Roupa cringe", preco: "R$90,00" ,listaDeCompras: true, frase: "Conjunto que te leva de volta aos anos 90", foto: "roupa-3"),
        Produto(id: 102, nome: "Camisa Barata", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 110, nome: "Roupa legal", preco: "R$80,00" ,listaDeCompras: true, frase: "Acabou-se a criatividade", foto: "roupa-1"),
        Produto(id: 111, nome: "Mesma roupa da primeira", preco: "R$1000,00" ,listaDeCompras: true, frase: "Definitivamente cara demais", foto: "roupa-5")
    ]
    
    //buscar de banco de dados futuramente
    func buscaProdutos () -> [Produto] {
        
      //  let produtos: [Produto] = []
        
        return self.produtos
    }
    
}
