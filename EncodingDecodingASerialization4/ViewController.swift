//
//  ViewController.swift
//  EncodingDecodingASerialization4
//
//  Created by SK on 9/28/17.
//  Copyright © 2017 SK. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let jsonEncoder = JSONEncoder()
    
    @IBOutlet weak var employeeNameTextField: UITextField!
    @IBOutlet weak var employeeIdTextField: UITextField!
    @IBOutlet weak var toyNameTextField: UITextField!
    
    var ToyOne = Toy(name: "")
    var EmployeeDataOne = Employee(name: "", id: 0, favoriteToy: Toy(name: ""))
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func btnEncode(_ sender: Any)
    {
        ToyOne = Toy(name: toyNameTextField.text!)
        EmployeeDataOne = Employee(name: employeeNameTextField.text!, id: Int(employeeIdTextField.text!)!, favoriteToy: ToyOne)
        
        do
        {
            let jsonData = try jsonEncoder.encode(EmployeeDataOne)
            print(jsonData)
            
            let jsonString = String(data: jsonData, encoding: .utf8)
            print(jsonString!)
            
            StaticInternalVars.name = employeeNameTextField.text!
            StaticInternalVars.id = Int(employeeIdTextField.text!)!
            StaticInternalVars.toyName = toyNameTextField.text!
            StaticInternalVars.jsonData = jsonData
            print(StaticInternalVars.jsonData)
            StaticInternalVars.jsonString = jsonString!
        }
        catch
        {
            print(error)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

