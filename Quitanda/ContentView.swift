//
//  ContentView.swift
//  Quitanda
//
//  Created by Student07 on 09/08/23.
//

import SwiftUI

struct ContentView: View {@StateObject var viewModel = ViewModel()
    
    
    private var twoColumnGrid = [GridItem(.flexible()), GridItem(.flexible())]
    
    
    var body: some View {
        NavigationStack{
            VStack{
                    ScrollView{
                        VStack{
                            Text("Frutas disponiveis")
                            ForEach(viewModel.quitanda, id: \.self) { quit in
                                LazyVGrid(columns: twoColumnGrid){
                                    ForEach(quit.frutasDisponiveis!, id: \.self) { f in
                                        NavigationLink(destination: FrutaView(fruta: f)){
                                            
                                            AsyncImage(url: URL(string:f.imagem!)){ image in
                                                image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 100, height: 100)
                                                
                                            } placeholder: {
                                                Color.gray
                                            }
                                            
                                        }
                                        
                                    }
                                }
                                // Text("\()"+" ")
                                
                            }
                        }
                    }
                
            }
        }.onAppear(){
            viewModel.fetch()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
