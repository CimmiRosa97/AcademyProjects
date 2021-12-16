//
//  Database.swift
//  NC2
//
//  Created by Rosa Cimmino on 07/12/21.
//

import Foundation
import SwiftUI

//struct colori
struct CustomColor {
    static let JungleGreen = Color("JungleGreen") //colore personale
    static let Orange = Color("Orange")
    static let MyRed = Color ("MyRed")
    static let StrongGreen = Color ("StrongGreen")
    static let AquaGreen = Color ("AquaGreen")
    static let Fucsia = Color("Fucsia")
    
}

//file con i dati a cui accedo per creare gli screen

struct Courses : Identifiable{
    let id = UUID()
    var name : String
    var icona : String
    var orario : String
    var colore : Color
}

var corsi : [Courses] = [
    Courses (name: "Advanced Object-Oriented Programming", icona: "chevron.left.forwardslash.chevron.right", orario: "", colore: CustomColor.JungleGreen),
    Courses (name: " Calculus IV", icona: "sum", orario: "Second Period: 9:30 - 11:00 AM", colore: CustomColor.Fucsia),
    Courses (name: "Duty, Kant, Deontology", icona: "person.2.fill", orario: "", colore: CustomColor.MyRed),
    Courses (name: "Introduction to Law", icona: "hammer.fill", orario: "First Period: 8:00 - 9:30 AM", colore: CustomColor.StrongGreen),
    Courses (name: "Quantum Theory and Life", icona: "staroflife.fill", orario: "Third Period: 12:00 - 1:30 PM", colore: CustomColor.Orange),
    Courses (name: "Remedial Chaos Theory", icona: "moon.fill", orario: "", colore: CustomColor.AquaGreen)
]



struct Task : Identifiable{
    let id = UUID()
    var icona : String
    var nome : String
    var corso: String
    var check : Bool  // se è true allora  la task è completa, altrimenti no
    var tipoAssignment: String
    var Duedate: Date?
    var priority : String
    var Notes: String
    var colore : Color
}

var tasks : [Task] = [
    Task (icona:"staroflife.fill", nome: "Fix the Chamaleon Circuit", corso: "Quantum Theory and Life", check: false, tipoAssignment: "Project", priority: "!", Notes: "Reach out to collegues and friends for help", colore: CustomColor.Orange),
    Task ( icona: "person.2.fill", nome: "Read Doug's Faucet Theory on the Good Place", corso: "Duty, Kant, Deontology", check: false, tipoAssignment: "Paper", priority: "!!", Notes: "Important for the exam", colore: CustomColor.MyRed),
    Task(icona: "moon.fill", nome: "Invade the Darkest Timeline", corso: "Remedial Chaos Theory", check: false, tipoAssignment: "Spreadsheet", priority: "!!!", Notes: "We must our evil doppelgangers", colore: CustomColor.AquaGreen ),
    Task(icona:"chevron.left.forwardslash.chevron.right", nome: "Design Spec for Objective Racket", corso: "Advanced Object-Oriented Programming", check: false, tipoAssignment: "Homework", priority: "!", Notes: "Combine power of Objective C with functional Racket", colore: CustomColor.JungleGreen)
]


//la leggenda per la priorità nelle tasks è che != Low, !!= Medium, !!!= High
