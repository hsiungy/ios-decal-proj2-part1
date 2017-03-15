//
//  ChooseFeedViewController.swift
//  snapChatProject
//
//  Created by YHsiung on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class ChooseFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var FeedView: UITableView!
    @IBOutlet weak var feedName: UILabel!
    @IBOutlet weak var chooseFeedTableView: UITableView!
    
    var currentImage: UIImage!
    var currentCategory: Int!
    
    @IBAction func postButton(_ sender: UIButton) {
        threads[threadNames[currentCategory]]!.append(currentImage!)
        performSegue(withIdentifier: "chooseFeedToRoot", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if identifier == "chooseFeedToRoot" {
                if let dest = segue.destination as? RootTableViewController {
                    dest.rootImage = currentImage
                }
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseFeedTableView.delegate = self
        chooseFeedTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseChoose", for: indexPath) as! ChooseFeedTableViewCell
        cell.feedLabel.text = threadNames[indexPath.item]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        feedName.text = threadNames[indexPath.item]
        currentCategory = indexPath.item
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
