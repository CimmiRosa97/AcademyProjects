//
//  TaskView.swift
//  NC2
//
//  Created by Rosa Cimmino on 13/12/21.
//

import Foundation
import SwiftUI


struct TaskView: View{
    @State var checked = false
   
    var tasks : Task

    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.white)
            

                VStack (spacing: 6){

                   
                    HStack (alignment: .lastTextBaseline){
                        
                        Toggle("", isOn: $checked)
                            .toggleStyle(.checkbox)
                        
                    
                        Text("\(tasks.priority)")
                            .padding(3)
                            .font(.title2)

                        if (checked){
                        Text("\(tasks.nome)")
                            .font(.title3)
                            .strikethrough()
                            .lineLimit(3)
                            .layoutPriority(100)
//                            .frame(maxWidth: 300)
                        } else {
                            Text("\(tasks.nome)")
                                .font(.title3)
//                                .lineLimit(3)
                                .layoutPriority(60)
//                                .frame(maxWidth: 500)
                        }
                    
                        Spacer()
                        Text("􀍡")
                            .padding(4)
//                            .position(x: 30, y: 15)
//                            .frame(alignment:.trailing)
                        
                    } .frame(maxWidth: 400, alignment: .leading)
                    
                    Text("\(tasks.tipoAssignment)")
//                        .frame(width: 300)
                        .font(.system(size: 10))
                        .foregroundColor(.white)
                        .padding(3)
                        .background(Color.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 6, style: .continuous))
                        .frame(maxWidth: 399, alignment: .leading)
                    
                  
                    
                    Divider()
                    
                    HStack{
                        Image (systemName: "\(tasks.icona)")
                            .padding(3)
                            .font(.body)
                            .foregroundColor(tasks.colore)
                            
                        
                        
                        
                    Text("\(tasks.corso)")
                        .padding(2)
                        .font(.body)
                        .foregroundColor(tasks.colore)
                        
                    }.frame(maxWidth: 399, alignment: .leading)
                      
                    
                    Text("\(tasks.Notes)")
                        .padding(2)
                        .font(.system(size: 12))
                        .frame(maxWidth: 399, alignment: .leading)
                    
                    
                    
                }
            
 
        }.frame (maxWidth: 450, maxHeight: 70) // chiusura della vstack
            
        
    }
    

}
