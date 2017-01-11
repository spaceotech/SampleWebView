//
//  WebVC.swift
//  SampleWebView
//
//  Created by Hitesh on 1/11/17.
//  Copyright © 2017 spaceo. All rights reserved.
//

import UIKit

class WebVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var web: UIWebView!
    
    var strURL = "" //For get String URL with navigation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: strURL)
        let request = NSURLRequest(URL: url!)
        web.loadRequest(request)

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: WebView Delegate Methods
    func webViewDidStartLoad(webView: UIWebView) {
        print("webViewDidStartLoad")
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        print("webViewDidFinishLoad")
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print("didFailLoadWithError")
    }

    @IBAction func actionBack(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
