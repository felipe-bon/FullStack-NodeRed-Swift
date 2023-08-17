//
//  FrutaView.swift
//  Quitanda
//
//  Created by Student07 on 09/08/23.
//

import SwiftUI

struct FrutaView: View {
    
    var fruta: Fruta
    var body: some View {
        
        VStack{
            ScrollView{
                VStack{
                    
                    Text("\(fruta.nome!)")
                        .foregroundColor(.black)
                        .font(.system(size: 40))
                        .frame(width: 300,height: 50)
                    
                    AsyncImage(url: URL(string:fruta.imagem!)){ image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 300)
                        
                    } placeholder: {
                        Color.gray
                    }
                    
                    Text("Nutrientes presentes: ")
                        .padding()
                    
                    HStack{
                        ForEach(fruta.nutrientes!, id: \.self) { nutriente in
                            
                            Text("\(nutriente)"+" ")
                            
                        }
                    }
                    
                    
                    ContentView()
                }
                
            }
        }
    }
}

struct FrutaView_Previews: PreviewProvider {
    static var previews: some View {
        FrutaView(fruta: Fruta(nome: "Laranja", nutrientes: ["Vitamina C","Vitamina D"], imagem: "https://www.proativaalimentos.com.br/image/cache/catalog/img_prod/Laranja_lima_600x600[1]-1000x1000.jpg"))
    }
}
