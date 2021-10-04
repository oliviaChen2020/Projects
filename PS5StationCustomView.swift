//
//  PS5StationCustomView.swift
//  CustomViewProject
//
//  Created by Limei  Chen on 10/2/21.
//

import UIKit

class PS5StationCustomView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var playstationUIImage: UIImageView!
    
    required init?(coder : NSCoder)
    {
        super.init(coder: coder)
        initSubviews()
    }

   override init( frame: CGRect)
   {
       super.init(frame: frame)
       initSubviews()
   }

   func initSubviews()
   {
       //standard initialization logic
       
       let nib = UINib(nibName:"PS5StationCustomView" , bundle: nil)
       nib.instantiate( withOwner: self, options: nil)
      contentView.frame = bounds
       addSubview(contentView)
   }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
