//
//  Documents Core Data Relationships Challenge
//  IOS APP DEV 2
//  Andrew Bui
//

import UIKit
import CoreData

class CategoriesViewController: UIViewController {

    @IBOutlet weak var categoriesTableView: UITableView!
    
    var categories = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Categories"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



func add(_sender: Any)
{
    let alert = UIAlertController(title: "Add Category", message: "Enter Category name", preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
       alert.addAction(UIAlertAction(title: "Submit", style: UIAlertAction.Style.default, handler: {
        (AlertAction) -> Void in
        if let textField = alert.textFields?[0], let name = textField.text{
            let catergoryName = name.trimmingCharacters(in: .whitespaces)
            if(catergoryName == "")
            {
//                self.alertNotifyUser(message: "Catergory cannot be created\n The name must contain value")
                return
            }
//            self.addCatergory(name: catergoryName)
            }
            else
            {
//                self.alertNotifyUser(message: "Catergory cannot be created\n The name is not accessible")
                return
            }
        
       }))
    alert.addTextField(configurationHandler: {(textField: UITextField!) in
        textField.placeholder = "catergory name"
        textField.isSecureTextEntry = false
})
 //   self.present(alert, animated: true, completion: nil)
}
func alertNotifyUser(message: String) {
    let alert = UIAlertController(title: "Alert", message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
    
//    self.present(alert, animated: true, completion: nil)
}

extension CategoriesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = categoriesTableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        return cell
    }
    
}

func deleteCategory(at indexPath: IndexPath) {
    let category = categories[indexPath.row]
    
    if let managedObjectContext = category.managedObjectContext {
        managedObjectContext.delete(category)
        
        do {
            try managedObjectContext.save()
            self.categories.remove(at: indexPath.row)
            categoriesTableView.deleteRows(at: [indexPath], with: .automatic)
        } catch {
            print("Delete failed: \(error).")
            categoriesTableView.reloadData()
        }
    }
}

func deleteCategoryConfirmation(at indexPath: IndexPath) {
    let category = categories[indexPath.row]
    
//    if let documents = category.documents, documents.count > 0 {
        
 //       let name = category.title ?? "This category"
        
    let alert = UIAlertController(title: "Delete Category?", message: "\(uname) contains documents inside. Are you sure you want to delete it?", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {
            (alertAction) -> Void in
            self.categoriesTableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Delete", style: UIAlertAction.Style.destructive, handler: {
            (alertAction) -> Void in
            self.deleteCategory(at: indexPath)
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    } else {
        deleteCategory(at: indexPath)
    }
}

func editCategory(at indexPath: IndexPath){
 //   let category = categories[indexPath.row]
    

func saveCategory(_ sender: UIBarButtonItem) {
//    let title =
 //   let category = Category(title: time ?? "")
    
    do {
        try category?.managedObjectContext?.save()
        
//        self.navigationController?.popViewController(animated: true)
    } catch {
        print("Could not save category")
    }
}

func addCategory(name: String) {
    // check if category by that name already exists
//    if (categoryExists(name: String?)) {
//        alertNotifyUser(message: "Category \(name) already exists.")
        return
    }
    
//    let category = Category(name: String?)
    
 //   if let category = Category {
        do {
            let managedObjectContext = category.managedObjectContext
            try managedObjectContext?.save()
        } catch {
            print("Category could not be saved.")
        }
    } else {
        print("Category could not be created.")
    }
    
//    fetchCategories(searchString: "")
}



