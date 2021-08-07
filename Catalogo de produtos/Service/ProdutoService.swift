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
        Produto(id: 102, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 103, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 104, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 105, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 106, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 107, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 108, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 109, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 110, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10"),
        Produto(id: 111, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foto: "roupa-10")
    ]
    
    //buscar de banco de dados futuramente
    func buscaProdutos () -> [Produto] {
        
      //  let produtos: [Produto] = []
        
        return self.produtos
    }
    
}
