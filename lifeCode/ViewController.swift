//
//  ViewController.swift
//  lifeCode
//
//  Created by Bryan Kuo on 2021/10/2.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var dateChoice: UIDatePicker!
    @IBOutlet weak var lifeCodeLabel: UILabel!
    @IBOutlet weak var signLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lifeCodeLabel.text = ""
        signLabel.text = ""
        
    }
    func calculateLifeCode() {
       
        
    }
    
    @IBAction func calculateLifeCode(_ sender: UIButton) {
        let lifeCodeMeanings = ["","開創", "協調", "創意", "務實", "自由","關懷", "探究", "權威", "智慧"]
        
        let dateformater = DateFormatter()
        dateformater.dateFormat = "yMd"
        var dateString = dateformater.string(from: dateChoice.date)
        
        var sum = 0

        repeat{
            //每次repeat都由零開始，否則將進入無限循環
            sum = 0
            
        //for迴圈：取日期數字相加之結果
        for characters in dateString {
            //字串轉數字
            let number = Int(String(characters))!
            sum = sum + number
        }
            //得到的總和轉成字串，dateString函數=sum總和字串
            dateString = "\(sum)"

        //當sum>9時，繼續迴圈至sum<=9
        }while sum > 9
        
        lifeCodeLabel.text = "\(sum)"
        signLabel.text = lifeCodeMeanings[sum]
    }
    

}

