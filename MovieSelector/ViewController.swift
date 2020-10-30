//
//  ViewController.swift
//  MovieSelector
//
//  Created by Daniel Gougler on 10/29/20.
//  Copyright © 2020 goog. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource
{
    

    @IBOutlet weak var mypickerview: UIPickerView!
    var mymovies = [" The Shawshank Redemption", " The Godfather", " The Dark Knight", " 12 angry men", "Schindlers List", "The lord of the rings: the return of the king", "Pulp Fiction", " The good, the bad and the ugly", " The lord of the rings: the fellowship of the rings", " Fight Club"," Forrest Gump", " Inception", " The lord of the rings: the two towers"," Star wars Ep 5 - Empire strikes back"," The matrix"," Goodfellas"," One flew over the cuckoos nest"," Seven samurai","Se7en"," Life is beautiful","City of God"," Pineapple Express"," Saving Private Ryan"," Avengers Endgame"," The amazing spiderman" ]
    
    
    @IBOutlet weak var movielabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mypickerview.delegate = self
        mypickerview.dataSource = self
        
    }
   
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currentmovie = mymovies[row]
        movielabel.text = currentmovie
        
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mymovies.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mymovies[row]
    }
    

}

// walters 
