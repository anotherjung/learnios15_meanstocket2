//
//  ViewController.swift
//  ios15_meanstocket2
//
//  Created by Fomp on 8/15/15.
//  Copyright © 2015 Fomp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func leftBtnPressed(sender: UIButton) {
        socket.emit("javascript", "Javascript")
        print("JS Button Pressed")
        print(socket)
    }
    
    @IBAction func rightBtnPressed(sender: UIButton) {
        //socket.emit("swift", "Swift")
        print("Swift Button Pressed")
        socket.emit("bomb", "22")
        print(socket)
    }


//    let socket = SocketIOClient(socketURL: "http://52.27.156.191:5000")

    let socket = SocketIOClient(socketURL: "http://localhost:5000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socket.connect()
        
        socket.on("connect") { data, ack in
            print("iOS::WE ARE USING SOCKETS!")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

