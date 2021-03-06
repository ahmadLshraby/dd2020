//
//  Constants.swift
//  homeCheif
//
//  Created by mohamed abdo on 4/21/18.
//  Copyright © 2018 Atiaf. All rights reserved.
//
import UIKit
import IQKeyboardManagerSwift
import GoogleMaps
import GooglePlaces

struct Constants {
    static let locale = Localizer.getLocale()
    static var loginNavInd: String = "LoginNav"
    static var login: String = "LoginNav"
    static var loginNav: UINavigationController? {
        let storyboard = UIStoryboard(name: Storyboards.auth.rawValue, bundle: nil)
        let nav = storyboard.instantiateViewController(withIdentifier: loginNavInd) as? UINavigationController
        return nav
        // Constants.storyboard = Storyboards.main.rawValue
    }
    static var storyboard = Storyboards.main.rawValue
    //static var currentApp:Apps = .client
    static let url = "http://88.198.111.81/api/"
    static let companyUrl = ""
    static let copyrightUrl = ""
    static let itunesURL = "itms-apps://itunes.apple.com/app/id1330387425"
    static let version = "v1"
    static let deviceType = "2"
    static let deviceToken = "deviceToken"
    static let deviceId = UIDevice.current.identifierForVendor!.uuidString
    static let googleAPI = "AIzaSyAAap7IKyuO8zQ58Erx5n_NPr_HQOrdM84"
    static let googleRoutesAPI = "AIzaSyBAb_tULoOvteP6YBIvOPmb_gGO_VMDHus"
    static let googleNotRestrictionKey = "AIzaSyBAb_tULoOvteP6YBIvOPmb_gGO_VMDHus"
    static var useAuth: Bool = false
    static var placeHolderImage: UIImage = UIImage(named: "placeHolder") ?? UIImage()
    static let mainColorRGB = UIColor(red: 140/255, green: 198/255, blue: 62/255, alpha: 1)
    static let textColorRGB = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
    static let borderColorRGB = UIColor.init(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)
    static let underlineRGB = UIColor(red: 209/255, green: 209/255, blue: 209/255, alpha: 1)
    static var splash: Void!
    static func sleep(time: TimeInterval) {
        Constants.splash = Thread.sleep(forTimeInterval: time)
    }
}

public enum Fonts: String {
    case reg = ""
    //case reg = "DINNextLTW23-Regular"
    //case mid = "DINNextLTW23-Medium"
}

extension AppDelegate {
    func initAppDelegate() {
        initLang()
        //Constants.sleep(time: 3)
        //Override point for customization after application launch.
        IQKeyboardManager.shared.enable = true
        GMSServices.provideAPIKey(Constants.googleAPI)
        GMSPlacesClient.provideAPIKey(Constants.googleAPI)
    }
}

struct Identifiers {
    static let RegisterTableView = "RegisterTableView"
    static let CategoryCell = "HomeShopCell"
    static let AgentCell = "AgentCell"
    static let ProductCell = "ProductCell"
    static let SubCategoryCell = "SubCategoryCell"
    static let AfterSelectingCell = "AfterSelectingCell"
    static let PremiumSelectingCell = "PremiumSelectingCell"
    static let SelectedCategory = "SelectedCategory"
    static let NotificationsCell = "NotificationsCell"
    static let PremiumProductsCell = "PremiumProductsCell"
    static let PremiumWorkTime = "PremiumWorkTime"
    static let PremiumContacts = "PremiumContacts"
    static let ProfileCollectionViewCell = "ProfileCollectionViewCell"
    static let PremiumServices = "PremiumServices"
    static let ShopsSaved = "ShopsSaved"
    static let ShopsAddedCell = "ShopsAddedCell"
    static let ShopOwnerProducts = "ShopOwnerProducts"
    static let MenuTableViewA = "MenuTableViewA"
    
}

extension UIColor {
    public var appGreen: UIColor {
        return UIColor(named: "greenColor") ?? UIColor()
    }
    public var appBlue: UIColor {
        return UIColor(named: "blueColor") ?? UIColor()
    }
    public var appRed: UIColor {
        return UIColor(named: "redColor") ?? UIColor()
    }
    public var appOrange: UIColor {
        return UIColor(named: "orangeColor") ?? UIColor()
    }
    public var textColor: UIColor {
        return UIColor(named: "textColor") ?? UIColor()
    }
}
