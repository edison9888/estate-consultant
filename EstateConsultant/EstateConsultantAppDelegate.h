//
//  EstateConsultantAppDelegate.h
//  EstateConsultant
//
//  Created by farthinker on 3/29/11.
//  Copyright 2011 mycolorway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataProvider.h"

@interface EstateConsultantAppDelegate : NSObject <UIApplicationDelegate> {
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (void)initApplicationDirectories;

@end
