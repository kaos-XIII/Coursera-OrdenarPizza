//
//  ConfiInterfaceController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class ConfiInterfaceController: WKInterfaceController {

    @IBOutlet var ConfirLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var numImgredientesLabel: WKInterfaceLabel!
    @IBOutlet var ingredientesLebel: WKInterfaceLabel!
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        tamanoPizza = ((context as! NSDictionary)["tamanoPizza"] as? String)!
        masaPizza = ((context as! NSDictionary)["masaPizza"] as? String)!
        quesoPizza = ((context as! NSDictionary)["quesoPizza"] as? String)!
        ingredientesPizza = ((context as! NSDictionary)["ingredientesPizza"] as? [String])!
        numIngredientesPizza = ((context as! NSDictionary)["numIngredientesPizza"] as? Int)!
        
        
        ConfirLabel.setText("Tamaño: \(tamanoPizza)")
        masaLabel.setText("Masa: \(masaPizza)")
        quesoLabel.setText("Queso: \(quesoPizza)")
        numImgredientesLabel.setText("Numero Ingredientes: \(numIngredientesPizza)")
        var text : String = "Ingredientes: \(ingredientesPizza[0])"
        
        if (ingredientesPizza.count > 1) {
        
            for x in 1...ingredientesPizza.count-1 {
            
                text += ", \(ingredientesPizza[x])"
            
            }
            
        }
        ingredientesLebel.setText(text)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
