//
//  ViewController.swift
//  adMobTestApp
//
//  Created by Saša Brezovac on 24.02.2023..
//

import UIKit
//import GoogleMobileAds
import YieldloveAdIntegration

class ViewController: UIViewController {
    
    ///AdMob
//    let testBannerID = "ca-app-pub-3940256099942544/2934735716"
//    var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       ///AdMob
//        let adSize = GADAdSizeFromCGSize(CGSize(width: 300, height: 200))
//        bannerView = GADBannerView(adSize: adSize)
//        addBannerViewToView(bannerView)
//        bannerView.delegate = self
//
//        bannerView.adUnitID = testBannerID
//        bannerView.rootViewController = self
//        bannerView.load(GADRequest())
        ///
        
        
       ///Yieldlove
        Yieldlove.instance.bannerAd(adSlotId: "app_1", viewController: self, delegate: self)
       ///
    }
    
       ///AdMob
//    func addBannerViewToView(_ bannerView: GADBannerView) {
//        bannerView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(bannerView)
//        view.addConstraints(
//            [NSLayoutConstraint(item: bannerView,
//                                attribute: .bottom,
//                                relatedBy: .equal,
//                                toItem: bottomLayoutGuide,
//                                attribute: .top,
//                                multiplier: 1,
//                                constant: 0),
//             NSLayoutConstraint(item: bannerView,
//                                attribute: .centerX,
//                                relatedBy: .equal,
//                                toItem: view,
//                                attribute: .centerX,
//                                multiplier: 1,
//                                constant: 0)
//            ])
//    }
}

///AdMob
//extension ViewController: GADBannerViewDelegate {
//    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
//        print("bannerViewDidReceiveAd")
//        bannerView.alpha = 0
//        UIView.animate(withDuration: 1, animations: {
//            bannerView.alpha = 1
//        })
//    }
//
//    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
//        print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
//    }
//
//    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
//        print("bannerViewDidRecordImpression")
//    }
//
//    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
//        print("bannerViewWillPresentScreen")
//    }
//
//    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
//        print("bannerViewWillDIsmissScreen")
//    }
//
//    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
//        print("bannerViewDidDismissScreen")
//    }
//
//}


///Yieldlove
extension ViewController: YLBannerViewDelegate {
    public func bannerViewDidReceiveAd(_ bannerView: YLBannerView) {
        self.view.addSubview(bannerView.getBannerView())
        Yieldlove.instance.resizeBanner(banner: bannerView)
    }
    
    public func bannerView(_ bannerView: YLBannerView, didFailToReceiveAdWithError error: Error) {
        // Handle error
        print("ERROR: \(error)")
    }
}


///YieldloveAdIntegration (= 9.3.0)
///Google-Mobile-Ads-SDK (~> 9.7.0)
