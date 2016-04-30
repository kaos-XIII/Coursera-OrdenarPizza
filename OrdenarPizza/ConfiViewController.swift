//
//  ConfiViewController.swift
//  OrdenarPizza
//
//  Created by Alejandro Veiga López on 30/4/16.
//  Copyright © 2016 Alejandro Veiga López. All rights reserved.
//

import UIKit

class ConfiViewController: UIViewController {

    
    @IBOutlet weak var TamanoLabel: UILabel!
    @IBOutlet weak var MasaLabel: UILabel!
    @IBOutlet weak var QuesoLabel: UILabel!
    @IBOutlet weak var IngredientesText: UITextView!
    
    @IBOutlet weak var AceptarButton: UIButton!
    
    var tamanoPizza : String = ""
    var masaPizza : String = ""
    var quesoPizza : String = ""
    var ingredientesPizza : [String] = []
    var numIngredientesPizza : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("////////////////////")
        print("Pizza Seleccionada: ")
        print("Tamaño de Pizza: " + tamanoPizza)
        print("Masa de Pizza: " + masaPizza)
        print("Queso de Pizza: " + quesoPizza)
        print("Ingredientes de Pizza: \(ingredientesPizza)")
        print("Numero de Ingredientes: \(numIngredientesPizza)")
        print("////////////////////")
 
        TamanoLabel.text = tamanoPizza
        MasaLabel.text = masaPizza
        QuesoLabel.text = quesoPizza
        IngredientesText.text = "Numero de Ingredientes: \(numIngredientesPizza). \n"
        
        if (numIngredientesPizza > 0) {
            
            for i in 0...ingredientesPizza.count - 1 {
            
                IngredientesText.insertText("\tIngrediente \(i+1): \(ingredientesPizza[i])\n")
        
            }
        
        }
        else {
            
            AceptarButton.enabled = false
            
            let titulo = "Ingredientes"
            let mensaje = "Necesitas un minimo de un ingrediente.\nVuelve atras para selecionar ingredientes."
            let boton = "Ok"
            
            let alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: boton, style: UIAlertActionStyle.Default,handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
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
        
        if(segue.identifier == "ConfUltimaSegue") {
            
            let siguienteVC = segue.destinationViewController as! ViewController
            
            siguienteVC.numIngredientesPizza = numIngredientesPizza
        
        }
    
    }

}
