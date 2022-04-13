//
//  ItemInfoViewController.swift
//  Bandharapu_GroceryApp
//
//  Created by Bandharapu,Manish Goud on 4/5/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    var details : GroceryItem?
    
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    
    
    @IBOutlet weak var showItemInfoAction: UIButton!
    
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = details?.itemName
        itemInfoOutlet.isHidden = true
        var lbn = details?.itemImage
        itemImageViewOutlet.image = UIImage(named: lbn!)
        let originalImageFrame = itemImageViewOutlet.frame
        let widthShrink: CGFloat = 30
        let heightShrink: CGFloat = 30
        let newFrame = CGRect(
            x: itemImageViewOutlet.frame.origin.x + widthShrink,
            y: itemImageViewOutlet.frame.origin.y + heightShrink,
            width: itemImageViewOutlet.frame.width - widthShrink,
            height: itemImageViewOutlet.frame.height - heightShrink)
        itemImageViewOutlet.frame = newFrame
        UIView.animate(withDuration: 1.0, delay: 0.9, usingSpringWithDamping: 0.4, initialSpringVelocity: 20.0, animations:{
            self.itemImageViewOutlet.frame = originalImageFrame
        })
        }
    
    @IBAction func buttonGetInfo(_ sender: Any) {
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text = details?.itemInfo
    }
    // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


