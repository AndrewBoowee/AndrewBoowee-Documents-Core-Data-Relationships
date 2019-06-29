//
//  Documents Core Data Relationships Challenge
//  IOS APP DEV 2
//  Andrew Bui
//

import UIKit

class DocumentViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!

    var document: Document?
    var catergory: Catergory?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        
        if let document = document
        {
            let name = document.name
            nameTextField.text = name
            contentTextView.text = document.content
            title = name
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

    @IBAction func nameChanged(_ sender: Any) {
        title = nameField.text
        
}

    @IBAction func saved(_ sender: UIBarButtonItem) {
        guard let name = nameField.text else {
            print("Error - Name 1")
            return
        }
        
        let documentName = name.trimmingCharacters(in: .whitespaces)
        if (documentName == "") {
            alertNotifyUser(message: "Document was not saved.\nName is required.")
            return
        }
        
        let content = contentTextView.text
        
        if document == nil {
//            if let catergory = catergory
            document = Document(name: documentName, content: content)
        } else {
            document?.update(name: documentName, content: content)
        }
        
        if let document = Document(name: name, content: content){
            category?.addToDocument(document)
            
            do {
                try document.managedObjectContext?.save()
                
                self.navigationController?.popViewController(animated: true)
            } catch {
                print("Document could not be created")
            }
        }
    }
    
}

