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
    var tipoOpPressionado:String = ""
    var botaoClearPressionado:Bool = true
    var botaoOpPressionado:Bool = false
    var error:Bool = false
    
    @IBOutlet weak var txtNumero: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //informa que este deve ser o componente focado
        txtNumero.becomeFirstResponder()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doSoma(_ sender: Any) {
        if !error {
            if botaoClearPressionado{
                acumulador = Float(txtNumero.text!)!
                botaoClearPressionado = false
            }
            else{
                acumulador += Float(txtNumero.text!)!
            }
            
            txtNumero.text = "\(NSString(format: "%f",acumulador))"
            tipoOpPressionado = "+"
            botaoOpPressionado = true;
        }
        
    }

    @IBAction func doChange(_ sender: Any) {
        
        var lastText:String = "\((sender as! UITextField).text!)"
        
        if botaoOpPressionado  {
            botaoOpPressionado = false
            
            txtNumero.text = "\(lastText.characters.last!)"
            

        }
    }

    @IBAction func doSub(_ sender: Any) {
        if !error {
            if botaoClearPressionado{
                acumulador = Float(txtNumero.text!)!
                botaoClearPressionado = false
            }
            else{
                acumulador -= Float(txtNumero.text!)!
            }
            
            txtNumero.text = "\(NSString(format: "%f",acumulador))"
            tipoOpPressionado = "-"
            botaoOpPressionado = true;
        }
    }
  
    @IBAction func doMult(_ sender: Any) {
        if !error{
            if botaoClearPressionado{
                acumulador = Float(txtNumero.text!)!
                botaoClearPressionado = false
            }
            else{
                acumulador *= Float(txtNumero.text!)!
            }
            
            txtNumero.text = "\(NSString(format: "%f",acumulador))"
            tipoOpPressionado = "*"
            botaoOpPressionado = true;
        }
        
    }

    @IBAction func doDiv(_ sender: Any) {
        if !error{
            if botaoClearPressionado{
                acumulador = Float(txtNumero.text!)!
                botaoClearPressionado = false
            }
            else{
                if (Float(txtNumero.text!)!) == 0.0{
                    txtNumero.text = "ErrDiv0"
                    error = true;
                    return;
                }
                else{
                    acumulador /= Float(txtNumero.text!)!
                }
                
            }
            
            txtNumero.text = "\(NSString(format: "%f",acumulador))"
            tipoOpPressionado = "/"
            botaoOpPressionado = true;
        }
        
        
    }

    @IBAction func doIgual(_ sender: Any) {
        switch tipoOpPressionado{
            case "+": doSoma((Any).self)
            case "-": doSub((Any).self)
            case "*": doMult((Any).self)
            case "/": doDiv((Any).self)
            default: print("IgualPressionado")
        }
    }
    
    @IBAction func doLimpar(_ sender: Any) {
        error = false
        botaoClearPressionado=true
        txtNumero.text = ""
    }

    
}

