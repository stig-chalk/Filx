//
//  DetailsViewController.swift
//  Filx
//
//  Created by Yuhui Chen on 4/20/19.
//  Copyright © 2019 Yuhui Chen. All rights reserved.
//

import UIKit
import AlamofireImage
class DetailsViewController: UIViewController {
    var movie: [String:Any]!
    

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var introText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleText.text = movie["title"] as? String
        titleText.sizeToFit()
        introText.text = movie["overview"] as? String
        introText.sizeToFit()
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
