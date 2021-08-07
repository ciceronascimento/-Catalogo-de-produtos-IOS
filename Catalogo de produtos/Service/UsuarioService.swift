//
//  UsuarioService.swift
//  Catalogo de produtos
//
//  Created by Cicero Nascimento on 07/08/21.
//

import Foundation


class UsuarioService {
    
    static let shared = UsuarioService()
    
    let usuarios: [Usuario] = [
        Usuario(id: 101, nome: "Camisa Basica", preco: "R$1,00" ,listaDeCompras: true, frase: "Camisa barata basica sem nada", foot: "roupa-10")
    ]
    
    //buscar de banco de dados futuramente
    func buscaUsuario () -> [Usuario] {
        
        let usuarios: [Usuario] = []
        
        return usuarios
    }
    
}
