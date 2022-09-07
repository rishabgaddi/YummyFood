//
//  RecipeVC.swift
//  YummyFood
//
//  Created by Rishab Gaddi on 27/06/2022.
//

import UIKit

class RecipeVC: UIViewController {
    
    var recipe: Recipe?
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var serving: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var cuisine: UILabel!
    @IBOutlet weak var ingredients: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let data = try? Data.init(contentsOf: URL(string: recipe!.image)!)
        self.image.image = UIImage.init(data: data!)
        self.name.text = "Name: " + recipe!.label
        self.serving.text = "Total servings: " + String(recipe!.yield)
        self.time.text = "Total time: " + String(recipe!.totalTime)
        self.cuisine.text = "Cuisine: \(recipe!.cuisineType.joined(separator: ", "))"
        self.ingredients.text = "Ingredients:\n\(recipe!.ingredientLines.joined(separator: "\n"))"
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
