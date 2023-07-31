//
//  ViewController.swift
//  TableViewHomeWork
//
//  Created by Lazzat on 26.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelYear: UILabel!
    
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var labelOverview: UILabel!
    @IBOutlet weak var imageSecond: UIImageView!
    
    
   
    
 
    
    
    
    var movie = Movie()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = movie.name
        labelYear.text = String(movie.year)
        labelScore.text = String(movie.score)
        imageview.image = UIImage(named: movie.imagename)
        labelOverview.text = movie.overview
        imageSecond.image = UIImage(named: movie.imagesecond)
      
    }


}

