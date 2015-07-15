#define kSettingsPath @"/User/Library/Preferences/com.vsz.vobecprefs.plist"

static NSMutableDictionary* prefs = [NSMutableDictionary dictionaryWithContentsOfFile:kSettingsPath];
static BOOL enabled;
static BOOL enabledIconMask;

%ctor {
        prefs = [NSMutableDictionary dictionaryWithContentsOfFile:kSettingsPath];

        enabled = [[prefs objectForKey:@"enabled"] boolValue];
		
	enabledIconMask = [[ prefs objectForKey:@"enabledIconMask"] boolValue];
}

%hook SBFolderBackgroundView
-(id)initWithFrame:(id)GCRect {
if (enabled) return (NULL);
return %orig;
}
%end

%hook SBIconColorSettings
-(double)maxSaturationBoost {
if (enabled) return 0;
return %orig;
}

-(double)maxSaturation {
if (enabled) return 0;
return %orig;
}

-(double)maxBrightnessBoost {
if (enabled) return 0;
return %orig;
}

-(double)colorAlpha {
if (enabled) return 0;
return %orig;
}

-(double)whiteAlpha {
if (enabled) return 0;
return %orig;
}

-(bool)blurryFolderIcons {
if (enabled) return FALSE;
return %orig;
}
%end

%hook SBFWallpaperSettings
-(bool)replaceBlurs {
if (enabled) return TRUE;
return %orig;
}
%end

%hook SBIconView
-(bool)isHighlighted {
if (enabledIconMask) return FALSE;
return %orig;
}

-(void)setHighlighted:(bool)arg1 {
if (enabledIconMask) arg1 = FALSE;
return %orig;
}
%end
