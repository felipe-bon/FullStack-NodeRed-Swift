//
//  Model.swift
//  Quitanda
//
//  Created by Student07 on 09/08/23.
//

import Foundation

struct Fruta: Codable, Hashable {
    
    let nome: String?
    let nutrientes: [String]?
    let imagem: String?
}

struct Quitanda: Codable, Hashable {
    let nome: String
    let endereco: String?
    let cidade: String?
    let frutasDisponiveis: [Fruta]?
}
