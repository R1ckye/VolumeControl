@interface AVSystemController : NSObject
+(id)sharedAVSystemController;
-(BOOL)setVolumeTo:(float)to forCategory:(id)category;
@end

int main(int argc, char **argv, char **envp) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Class VolumeControlC = objc_getClass("AVSystemController");
	id manager = [VolumeControlC sharedAVSystemController];
	float toSet;
	if (argc > 1) {
		NSString *arg1 = [NSString stringWithCString: argv[1]];
		int toSetR = [arg1 intValue];
		if (toSetR > 10) toSetR = 10;
		else if (toSetR < 0) toSetR = 0;
		toSet = (float) toSetR / 10;
	}
	else 
		toSet = 0.0f;
	[manager setVolumeTo:toSet forCategory:@"UserInterfaceSoundEffects"];
	[pool release];
	return 0;
}

// vim:ft=objc
