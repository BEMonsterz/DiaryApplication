//
//  DiaryAdderViewController.swift
//  DiaryApp
//
//  Created by Bryan Ayllon on 7/19/16.
//  Copyright © 2016 Bryan Ayllon. All rights reserved.
//

import UIKit
import CoreData

protocol DiaryEntryCreated{
    func newPostWasCreated(title :String!, details :String!)
    
}

class DiaryAdderViewController: UIViewController,UIPageViewControllerDelegate{

var managedContextOfObjects :NSManagedObjectContext!
    var delegate: DiaryEntryCreated!
    
    
@IBOutlet var categoryNameField: UITextField!
 @IBOutlet var categoryDescriptionField: UITextView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func close(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: { _ in })
    }
    
    

    
    @IBAction func addButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: { _ in })
        
        self.delegate.newPostWasCreated(self.categoryNameField.text, details: self.categoryDescriptionField.text)
    }
}
