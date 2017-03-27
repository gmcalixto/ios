//
//  ViewController.swift
//  Calculadora
//
//  Created by Gustavo Calixto on 27/03/17.
//  Copyright © 2017 Gustavo Calixto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //buffer operacao
    var acumulador:Float = 0.0
    var maisPressionado:Bool = false
    
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doSoma(_ sender: Any) {
        
        acumulador += Float(txtNumero.text!)!
        
        txtNumero.text = "\(NSString(format: "%f",acumulador))"
        
        maisPressionado = true
        
    }

    @IBAction func doChange(_ sender: Any) {
        
        if maisPressionado{
            maisPressionado = false
            
            var lastText:String = "\((sender as! UITextField).text!)"
            
            txtNumero.text = "\(lastText.characters.last!)"
            

        }
    }

  


}

