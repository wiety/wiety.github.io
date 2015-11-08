#include "TSRootListController.h"
#include <spawn.h>

//extern char **environ;

@implementation vobecprefsListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"vobec" target:self] retain];
	}

	return _specifiers;
}

-(void)Respring {
[(SpringBoard *)[UIApplication sharedApplication] _relaunchSpringBoardNow];
}
//-(void)Respring {
// pid_t pid;
//  int status;
//  const char* args[] = {"killall", "-9", "backboardd", NULL};
//  posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
//  waitpid(pid, &status, WEXITED); 
//}


@end

// vim:ft=objc
