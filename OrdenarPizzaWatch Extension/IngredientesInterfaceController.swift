//
//  IngredientesInterfaceController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 14/5/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import WatchKit
import Foundation


class IngredientesInterfaceController: WKInterfaceController {

    @IBOutlet var JamonSwitch: WKInterfaceSwitch!
    @IBOutlet var PeperoniSwitch: WKInterfaceSwitch!
    @IBOutlet var PavoSwitch: WKInterfaceSwitch!
    @IBOutlet var SalchichaSwitch: WKInterfaceSwitch!
    @IBOutlet var AceitunaSwitch: WKInterfaceSwitch!
    @IBOutlet var CebollaSwitch: WKInterfaceSwitch!
    @IBOutlet var PimientoSwitch: WKInterfaceSwitch!
    @IBOutlet var PinaSwitch: WKInterfaceSwitch!
    @IBOutlet var AnchoaSwitch: WKInterfaceSwitch!
    @IBOutlet var GuindillasSwitch: WKInterfaceSwitch!
    
    @IBOutlet var AceptarButton: WKInterfaceButton!
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    var numSelect : Int = 0
    var ingredientes: [String] = []
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        tamanoPizza = ((context as! NSDictionary)["tamanoPizza"] as? String)!
        masaPizza = ((context as! NSDictionary)["masaPizza"] as? String)!
        quesoPizza = ((context as! NSDictionary)["quesoPizza"] as? String)!
        ingredientesPizza = ((context as! NSDictionary)["ingredientesPizza"] as? [String])!
        numIngredientesPizza = ((context as! NSDictionary)["numIngredientesPizza"] as? Int)!
        
        comprobar()
        
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
        
        if (segueIdentifier == "IngreConfiSegue") {
            
            ingredientesPizza = ingredientes
            
            return ["tamanoPizza": tamanoPizza,
                    "masaPizza": masaPizza,
                    "quesoPizza": quesoPizza,
                    "ingredientesPizza": ingredientesPizza,
                    "numIngredientesPizza": numSelect]
            
        }
        else {
            
            return ["tamanoPizza": "",
                    "masaPizza": "",
                    "quesoPizza": "",
                    "ingredientesPizza": "",
                    "numIngredientesPizza": ""]
            
        }
        
    }

    func comprobar() {
        
        if numSelect > 0 && numSelect <= 5 {
            
            AceptarButton.setEnabled(true)
            
        }
        else {
            
            AceptarButton.setEnabled(false)
            
        }
        
    }
    
    @IBAction func JamonAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Jamon")
                
            }
            else {
                
                JamonSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                        
                    if (ingredientes[x] == "Jamon") {
                    
                        ingredientes.removeAtIndex(x)
                        break
            
                    }

                }
                
            }
            
        }
    
        comprobar()
        
    }
    
    @IBAction func PeperoniAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Peperoni")
                
            }
            else {
                
                PeperoniSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Peperoni") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func PavoAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Pavo")
                
            }
            else {
                
                PavoSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Pavo") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func SalsichaAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Salsicha")
                
            }
            else {
                
                SalchichaSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Salsicha") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func AceitunaAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Aceituna")
                
            }
            else {
                
                AceitunaSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Aceituna") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func CebollaAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Cebolla")
                
            }
            else {
                
                CebollaSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Cebolla") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func PimientoAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Pimiento")
                
            }
            else {
                
                PimientoSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Pimiento") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func PinaAction(value: Bool) {
    
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Piña")
                
            }
            else {
                
                PinaSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Piña") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func GuindillaAction(value: Bool) {
    
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Guindillas")
                
            }
            else {
                
                GuindillasSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Guindillas") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
    @IBAction func AnchoaAction(value: Bool) {
        
        if value {
            
            if numSelect < 5 {
                
                numSelect += 1
                
                ingredientes.append("Anchoa")
                
            }
            else {
                
                AnchoaSwitch.setOn(false)
                
            }
            
        }
        else {
            
            if numSelect > 0 {
                
                numSelect -= 1
                
                for x in 0...ingredientes.count-1 {
                    
                    if (ingredientes[x] == "Anchoa") {
                        
                        ingredientes.removeAtIndex(x)
                        break
                        
                    }
                    
                }
                
            }
            
        }
        
        comprobar()
        
    }
    
}
