////////////////////////////////////////////////////////////////////////////////////////////
//
// panicLockPro by Ruslan Ardashev 
// ruslan.ardashev@duke.edu
// www.ruslanArdashev.com
// Copyright 2015
//
////////////////////////////////////////////////////////////////////////////////////////////

#include "../panicLockData.h"


@class CAMImageWell;


%hook CAMBottomBar

- (void)setImageWell:(CAMImageWell *)imageWell { 

	if ([panicLockData isPanicLockActive]) {



	}

	else {

		%orig;

	}

}

%end

