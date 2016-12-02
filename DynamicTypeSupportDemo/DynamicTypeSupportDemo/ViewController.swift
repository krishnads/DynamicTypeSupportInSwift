//
//  ViewController.swift
//  DynamicTypeSupportDemo
//
//  Created by Krishana on 10/24/16.
//  Copyright © 2016 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dynamicTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Dynamic Type Support"
        self.dynamicTableView?.estimatedRowHeight = 250
        self.dynamicTableView?.rowHeight = UITableViewAutomaticDimension
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.handleDynamicTypeChange), name: NSNotification.Name.UIContentSizeCategoryDidChange, object: nil)
    }
    
    func handleDynamicTypeChange() {
        // self.textSizeLabel.text = [[UIApplication sharedApplication] preferredContentSizeCategory];
        
        print("size category changed to --->\(UIApplication.shared.preferredContentSizeCategory)")
        self.dynamicTableView?.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 99
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell: DynamicTypeCell! = tableView.dequeueReusableCell(withIdentifier: identifier) as? DynamicTypeCell
        if cell == nil {
            tableView.register(UINib(nibName: "DynamicTypeCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? DynamicTypeCell
        }
        
        cell.dynamicLabel?.text = "Showing Dynamic Type Support in swift.";
        cell.dynamicsubLabel?.text = "Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here Showing Dynamic text here.";
        

        cell.dynamicLabel?.font = UIFont.init(descriptor: UIFontDescriptor.preferredAvenirNextDemiBoldFontDescriptorWithTextStyle(style: UIFontTextStyle.headline.rawValue), size: 0)

        cell.dynamicsubLabel?.font = UIFont.init(descriptor: UIFontDescriptor.preferredAvenirNextDemiBoldFontDescriptorWithTextStyle(style: UIFontTextStyle.body.rawValue), size: 0)
        
        //Setting dynamic type support
//        cell.dynamicLabel?.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
//        cell.dynamicsubLabel?.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)
        return cell
    }
}

