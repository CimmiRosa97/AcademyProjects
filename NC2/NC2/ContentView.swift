//
//  ContentView.swift
//  NC2
//
//  Created by Rosa Cimmino on 07/12/21.
//

import SwiftUI

//colore custom verde Jungle Green




struct FirstScreen: View {
    var body: some View {

            VStack{
              
                NavigationView {
                            // The first column is the sidebar.
                            Sidebar()
                
                           MainView()
                        }
                .frame(minWidth: 900, idealWidth: 9500, maxWidth: .infinity, minHeight: 700)
                .toolbar {
                            ToolbarItem(placement: .navigation) {
                                Button(action: toggleSidebar, label: { // 1
                                    Image(systemName: "sidebar.leading")
                                })
                            }
                        }

        }
    }
        
    
    //funzione associata al bottone che mi permette di vedere o meno la sidebar
    private func toggleSidebar() { // 2
            #if os(iOS)
            #else
            NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
            #endif
        }
    
//    //////////////////////////////////////
}






struct Sidebar : View {
    
    var body : some View {
        VStack{
            List{
                Calendar()
                
                Divider()
                
                VStack (alignment:.leading, spacing: 20){
                    HStack (alignment: .top) {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.accentColor)
                        Text("Tasks").font(.title3)
                            .shadow(color: .gray, radius: 15)
                    }
                    HStack{
                        Image(systemName: "calendar")
                            .foregroundColor(.accentColor)
                        Text("Weekly Schedule").font(.title3)
                            .shadow(color: .gray, radius: 15)
                    }
                }
                
                Divider()
                VStack (alignment:.leading, spacing: 20){
                    HStack(spacing: 130){
                        Text("Winter 2021").font(.title3.bold())
                        Image(systemName: "ellipsis.circle")
                            .foregroundColor(CustomColor.JungleGreen)
                    } .padding()
                    
                    ForEach(corsi) { corso in
                        HStack (alignment: .top, spacing: 10){
                            Image(systemName: corso.icona)
                                .foregroundColor(corso.colore)
//                                .foregroundColor(CustomColor.JungleGreen)
                            Text (corso.name)
                                .frame(alignment: .leading)
                                .lineLimit(1)
                            
                        }.padding(5)
                    }
                    
                }
                Spacer()
                        .preferredColorScheme(.light)
            }.listStyle(.sidebar)
        }  .frame (minWidth: 300, idealWidth: 300, maxWidth: 300)
        
        
    }    // chiusura della } del body
}







struct MainView : View{
    @State private var showClasses = true //se è vera ho già la lista, se è falsa la devo stampare
    @State private var showTasks = true //se è vera ho già la lista visibile, se è falsa no e la devo visualizzare
    var body: some View{
        //        questa è la main view con i corsi della giornata
        
        VStack(spacing: 10){
//            Spacer()
            Divider()
            HStack(alignment: .top, spacing:380){
            Text("Classes")
                    .font(.title2.bold())
                    .frame(alignment: .leading)
                if(showClasses == true) {
                    Button{
                        showClasses.toggle()
                    } label: {
                        Text("Hide")
                            .foregroundColor(CustomColor.JungleGreen)
                    }
                } else {
                    Button {
                        showClasses.toggle()
                    } label: {
                        Text("Show")
                            .foregroundColor(CustomColor.JungleGreen)
                    }
                }
            }//.frame(alignment: .top)
            if (showClasses){
                
                ScrollView{
                VStack( alignment: .leading, spacing:10){
                    
                    Rettangolo(ccorri: corsi[3])
                        .padding(12)
                    Rettangolo (ccorri: corsi[1])
                        .padding(12)
                    Rettangolo(ccorri: corsi[4])
                        .padding(12)
   
                }
                }
            }
            
//            Spacer()
            Divider()
            HStack(alignment: .top, spacing:395){
            Text("Tasks")
                .font(.title2.bold())
                .frame(alignment: .leading)
                
                if(showTasks == true) {
                    Button{
                        showTasks.toggle()
                    } label: {
                        Text("Hide")
                            .foregroundColor(CustomColor.JungleGreen)
                    }
                } else {
                    Button {
                        showTasks.toggle()
                    } label: {
                        Text("Show")
                            .foregroundColor(CustomColor.JungleGreen)
                    }
                }
                
            }//chiusura hstack
            
            if (showTasks){
        
             
                ScrollView{
                    Spacer()
                    VStack (spacing: 40){

                
                TaskView(tasks: tasks[0])
                            .padding()
                TaskView (tasks: tasks[1])
                            .padding(12)
                TaskView (tasks: tasks[2])
                            .padding(12)
                TaskView (tasks: tasks[3])
                            .padding(20)
                
            }
                } //.padding([.top, .bottom])
                    
            }
            
            Divider()
            Spacer()
            
        } //chiusura Vstack
//        .frame(idealWidth: 1000, alignment: .topLeading)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
            .preferredColorScheme(.light)
            .previewDevice("MacBook Pro")
    }
}
