//
//  TIAppDelegate.m
//  TINavigationMenuView
//
//  Created by ishtar on 13. 10. 8..
//
//

#import "TIAppDelegate.h"

#import "TISimpleMenuController.h"
#import "TIImageBGMenuController.h"
#import "TIIconMenuController.h"


@implementation TIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Create simple menu controller
    TISimpleMenuController *simpleMenuController = [[TISimpleMenuController alloc] init];
    simpleMenuController.title = @"TISimpleMenuController";
    simpleMenuController.tabBarItem.image = [UIImage imageNamed:@"bag"];
    simpleMenuController.navigationItem.title = @"TISimpleMenuController";
    
    // Create image menu controller
    TIImageBGMenuController *bgMenuController = [[TIImageBGMenuController alloc] init];
    bgMenuController.title = @"TIImageBGMenuController";
    bgMenuController.tabBarItem.image = [UIImage imageNamed:@"bag"];
    bgMenuController.navigationItem.title = @"TIImageBGMenuController";
    
    TIIconMenuController *iconMenuController = [[TIIconMenuController alloc] init];
    iconMenuController.title = @"TIIconMenuController";
    iconMenuController.tabBarItem.image = [UIImage imageNamed:@"map"];
    iconMenuController.navigationItem.title = @"TIIconMenuController";
    
    
    // Add TabBar Controller
    
    UITabBarController *tabController = [[UITabBarController alloc] init];
    [tabController setViewControllers:@[simpleMenuController, iconMenuController, bgMenuController] animated:YES];
    
    [self.window setRootViewController:tabController];
    
    self.window.backgroundColor = [UIColor blackColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
