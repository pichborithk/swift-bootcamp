//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import FirebaseAuth
import UIKit

class ChatViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var messageTextfield: UITextField!

    var messages: [Message] = [
        Message(sender: "1@2.com", body: "Hey"),
        Message(sender: "1@3.com", body: "Hi"),
        Message(sender: "1@2.com", body: "What's up?")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        title = Constants.appName
        navigationItem.hidesBackButton = true

        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)
    }

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }

    @IBAction func sendPressed(_ sender: UIButton) {}
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
}
