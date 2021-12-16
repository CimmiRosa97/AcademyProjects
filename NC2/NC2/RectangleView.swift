//
//  RectangleView.swift
//  NC2
//
//  Created by Rosa Cimmino on 10/12/21.
//

import Foundation
import SwiftUI

struct Rettangolo : View{
    
    var ccorri : Courses
    var body: some View{
    
        
        ZStack{
            RoundedRectangle(cornerRadius: 10, style: .continuous)
//                .stroke(Color.secondary, lineWidth: 2)
                .fill(Color.white)
//                .shadow(color: .secondary, radius: 3)

            

            HStack(alignment: .lastTextBaseline){
            VStack (spacing: 8){
                HStack (alignment: .lastTextBaseline){
                    Image (systemName: "\(ccorri.icona)")
                        .padding(4)
                        .font(.largeTitle)
                        .foregroundColor(ccorri.colore)
                    
                
                Text("\(ccorri.name)")
                    .padding(3)
                    .font(.title3)
                    .foregroundColor(.black)
                   
                    
                } .frame(minWidth: 400, alignment: .leading)
                
                Divider()
                Text("\(ccorri.orario)")
                    .font(.system(size: 12))
//                    .foregroundColor(.black)
                    .frame(minWidth: 370, alignment: .leading)
            }
                
                Divider().frame(maxHeight: 63)
                
             
                HStack (alignment: .lastTextBaseline){
                Text ("􀆊")
                    .font(.title)
                    .foregroundColor(.secondary)
                    .padding(10)
                
                }
            }

        }.frame (maxWidth: 450, maxHeight: 70)
    }
}


//file per fare la view dei rettangolini con info della main View
