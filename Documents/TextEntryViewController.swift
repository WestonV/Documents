//
//  TextEntryViewController.swift
//  Documents
//
//  Created by Weston Verhulst on 1/29/19.
//  Copyright © 2019 Weston Verhulst. All rights reserved.
//

import UIKit

class TextEntryViewController: UIViewController {

    var entry = Entry()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = entry.title
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func saveButton(_ sender: Any) {
       // self.title = nameTextField.text
        entry.title = nameTextField.text ?? " "
        entry.body = bodyTextField.text ?? " "
        entry.date = Date()
        
        print(entry)
        
        navigationController?.popViewController(animated: true)
    }
    @IBAction func titleSetter(_ sender: Any) {
        self.title = nameTextField.text
    }
    
}
