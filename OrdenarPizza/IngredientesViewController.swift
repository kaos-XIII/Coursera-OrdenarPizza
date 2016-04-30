//
//  IngredientesViewController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 30/4/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    @IBOutlet weak var JamonSwitch: UISwitch!
    @IBOutlet weak var PepperoniSwitch: UISwitch!
    @IBOutlet weak var PavoSwitch: UISwitch!
    @IBOutlet weak var SalsichaSwitch: UISwitch!
    @IBOutlet weak var GuindillasSwitch: UISwitch!
    @IBOutlet weak var AceitunasSwitch: UISwitch!
    @IBOutlet weak var CebollaSwitch: UISwitch!
    @IBOutlet weak var PimientoSwitch: UISwitch!
    @IBOutlet weak var AnchoaSwitch: UISwitch!
    @IBOutlet weak var PinaSwitch: UISwitch!
    var switchArray : [UISwitch] = []
    let ingredientesArray : [String] = ["Jamón", "Pepperoni", "Pavo", "Salsicha", "Guindillas", "Aceitunas", "Cebolla", "Pimiento", "Anchoa", "Piña"]
    
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        switchArray.append(JamonSwitch)
        switchArray.append(PepperoniSwitch)
        switchArray.append(PavoSwitch)
        switchArray.append(SalsichaSwitch)
        switchArray.append(GuindillasSwitch)
        switchArray.append(AceitunasSwitch)
        switchArray.append(CebollaSwitch)
        switchArray.append(PimientoSwitch)
        switchArray.append(AnchoaSwitch)
        switchArray.append(PinaSwitch)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "IngreConfSegue") {
            
            let siguienteVC = segue.destinationViewController as! ConfiViewController
            
            siguienteVC.tamanoPizza = tamanoPizza
            siguienteVC.masaPizza = masaPizza
            siguienteVC.quesoPizza = quesoPizza
            
            ingredientesPizza.removeAll()
            
            for i in 0...9 {
                
                if switchArray[i].on {
                
                    ingredientesPizza.append(ingredientesArray[switchArray[i].tag-1])
                    print("\(ingredientesArray[switchArray[i].tag-1])\n")
                }
                
            }
            
            siguienteVC.ingredientesPizza = ingredientesPizza
            
            siguienteVC.numIngredientesPizza = numIngredientesPizza
            
        }
        
    }
    
    @IBAction func IngredientesAction(sender: UISwitch) {
    
        if sender.on == true {
        
            if (numIngredientesPizza >= 5) {
        
                sender.on = false;
        
            }
            else {
            
                numIngredientesPizza += 1
        
            }
        
        }
        else if sender.on == false {
            
            numIngredientesPizza -= 1
            
        }
        
    }
    
}
