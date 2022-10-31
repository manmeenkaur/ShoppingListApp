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

    // App Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func reset()
    {
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
        LabelLandscape1.text = Label1.text
        TextFieldLandscape1.text = TextField1.text
    }
    
    @IBAction func StepperLandscape1(_ sender: UIStepper) {
        LabelLandscape1.text=String(Int(sender.value))
        Label1.text = LabelLandscape1.text
        TextField1.text = TextFieldLandscape1.text
    }
    
    
    @IBAction func Stepper2(_ sender: UIStepper) {
        Label2.text=String(Int(sender.value))
        LabelLandscape2.text = Label2.text
        TextFieldLandscape2.text = TextField2.text
    }
    
    @IBAction func StepperLandscape2(_ sender: UIStepper) {
        LabelLandscape2.text=String(Int(sender.value))
        Label2.text = LabelLandscape2.text
        TextField2.text = TextFieldLandscape2.text
    }
    
    
    @IBAction func Stepper3(_ sender: UIStepper) {
        Label3.text=String(Int(sender.value))
        LabelLandscape3.text = Label3.text
        TextFieldLandscape3.text = TextField3.text
    }
    
    @IBAction func StepperLandscape3(_ sender: UIStepper) {
        LabelLandscape3.text=String(Int(sender.value))
        Label3.text = LabelLandscape3.text
        TextField3.text = TextFieldLandscape3.text
    }
    
    
    @IBAction func Stepper4(_ sender: UIStepper) {
        Label4.text=String(Int(sender.value))
        LabelLandscape4.text = Label4.text
        TextFieldLandscape4.text = TextField4.text
    }
    
    @IBAction func StepperLandscape4(_ sender: UIStepper) {
        LabelLandscape4.text=String(Int(sender.value))
        Label4.text = LabelLandscape4.text
        TextField4.text = TextFieldLandscape4.text
    }
    
    
    @IBAction func Stepper5(_ sender: UIStepper) {
        Label5.text=String(Int(sender.value))
        LabelLandscape5.text = Label5.text
        TextFieldLandscape5.text = TextField5.text
    }
    
    @IBAction func StepperLandscape5(_ sender: UIStepper) {
        LabelLandscape5.text=String(Int(sender.value))
        Label5.text = LabelLandscape5.text
        TextField5.text = TextFieldLandscape5.text
    }
    
    
    //printing list of shopping items in console when clicking Save button
    @IBAction func SaveList(_ sender: UIButton) {
        if(ShoppingListName.text == "")
        {
            ShoppingListName.text = "Grocery Shopping List"
            ShoppingListNameLandscape.text = ShoppingListName.text
        }
        print("***************************")
        print(ShoppingListName.text! as Any)
        print("***************************")
        if(TextField1.text != "" && Label1.text != "0")
        {
            print("\(String(describing: TextField1.text!))","--> Qty:","\(String(describing: Label1.text!))")
            TextFieldLandscape1.text = TextField1.text
        }
        if(TextField2.text != "" && Label2.text != "0")
        {
            print("\(String(describing: TextField2.text!))","--> Qty:","\(String(describing: Label2.text!))")
            TextFieldLandscape2.text = TextField2.text
        }
        if(TextField3.text != "" && Label3.text != "0")
        {
            print("\(String(describing: TextField3.text!))","--> Qty:","\(String(describing: Label3.text!))")
            TextFieldLandscape3.text = TextField3.text
        }
        if(TextField4.text != "" && Label4.text != "0")
        {
            print("\(String(describing: TextField4.text!))","--> Qty:","\(String(describing: Label4.text!))")
            TextFieldLandscape4.text = TextField4.text
        }
        if(TextField5.text != "" && Label5.text != "0")
        {
            print("\(String(describing: TextField5.text!))","--> Qty:","\(String(describing: Label5.text!))")
            TextFieldLandscape5.text = TextField5.text
        }
        print("***************************")
    }
    
    @IBAction func SaveListLandscape(_ sender: UIButton) {
        if(ShoppingListNameLandscape.text == "")
        {
            ShoppingListNameLandscape.text = "Grocery Shopping List"
            ShoppingListName.text = ShoppingListNameLandscape.text
        }
        print("***************************")
        print(ShoppingListNameLandscape.text! as Any)
        print("***************************")
        if(TextFieldLandscape1.text != "" && LabelLandscape1.text != "0")
        {
            print("\(String(describing: TextFieldLandscape1.text!))","--> Qty:","\(String(describing: LabelLandscape1.text!))")
            TextField1.text = TextFieldLandscape1.text
        }
        if(TextFieldLandscape2.text != "" && LabelLandscape2.text != "0")
        {
            print("\(String(describing: TextFieldLandscape2.text!))","--> Qty:","\(String(describing: LabelLandscape2.text!))")
            TextField2.text = TextFieldLandscape2.text
        }
        if(TextFieldLandscape3.text != "" && LabelLandscape3.text != "0")
        {
            print("\(String(describing: TextFieldLandscape3.text!))","--> Qty:","\(String(describing: LabelLandscape3.text!))")
            TextField3.text = TextFieldLandscape3.text
        }
        if(TextFieldLandscape4.text != "" && LabelLandscape4.text != "0")
        {
            print("\(String(describing: TextFieldLandscape4.text!))","--> Qty:","\(String(describing: LabelLandscape4.text!))")
            TextField4.text = TextFieldLandscape4.text
        }
        if(TextFieldLandscape5.text != "" && LabelLandscape5.text != "0")
        {
            print("\(String(describing: TextFieldLandscape5.text!))","--> Qty:","\(String(describing: LabelLandscape5.text!))")
            TextField5.text = TextFieldLandscape5.text
        }
        print("***************************")
    }
    
    
    //Reseting shopping list app when clicking Cancel button
    @IBAction func CancelList(_ sender: UIButton) {
        reset()
    }
    
    @IBAction func CancelListLandscape(_ sender: UIButton) {
        reset()
    }
}
