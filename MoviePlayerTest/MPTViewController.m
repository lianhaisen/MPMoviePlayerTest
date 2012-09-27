//
//  MPTViewController.m
//  MoviePlayerTest
//
//  Created by Christian Netthöfel on 27.09.12.
//  Copyright (c) 2012 Christian Netthöfel. All rights reserved.
//

#import "MPTViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MPTViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (nonatomic, strong) MPMoviePlayerViewController *moviePlayerViewController;

@end

@implementation MPTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    MPMoviePlayerViewController *vc = [[MPMoviePlayerViewController alloc] initWithContentURL:nil];
    
    vc.moviePlayer.shouldAutoplay = NO;
    vc.moviePlayer.controlStyle = MPMovieControlStyleEmbedded;

    // video fron http://vimeo.com/50282462 under cc license
    NSURL *contentURL = [[NSBundle mainBundle] URLForResource:@"119654210" withExtension:@"mp4"];
    vc.moviePlayer.contentURL = contentURL;
    
    [vc.moviePlayer prepareToPlay];
    
    vc.view.frame = self.containerView.bounds;
    [self addChildViewController:vc];
    [self.containerView addSubview:vc.view];
    [self.moviePlayerViewController didMoveToParentViewController:self];
    
    self.moviePlayerViewController = vc;
}

@end
