//  Converted to Swift 4 by Swiftify v4.1.6613 - https://objectivec2swift.com/
//
//  PVSettingsModel.swift
//  Provenance
//
//  Created by James Addyman on 21/08/2013.
//  Copyright (c) 2013 James Addyman. All rights reserved.
//

import Foundation

private func minutes(_ minutes : Double) -> TimeInterval {
    return TimeInterval(60 * minutes)
}

let kAutoSaveKey = "kAutoSaveKey"
let kAutoLoadSavesKey = "kAutoLoadSavesKey"
let kControllerOpacityKey = "kControllerOpacityKey"
let kAskToAutoLoadKey = "kAskToAutoLoadKey"
let kDisableAutoLockKey = "kDisableAutoLockKey"
let kButtonVibrationKey = "kButtonVibrationKey"
let kImageSmoothingKey = "kImageSmoothingKey"
let kCRTFilterKey = "kCRTFilterKey"
let kNativeScaleKey = "kNativeScaleKey"
let kShowRecentGamesKey = "kShowRecentGamesKey"
let kShowRecentSavesKey = "kShowRecentSavesKey"
let kShowGameBadgesKey = "kShowGameBadgesKey"
let kTimedAutoSaves = "kTimedAutoSavesKey"
let kTimedAutoSaveInterval = "kTimedAutoSaveIntervalKey"
let kICadeControllerSettingKey = "kiCadeControllerSettingKey"
let kVolumeSettingKey = "kVolumeSettingKey"
let kFPSCountKey = "kFPSCountKey"
let kShowGameTitlesKey = "kShowGameTitlesKey"
let kWebDayAlwwaysOnKey = "kWebDavAlwaysOnKey"
let kThemeKey = "kThemeKey"
let kButtonTintsKey = "kButtonsTintsKey"
let kStartSelectAlwaysOnKey = "kStartSelectAlwaysOnKey"
let kAllRightShouldersKey = "kAllRightShouldersKey"
let kVolumeHUDKey = "kVolumeHUDKey"
let kGameLibraryScaleKey = "kkGameLibraryScaleKey"

@objcMembers
public final class PVSettingsModel: NSObject {

    @objc
    public var autoSave: Bool {
        didSet {
            UserDefaults.standard.set(autoSave, forKey: kAutoSaveKey)
            UserDefaults.standard.synchronize()
        }
    }

	@objc
	public var timedAutoSaves: Bool {
		didSet {
			UserDefaults.standard.set(timedAutoSaves, forKey: kTimedAutoSaves)
			UserDefaults.standard.synchronize()
		}
	}

	@objc
	public var timedAutoSaveInterval: Double {
		didSet {
			UserDefaults.standard.set(timedAutoSaveInterval, forKey: kTimedAutoSaveInterval)
			UserDefaults.standard.synchronize()
		}
	}

    @objc
    public var askToAutoLoad: Bool {
      didSet {
            UserDefaults.standard.set(askToAutoLoad, forKey: kAskToAutoLoadKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var autoLoadSaves: Bool {
       didSet {
            UserDefaults.standard.set(autoLoadSaves, forKey: kAutoLoadSavesKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var disableAutoLock: Bool {
       didSet {
            UserDefaults.standard.set(disableAutoLock, forKey: kDisableAutoLockKey)
            UserDefaults.standard.synchronize()
            UIApplication.shared.isIdleTimerDisabled = disableAutoLock
        }
    }

    @objc
    public var buttonVibration: Bool {
        didSet {
            UserDefaults.standard.set(buttonVibration, forKey: kButtonVibrationKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var imageSmoothing: Bool {
        didSet {
            UserDefaults.standard.set(imageSmoothing, forKey: kImageSmoothingKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var crtFilterEnabled: Bool {
        didSet {
            UserDefaults.standard.set(crtFilterEnabled, forKey: kCRTFilterKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var nativeScaleEnabled: Bool {
        didSet {
            UserDefaults.standard.set(nativeScaleEnabled, forKey: kNativeScaleKey)
            UserDefaults.standard.synchronize()
        }
    }

	@objc
	public var showRecentSaveStates: Bool {
		didSet {
			UserDefaults.standard.set(showRecentSaveStates, forKey: kShowRecentSavesKey)
			UserDefaults.standard.synchronize()
		}
	}

	@objc
	public var showGameBadges: Bool {
		didSet {
			UserDefaults.standard.set(showGameBadges, forKey: kShowGameBadgesKey)
			UserDefaults.standard.synchronize()
		}
	}

    @objc
    public var showRecentGames: Bool {
        didSet {
            UserDefaults.standard.set(showRecentGames, forKey: kShowRecentGamesKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var showFPSCount: Bool {
        didSet {
            UserDefaults.standard.set(showFPSCount, forKey: kFPSCountKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var showGameTitles: Bool {
        didSet {
            UserDefaults.standard.set(showGameTitles, forKey: kShowGameTitlesKey)
            UserDefaults.standard.synchronize()
        }
    }

	@objc
	public var gameLibraryScale: Double {
		didSet {
			UserDefaults.standard.set(gameLibraryScale, forKey: kGameLibraryScaleKey)
			UserDefaults.standard.synchronize()
		}
	}

    @objc
    public var webDavAlwaysOn: Bool {
        didSet {
            UserDefaults.standard.set(webDavAlwaysOn, forKey: kWebDayAlwwaysOnKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var myiCadeControllerSetting: iCadeControllerSetting {
        didSet {
            UserDefaults.standard.set(myiCadeControllerSetting.rawValue, forKey: kICadeControllerSettingKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var controllerOpacity: CGFloat {
        didSet {
            UserDefaults.standard.set(Float(controllerOpacity), forKey: kControllerOpacityKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var buttonTints: Bool {
        didSet {
            UserDefaults.standard.set(buttonTints, forKey: kButtonTintsKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var startSelectAlwaysOn: Bool {
        didSet {
            UserDefaults.standard.set(startSelectAlwaysOn, forKey: kStartSelectAlwaysOnKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var allRightShoulders: Bool {
        didSet {
            UserDefaults.standard.set(allRightShoulders, forKey: kAllRightShouldersKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var volume: Float {
        didSet {
            UserDefaults.standard.set(volume, forKey: kVolumeSettingKey)
            UserDefaults.standard.synchronize()
        }
    }

    @objc
    public var volumeHUD: Bool {
        didSet {
            UserDefaults.standard.set(volumeHUD, forKey: kVolumeHUDKey)
            UserDefaults.standard.synchronize()
        }
    }

//    #if os(iOS)
//    public var theme: Themes {
//        didSet {
//            UserDefaults.standard.set(theme.rawValue, forKey: kThemeKey)
//            UserDefaults.standard.synchronize()
//        }
//    }
//    #endif

    static public var shared = PVSettingsModel()

    @objc
    public class func sharedInstance() -> PVSettingsModel {
        return PVSettingsModel.shared
    }

    override init() {
//        #if os(iOS)
//        let theme = Themes.defaultTheme.rawValue
//        #else
//        let theme = ""
//        #endif
		#if os(tvOS) && DEBUG
		let initialkStartSelectAlwaysOnKey = true
		#else
		let initialkStartSelectAlwaysOnKey = false
		#endif

        UserDefaults.standard.register(defaults: [kAutoSaveKey: true,
												  kTimedAutoSaves: true,
												  kTimedAutoSaveInterval: minutes(10),
                                                  kAskToAutoLoadKey: true,
                                                  kAutoLoadSavesKey: false,
                                                  kControllerOpacityKey: 0.8,
                                                  kDisableAutoLockKey: false,
                                                  kButtonVibrationKey: true,
                                                  kImageSmoothingKey: false,
                                                  kCRTFilterKey: false,
                                                  kNativeScaleKey: true,
                                                  kShowRecentGamesKey: true,
												  kShowRecentSavesKey: true,
												  kShowGameBadgesKey: true,
                                                  kICadeControllerSettingKey: iCadeControllerSetting.disabled.rawValue,
                                                  kVolumeSettingKey: 1.0,
                                                  kFPSCountKey: false,
                                                  kShowGameTitlesKey: true,
                                                  kWebDayAlwwaysOnKey: false,
                                                  kButtonTintsKey: false,
												  kStartSelectAlwaysOnKey: initialkStartSelectAlwaysOnKey,
                                                  kAllRightShouldersKey: false,
                                                  kVolumeHUDKey: true,
                                                  //                                                  kThemeKey: theme,
												  kGameLibraryScaleKey: 1.0 ])

        UserDefaults.standard.synchronize()

        autoSave = UserDefaults.standard.bool(forKey: kAutoSaveKey)
		timedAutoSaves = UserDefaults.standard.bool(forKey: kTimedAutoSaves)
		timedAutoSaveInterval = UserDefaults.standard.double(forKey: kTimedAutoSaveInterval)
        autoLoadSaves = UserDefaults.standard.bool(forKey: kAutoLoadSavesKey)
        controllerOpacity = CGFloat(UserDefaults.standard.float(forKey: kControllerOpacityKey))
        disableAutoLock = UserDefaults.standard.bool(forKey: kDisableAutoLockKey)
        buttonVibration = UserDefaults.standard.bool(forKey: kButtonVibrationKey)
        imageSmoothing = UserDefaults.standard.bool(forKey: kImageSmoothingKey)
        crtFilterEnabled = UserDefaults.standard.bool(forKey: kCRTFilterKey)
        nativeScaleEnabled = UserDefaults.standard.bool(forKey: kNativeScaleKey)
		showRecentSaveStates = UserDefaults.standard.bool(forKey: kShowRecentSavesKey)
        showRecentGames = UserDefaults.standard.bool(forKey: kShowRecentGamesKey)
		showGameBadges = UserDefaults.standard.bool(forKey: kShowGameBadgesKey)
        let iCade = UserDefaults.standard.integer(forKey: kICadeControllerSettingKey)
        myiCadeControllerSetting = iCadeControllerSetting(rawValue: Int(iCade)) ?? iCadeControllerSetting.disabled
        volume = UserDefaults.standard.float(forKey: kVolumeSettingKey)
        showFPSCount = UserDefaults.standard.bool(forKey: kFPSCountKey)
        showGameTitles = UserDefaults.standard.bool(forKey: kShowGameTitlesKey)
        webDavAlwaysOn = UserDefaults.standard.bool(forKey: kWebDayAlwwaysOnKey)
        askToAutoLoad = UserDefaults.standard.bool(forKey: kAskToAutoLoadKey)
        buttonTints = UserDefaults.standard.bool(forKey: kButtonTintsKey)
        startSelectAlwaysOn = UserDefaults.standard.bool(forKey: kStartSelectAlwaysOnKey)
        allRightShoulders = UserDefaults.standard.bool(forKey: kAllRightShouldersKey)
        volumeHUD = UserDefaults.standard.bool(forKey: kVolumeHUDKey)
		gameLibraryScale = UserDefaults.standard.double(forKey: kGameLibraryScaleKey)

//        #if os(iOS)
//        let themeString = UserDefaults.standard.string(forKey: kThemeKey) ?? Themes.defaultTheme.rawValue
//        self.theme = Themes(rawValue: themeString) ?? Themes.defaultTheme
//        #endif

        super.init()
    }

	@discardableResult
	func toggle(_ key : String) -> Bool {
		guard var value = UserDefaults.standard.object(forKey: key) as? Bool else {
			return false
		}

		value = !value
		UserDefaults.standard.set(value, forKey: key)
		return value
	}
}
