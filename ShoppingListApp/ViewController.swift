//
//  ViewController.swift
//  ShoppingListApp
//
//  Created by Manmeen Kaur on 2022-10-28.
//
//  Student Name - Manmeen Kaur
//  Student ID - 301259638
//  Changes - Created IBOutlet and IBAction for TextFields, Labels, Steppers and Buttons to enter items for grocery shopping and upon Save button, displaying the whole list in Console area.
//  Implemented for both Portrait and Landscape mode.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Textfields to enter shopping list name
    @IBOutlet weak var ShoppingListName: UITextField!
    
    @IBOutlet weak var ShoppingListNameLandscape: UITextField!
    
    
    //Textfields to enter list items
    @IBOutlet weak var TextField1: UITextField!
    
    @IBOutlet weak var TextFieldLandscape1: UITextField!
    
    
    @IBOutlet weak var TextField2: UITextField!
    
    @IBOutlet weak var TextFieldLandscape2: UITextField!
    
    
    @IBOutlet weak var TextField3: UITextField!
    
    @IBOutlet weak var TextFieldLandscape3: UITextField!
    
    
    @IBOutlet weak var TextField4: UITextField!
    
    @IBOutlet weak var TextFieldLandscape4: UITextField!
    
    
    @IBOutlet weak var TextField5: UITextField!
    
    @IBOutlet weak var TextFieldLandscape5: UITextField!
    
    
    //Labels displaying the quantity of items
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var LabelLandscape1: UILabel!
    
    
    @IBOutlet weak var Label2: UILabel!
    
    @IBOutlet weak var LabelLandscape2: UILabel!
    
    
    @IBOutlet weak var Label3: UILabel!
    
    @IBOutlet weak var LabelLandscape3: UILabel!
    
    
    @IBOutlet weak var Label4: UILabel!
    
    @IBOutlet weak var LabelLandscape4: UILabel!
    
    
    @IBOutlet weak var Label5: UILabel!
    
    @IBOutlet weak var LabelLandscape5: UILabel!
    
    
    //Steppers to increase and decrease the quantity of items
    @IBAction func Stepper1(_ sender: UIStepper) {
        Label1.text=String(Int(sender.value))
    }
    
    @IBAction func StepperLandscape1(_ sender: UIStepper) {
        LabelLandscape1.text=String(Int(sender.value))
    }
    
    
    @IBAction func Stepper2(_ sender: UIStepper) {
        Label2.text=String(Int(sender.value))
    }
    
    @IBAction func StepperLandscape2(_ sender: UIStepper) {
        LabelLandscape2.text=String(Int(sender.value))
    }
    
    
    @IBAction func Stepper3(_ sender: UIStepper) {
        Label3.text=String(Int(sender.value))
    }
    
    @IBAction func StepperLandscape3(_ sender: UIStepper) {
        LabelLandscape3.text=String(Int(sender.value))
    }
    
    
    @IBAction func Stepper4(_ sender: UIStepper) {
        Label4.text=String(Int(sender.value))
    }
    
    @IBAction func StepperLandscape4(_ sender: UIStepper) {
        LabelLandscape4.text=String(Int(sender.value))
    }
    
    
    @IBAction func Stepper5(_ sender: UIStepper) {
        Label5.text=String(Int(sender.value))
    }
    
    @IBAction func StepperLandscape5(_ sender: UIStepper) {
        LabelLandscape5.text=String(Int(sender.value))
    }
    
    
    //printing list of shopping items in console when clicking Save button
    @IBAction func SaveList(_ sender: UIButton) {
        if(ShoppingListName.text == "")
        {
            ShoppingListName.text = "Grocery Shopping List"
        }
        print("***************************")
        print(ShoppingListName.text! as Any)
        print("***************************")
        print("\(String(describing: TextField1.text!))","--> Qty:","\(String(describing: Label1.text!))")
        print("\(String(describing: TextField2.text!))","--> Qty:","\(String(describing: Label2.text!))")
        print("\(String(describing: TextField3.text!))","--> Qty:","\(String(describing: Label3.text!))")
        print("\(String(describing: TextField4.text!))","--> Qty:","\(String(describing: Label4.text!))")
        print("\(String(describing: TextField5.text!))","--> Qty:","\(String(describing: Label5.text!))")
        print("***************************")
    }
    
    @IBAction func SaveListLandscape(_ sender: UIButton) {
        if(ShoppingListNameLandscape.text == "")
        {
            ShoppingListNameLandscape.text = "Grocery Shopping List"
        }
        print("***************************")
        print(ShoppingListNameLandscape.text! as Any)
        print("***************************")
        print("\(String(describing: TextFieldLandscape1.text!))","--> Qty:","\(String(describing: LabelLandscape1.text!))")
        print("\(String(describing: TextFieldLandscape2.text!))","--> Qty:","\(String(describing: LabelLandscape2.text!))")
        print("\(String(describing: TextFieldLandscape3.text!))","--> Qty:","\(String(describing: LabelLandscape3.text!))")
        print("\(String(describing: TextFieldLandscape4.text!))","--> Qty:","\(String(describing: LabelLandscape4.text!))")
        print("\(String(describing: TextFieldLandscape5.text!))","--> Qty:","\(String(describing: LabelLandscape5.text!))")
        print("***************************")
    }
    
    
    //Reseting shopping list app when clicking Cancel button
    @IBAction func CancelList(_ sender: UIButton) {
        ShoppingListName.text = "Shopping List"
        TextField1.text = ""
        TextField2.text = ""
        TextField3.text = ""
        TextField4.text = ""
        TextField5.text = ""
        Label1.text = "0"
        Label2.text = "0"
        Label3.text = "0"
        Label4.text = "0"
        Label5.text = "0"
    }
    
    @IBAction func CancelListLandscape(_ sender: UIButton) {
        ShoppingListNameLandscape.text = "Shopping List"
        TextFieldLandscape1.text = ""
        TextFieldLandscape2.text = ""
        TextFieldLandscape3.text = ""
        TextFieldLandscape4.text = ""
        TextFieldLandscape5.text = ""
        LabelLandscape1.text = "0"
        LabelLandscape2.text = "0"
        LabelLandscape3.text = "0"
        LabelLandscape4.text = "0"
        LabelLandscape5.text = "0"
    }
}
