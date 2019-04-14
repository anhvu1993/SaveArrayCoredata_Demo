//
//  ViewController.swift
//  SaveArrayInteger
//
//  Created by Anh vũ on 4/4/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let entities = try? AppDelegate.context.fetch(Entity.fetchRequest()) as? [Entity]
        print(entities)
        if let array = entities?.last?.array {
            label.text = array.joined(separator: ",")
        }
    }

    @IBAction func save(_ sender: Any) {
        let entity = Entity(context: AppDelegate.context)
        entity.array = ["Vu","Thang","Khanh","Luyen","Duc Anh"]
        AppDelegate.saveContext()
    }
    
}

