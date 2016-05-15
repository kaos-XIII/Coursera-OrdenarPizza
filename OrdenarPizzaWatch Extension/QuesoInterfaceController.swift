//
//  QuesoInterfaceController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {

    @IBOutlet var MozarelaSwitch: WKInterfaceSwitch!
    @IBOutlet var ChedarSwitch: WKInterfaceSwitch!
    @IBOutlet var ParmesanoSwitch: WKInterfaceSwitch!
    @IBOutlet var SinQuesoSwitch: WKInterfaceSwitch!
    @IBOutlet var AceptarButton: WKInterfaceButton!
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    let queso = ["Mozarela", "Cheddar", "Parmesano", "Sin Queso"]
    var quesoSelect: Int = 0;
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        tamanoPizza = ((context as! NSDictionary)["tamanoPizza"] as? String)!
        masaPizza = ((context as! NSDictionary)["masaPizza"] as? String)!
        quesoPizza = ((context as! NSDictionary)["quesoPizza"] as? String)!
        ingredientesPizza = ((context as! NSDictionary)["ingredientesPizza"] as? [String])!
        numIngredientesPizza = ((context as! NSDictionary)["numIngredientesPizza"] as? Int)!
        
        AceptarButton.setEnabled(false)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        
        if (segueIdentifier == "QuesoIngreSegue") {
            
            return ["tamanoPizza": tamanoPizza,
                    "masaPizza": masaPizza,
                    "quesoPizza": queso[quesoSelect],
                    "ingredientesPizza": ingredientesPizza,
                    "numIngredientesPizza": numIngredientesPizza]
            
        }
        else {
            
            return ["tamanoPizza": "",
                    "masaPizza": "",
                    "quesoPizza": "",
                    "ingredientesPizza": "",
                    "numIngredientesPizza": ""]
            
        }
        
    }
    
    @IBAction func MozarelaAction(value: Bool) {
        
        quesoSelect = 0;
        
        if value {
            
            ChedarSwitch.setEnabled(false)
            ParmesanoSwitch.setEnabled(false)
            SinQuesoSwitch.setEnabled(false)
            AceptarButton.setEnabled(true)
            
        }
        else {
            
            ChedarSwitch.setEnabled(true)
            ParmesanoSwitch.setEnabled(true)
            SinQuesoSwitch.setEnabled(true)
            AceptarButton.setEnabled(false)
            
        }
        
    }

    @IBAction func CheddarAction(value: Bool) {
        
        quesoSelect = 1;
        
        if value {
            
            MozarelaSwitch.setEnabled(false)
            ParmesanoSwitch.setEnabled(false)
            SinQuesoSwitch.setEnabled(false)
            AceptarButton.setEnabled(true)
            
        }
        else {
            
            MozarelaSwitch.setEnabled(true)
            ParmesanoSwitch.setEnabled(true)
            SinQuesoSwitch.setEnabled(true)
            AceptarButton.setEnabled(false)
            
        }
        
    }
    
    @IBAction func ParmesanoAction(value: Bool) {
        
        quesoSelect = 2;
        
        if value {
            
            ChedarSwitch.setEnabled(false)
            MozarelaSwitch.setEnabled(false)
            SinQuesoSwitch.setEnabled(false)
            AceptarButton.setEnabled(true)
            
        }
        else {
            
            ChedarSwitch.setEnabled(true)
            MozarelaSwitch.setEnabled(true)
            SinQuesoSwitch.setEnabled(true)
            AceptarButton.setEnabled(false)
            
        }
        
    }

    @IBAction func SinQuesoAction(value: Bool) {
        
        quesoSelect = 3;
        
        if value {
            
            ChedarSwitch.setEnabled(false)
            ParmesanoSwitch.setEnabled(false)
            MozarelaSwitch.setEnabled(false)
            AceptarButton.setEnabled(true)
            
        }
        else {
            
            ChedarSwitch.setEnabled(true)
            ParmesanoSwitch.setEnabled(true)
            MozarelaSwitch.setEnabled(true)
            AceptarButton.setEnabled(false)
        
        }
        
    }
}
