#import <Preferences/Preferences.h>

@interface vobecprefsListController: PSListController {
}
@end



@implementation vobecprefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"vobecprefs" target:self] retain];
	}
	return _specifiers;

}
-(void)Respring {
system("killall -9 backboardd");     
 }



@end

// vim:ft=objc
