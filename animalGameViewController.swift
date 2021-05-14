//
//  animalGameViewController.swift
//  동물학습앱
//
//  Created by j on 2019/12/31.
//  Copyright © 2019 Claire. All rights reserved.
//

import UIKit

class animalGameViewController: UIViewController {

    //사용자가 숫자버튼을 클릭했을 때 결과를 보여줄 레이블
    @IBOutlet var enterNumber: UILabel!
    
    //결과 버튼을 눌렀을 때 업다운 결과를 보여줄 레이블
    @IBOutlet var resultLabel: UIButton!
    
    @IBOutlet var animalResult: UILabel!
    
    var computerRandomNumber = "문자"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let animal = ["쥐", "토끼"," 말", "뱀", "양", "호랑이", "돼지", "닭", "용", "토끼"]
        
        computerRandomNumber = animal.randomElement()!
        
        enterNumber.backgroundColor = .brown
        enterNumber.textColor = .white
        enterNumber.font =
            UIFont.boldSystemFont(ofSize: 25)
        enterNumber.text = "동물버튼을 클릭하세요"
    }
    
    
    @IBAction func animalButtonClicked(_ sender: UIButton) {
    
    if sender.currentTitle != nil {
            enterNumber.text = sender.currentTitle!
        }
        else {
            enterNumber.text = "ERROR"
        }
    }
    
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        
        if computerRandomNumber == enterNumber.text! {
            
            animalResult.text = "YES!"

        } else {
            
            animalResult.text = "NO!"
        }
    }
    
    
    
    
    
    
}
