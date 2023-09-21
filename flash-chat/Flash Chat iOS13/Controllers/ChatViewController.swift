//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import FirebaseAuth
import FirebaseFirestore
import UIKit

class ChatViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var messageTextfield: UITextField!

    let db = Firestore.firestore()

    var messages: [Message] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        title = Constants.appName
        navigationItem.hidesBackButton = true

        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)

        loadMessages()
    }

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }

    @IBAction func sendPressed(_ sender: UIButton) {
        if let messageBody = messageTextfield.text, let messageSender = Auth.auth().currentUser?.email {
            db.collection(Constants.FStore.collectionName).addDocument(data: [Constants.FStore.senderField: messageSender, Constants.FStore.bodyField: messageBody]) { error in
                if let e = error {
                    print("There was an issue saving data to firestore, \(e)")
                } else {
                    print("Successfully saved data.")
                    self.messageTextfield.text = ""
                }
            }
        }
    }

    func loadMessages() {
//        db.collectionGroup(Constants.FStore.collectionName).getDocuments { querySnapshot, error in
        db.collectionGroup(Constants.FStore.collectionName).addSnapshotListener { querySnapshot, error in
            if let e = error {
                print("There was an issue retrieving data from firestore, \(e)")
            } else {
                if let snapShotDocuments = querySnapshot?.documents {
                    self.messages = []

                    for document in snapShotDocuments {
                        let data = document.data()
                        if let messageSender = data[Constants.FStore.senderField] as? String, let messageBody = data[Constants.FStore.bodyField] as? String {
                            let newMessage = Message(sender: messageSender, body: messageBody)
                            self.messages.append(newMessage)

                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
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
