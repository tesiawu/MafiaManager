//
//  DeckDetailViewController.swift
//  MafiaManager
//
//  Created by Aishwarya Shashidhar on 3/26/19.
//  Copyright © 2019 Aishwarya Shashidhar. All rights reserved.
//

import UIKit

class DeckDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addCardButtonPressed(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        let createAction = UIAlertAction(title: "Create a New Card", style: .default) { (action) in
            self.performSegue(withIdentifier: "fromDetailToNewCardSegue", sender: nil)
        }
        
        let copyAction = UIAlertAction(title: "Copy Existing Card", style: .default) { (action) in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        optionMenu.addAction(createAction)
        optionMenu.addAction(copyAction)
        optionMenu.addAction(cancelAction)
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
    @IBAction func displayActionSheet(_ sender: Any) {
        // 1
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        // 2
        let createAction = UIAlertAction(title: "Create a New Card", style: .default)
        let copyAction = UIAlertAction(title: "Copy Existing Card", style: .default)
        
        // 3
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        // 4
        optionMenu.addAction(createAction)
        optionMenu.addAction(copyAction)
        optionMenu.addAction(cancelAction)
        
        // 5
        self.present(optionMenu, animated: true, completion: nil)
    }
}
