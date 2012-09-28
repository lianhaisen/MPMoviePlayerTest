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
@property (nonatomic, strong) MPMoviePlayerController *moviePlayerController;

@end

@implementation MPTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    MPMoviePlayerController *mc = [[MPMoviePlayerController alloc] initWithContentURL:nil];
    
      mc.shouldAutoplay = NO;
     mc.controlStyle = MPMovieControlStyleEmbedded;

    // video fron http://vimeo.com/50282462 under cc license
    NSURL *contentURL = [[NSBundle mainBundle] URLForResource:@"119654210" withExtension:@"mp4"];
    mc.contentURL = contentURL;
    
    [mc prepareToPlay];
    
    mc.view.frame = self.containerView.bounds;

    [self.containerView addSubview:mc.view];

    self.moviePlayerController = mc;
    
}

@end
