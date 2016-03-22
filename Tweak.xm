%hook SBTelephonyManager

- (id)SIMStatus
{
	NSLog(@"iOSRESIMTEST");
	return @"kCTSIMSupportSIMStatusInserted";
}

%end;