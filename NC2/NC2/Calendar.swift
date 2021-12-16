//
//  Calendar.swift
//  NC2
//
//  Created by Rosa Cimmino on 14/12/21.
//

import Foundation
import SwiftUI

struct Calendar : View{
    let data = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24",
    "25", "26", "27", "28", "29", "30", "31"]
    let layout = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),
    ]
    
    var body: some View{
        
        VStack{
            LazyVGrid(columns: layout, spacing : 16){
                Section(header:
                            VStack(alignment: .leading) {
                    HStack(spacing: 107){
                        Text("Dicembre 2021")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(CustomColor.JungleGreen)
                        
                        HStack(spacing: 8){
                        Text("􀆉")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(5)
                                .background(CustomColor.JungleGreen)
                                .clipShape(Circle())
                        Text("􀆊")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(5)
                                .background(CustomColor.JungleGreen)
                                .clipShape(Circle())
                        }
                    }
                   
                    HStack{
                        Text("Sun     Mon    Tue     Wed    Thu      Fri      Sat      ")
                            .fontWeight(.regular)
                    }.frame(maxWidth: .infinity)
                }
                ) {
                    ForEach (data, id: \.self) { i in
                            VStack{
                                if (i == "20"){
                                Text(i)
                                    .padding(5)
                                    .background(CustomColor.JungleGreen)
                                    .clipShape(Circle())
                                } else {
                                    Text(i)
                                        .padding(5)
                                        
                                }
                          }

                    }
                }
            }
        }
    }
}
