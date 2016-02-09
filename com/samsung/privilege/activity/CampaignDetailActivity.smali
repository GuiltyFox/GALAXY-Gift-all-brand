.class public Lcom/samsung/privilege/activity/CampaignDetailActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$DoLikeListener;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;,
        Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_gift"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private RC_BEAM:I

.field private RC_WEBVIEW_BOOKING:I

.field private RC_WEBVIEW_BUY_POINT:I

.field private RC_WEBVIEW_CUSTOMINPUT:I

.field private TAG:Ljava/lang/String;

.field private doRedeeming:Z

.field private footerListView:Landroid/view/View;

.field private formatter:Ljava/text/NumberFormat;

.field private gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

.field private gCacheCampaign:Ljava/lang/String;

.field private gCampaignBranches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/privilege/bean/PlaceNewDetail;",
            ">;"
        }
    .end annotation
.end field

.field private gCenterX:F

.field private gCenterY:F

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFetching:Z

.field private gFont:Landroid/graphics/Typeface;

.field private gFoundLocation:Z

.field private gHandler:Landroid/os/Handler;

.field private gIsHasData:Z

.field private gIsLoadImaged:Z

.field private gIsLoadingMore:Z

.field private gIsPlayDetailAnimation:Z

.field private gLastRank:J

.field private gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

.field private gListPerPage:I

.field private gPbLoadingCampaign:Landroid/widget/ProgressBar;

.field private gPbLoadingMap:Landroid/widget/ProgressBar;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gShowTab:Ljava/lang/String;

.field private gStateShowGallery:Ljava/lang/String;

.field private gStateShowInfo:Ljava/lang/String;

.field private gStateShowMap:Ljava/lang/String;

.field private gTvLoadingMap:Landroid/widget/TextView;

.field private gTvPoint:Landroid/widget/TextView;

.field private gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

.field private isContinueUrl:Z

.field protected lm:Landroid/location/LocationManager;

.field protected locationListener:Lcom/samsung/privilege/activity/CampaignDetailActivity$MyLocationListener;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

.field private paramCampaignID:I

.field private paramFromList:Z

.field private paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 116
    const-string v0, "campaign.detail"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->LOGCAT:Ljava/lang/String;

    .line 117
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->formatter:Ljava/text/NumberFormat;

    .line 123
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 143
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    .line 147
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 149
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListPerPage:I

    .line 159
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsPlayDetailAnimation:Z

    .line 161
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    .line 162
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 163
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 164
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    .line 514
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    .line 1721
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 1722
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2488
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    .line 2619
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    .line 2748
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    .line 3178
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3544
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 3737
    return-void
.end method

.method private HideTabGallery()V
    .registers 5

    .prologue
    .line 2839
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2840
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2889
    const-wide/16 v2, 0x64

    .line 2840
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2890
    return-void
.end method

.method private HideTabInfo()V
    .registers 5

    .prologue
    .line 2566
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2567
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2616
    const-wide/16 v2, 0x64

    .line 2567
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2617
    return-void
.end method

.method private HideTabMap()V
    .registers 5

    .prologue
    .line 2699
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2700
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2745
    const-wide/16 v2, 0x64

    .line 2700
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2746
    return-void
.end method

.method private PlayAnimationFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 977
    const v2, 0x7f3c000c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 979
    .local v0, "layoutScrollView":Landroid/widget/ScrollView;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 980
    .local v1, "outToTop":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 981
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 982
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 984
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 985
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1002
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsPlayDetailAnimation:Z

    if-nez v2, :cond_2b

    .line 1003
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 1005
    :cond_2b
    return-void
.end method

.method private PlayAnimationGallery()V
    .registers 4

    .prologue
    .line 2752
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2755
    const/4 v0, 0x0

    .line 2756
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2757
    const/4 v0, 0x1

    .line 2758
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    .line 2761
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2762
    const/4 v0, 0x1

    .line 2763
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    .line 2766
    :cond_2b
    if-eqz v0, :cond_32

    .line 2767
    const-string v1, "Gallery"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2778
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2769
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2770
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2771
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V

    goto :goto_31

    .line 2772
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2773
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    goto :goto_31
.end method

.method private PlayAnimationInfo()V
    .registers 4

    .prologue
    .line 2492
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2495
    const/4 v0, 0x0

    .line 2496
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2497
    const/4 v0, 0x1

    .line 2498
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    .line 2501
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2502
    const/4 v0, 0x1

    .line 2503
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    .line 2506
    :cond_2b
    if-eqz v0, :cond_32

    .line 2507
    const-string v1, "Info"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2518
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2509
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2510
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2511
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V

    goto :goto_31

    .line 2512
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2513
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    goto :goto_31
.end method

.method private PlayAnimationMap()V
    .registers 4

    .prologue
    .line 2623
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2626
    const/4 v0, 0x0

    .line 2627
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2628
    const/4 v0, 0x1

    .line 2629
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    .line 2632
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2633
    const/4 v0, 0x1

    .line 2634
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    .line 2637
    :cond_2b
    if-eqz v0, :cond_32

    .line 2638
    const-string v1, "Map"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2649
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2640
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2641
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2642
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabMap()V

    goto :goto_31

    .line 2643
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2644
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    goto :goto_31
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v11, 0x8

    .line 3318
    const/4 v0, 0x0

    .line 3319
    .local v0, "count_item":I
    :try_start_3
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    .line 3320
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3321
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_7f

    .line 3334
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 3339
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListPerPage:I

    if-ge v0, v8, :cond_11e

    .line 3340
    :cond_21
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 3341
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v8}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_d9

    move-result v8

    if-eqz v8, :cond_33

    .line 3344
    :try_start_2c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_f6

    .line 3357
    :cond_33
    :goto_33
    :try_start_33
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;

    invoke-direct {v9, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3375
    const v8, 0x7f400006

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3376
    .local v7, "tvMapMessage":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_137

    .line 3377
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f0a02f7

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3378
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3384
    :goto_71
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_74} :catch_d9

    .line 3389
    .end local v7    # "tvMapMessage":Landroid/widget/TextView;
    :goto_74
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3390
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3391
    return-void

    .line 3323
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_7f
    :try_start_7f
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 3324
    .local v5, "json_place_new":Lorg/json/JSONObject;
    const-string v8, "LocationID"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3325
    .local v3, "id":Ljava/lang/String;
    new-instance v6, Lcom/samsung/privilege/bean/PlaceNewDetail;

    invoke-direct {v6, v3}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 3326
    .local v6, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const-string v8, "Name"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 3327
    const-string v8, "Latitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    .line 3328
    const-string v8, "Longitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    .line 3329
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_bb} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_bb} :catch_d9

    .line 3321
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "json_place_new":Lorg/json/JSONObject;
    .end local v6    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 3330
    :catch_bf
    move-exception v1

    .line 3331
    .local v1, "e":Lorg/json/JSONException;
    :try_start_c0
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(placesRequestListener|onComplete|for|JSONException):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_d8} :catch_d9

    goto :goto_bb

    .line 3385
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_d9
    move-exception v1

    .line 3386
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|ProcessJsonPlace):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 3336
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 3345
    :catch_f6
    move-exception v1

    .line 3346
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f7
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3347
    const-string v8, "campaign.detail"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "(Exception|removeFooterView):"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 3351
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 3352
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v8}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v8

    if-nez v8, :cond_33

    .line 3353
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    .line 3380
    .restart local v7    # "tvMapMessage":Landroid/widget/TextView;
    :cond_137
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3381
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_141} :catch_d9

    goto/16 :goto_71
.end method

.method private ShowTabGallery()V
    .registers 5

    .prologue
    .line 2781
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2782
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2835
    const-wide/16 v2, 0x64

    .line 2782
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2836
    return-void
.end method

.method private ShowTabInfo()V
    .registers 5

    .prologue
    .line 2521
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2522
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$17;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2562
    const-wide/16 v2, 0x64

    .line 2522
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2563
    return-void
.end method

.method private ShowTabMap()V
    .registers 5

    .prologue
    .line 2652
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2653
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2695
    const-wide/16 v2, 0x64

    .line 2653
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2696
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3

    .prologue
    .line 3594
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 1721
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V
    .registers 3

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V
    .registers 3

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D
    .registers 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/CampaignDetailActivity;ZDD)V
    .registers 6

    .prologue
    .line 3221
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 3316
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 3178
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    return-void
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-void
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 516
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2565
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2698
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    return-void
.end method

.method static synthetic access$35(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2838
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    return-void
.end method

.method static synthetic access$37(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 2906
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2488
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$39(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 2945
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignDetailActivity;)I
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    return v0
.end method

.method static synthetic access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$41(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2651
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabMap()V

    return-void
.end method

.method static synthetic access$42(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2780
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V

    return-void
.end method

.method static synthetic access$43(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2619
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2520
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V

    return-void
.end method

.method static synthetic access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2748
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$47(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$49(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$50(Lcom/samsung/privilege/activity/CampaignDetailActivity;J)V
    .registers 3

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gLastRank:J

    return-void
.end method

.method static synthetic access$51(Lcom/samsung/privilege/activity/CampaignDetailActivity;)J
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$52(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$53(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    return-object v0
.end method

.method static synthetic access$54(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    return-void
.end method

.method static synthetic access$55(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$56(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 1050
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    return-void
.end method

.method private bigToSmallAnimation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 2457
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2458
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2459
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2460
    return-object v0
.end method

.method private checkRedeemError(Z)Ljava/lang/String;
    .registers 15
    .param p1, "isCheckNFC"    # Z

    .prologue
    const v12, 0x7f0a0352

    const v8, 0x7f0a0350

    const v11, 0x7f0a01be

    const/4 v10, 0x2

    const/4 v9, 0x6

    .line 1453
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1456
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v7

    if-nez v7, :cond_23

    .line 1457
    const v7, 0x7f0a0302

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1624
    :goto_22
    return-object v7

    .line 1489
    :cond_23
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_2f

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_d4

    .line 1490
    :cond_2f
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    if-eqz v7, :cond_bd

    .line 1492
    :try_start_33
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_93

    .line 1493
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "nfc"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcManager;

    .line 1494
    .local v3, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v3}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1496
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_7d

    .line 1497
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1498
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_5f

    .line 1500
    const v7, 0x7f0a0350

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1502
    :cond_5f
    const v7, 0x7f0a0347

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1505
    :cond_67
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_75

    .line 1507
    const v7, 0x7f0a0351

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1509
    :cond_75
    const v7, 0x7f0a01bf

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1513
    :cond_7d
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_8b

    .line 1515
    const v7, 0x7f0a0352

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1517
    :cond_8b
    const v7, 0x7f0a01be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1521
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v3    # "manager":Landroid/nfc/NfcManager;
    :cond_93
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_a1

    .line 1523
    const v7, 0x7f0a0350

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1525
    :cond_a1
    const v7, 0x7f0a01be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a7} :catch_aa

    move-result-object v7

    goto/16 :goto_22

    .line 1528
    :catch_aa
    move-exception v2

    .line 1529
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_b7

    .line 1531
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1533
    :cond_b7
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1537
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_bd
    if-eqz p1, :cond_d4

    .line 1538
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_cb

    .line 1540
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1542
    :cond_cb
    const v7, 0x7f0a0347

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1548
    :cond_d4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e3

    .line 1549
    if-eqz p1, :cond_e3

    .line 1551
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1556
    :cond_e3
    if-nez p1, :cond_fb

    .line 1557
    :try_start_e5
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-nez v7, :cond_115

    .line 1558
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1561
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_22

    .line 1565
    :cond_fb
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1568
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10b} :catch_10d

    goto/16 :goto_22

    .line 1571
    :catch_10d
    move-exception v2

    .line 1572
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_115
    :try_start_115
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v7, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_183

    .line 1579
    new-instance v4, Ljava/util/Date;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v7, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v9, 0x6270

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-direct {v4, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1580
    .local v4, "nextRedeemDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1594
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_183

    .line 1597
    const v7, 0x7f0a02f6

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1598
    .local v6, "str_nextredeemdate":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v8, Ljava/util/Date;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v9, v9, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v11, 0x6270

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1599
    .local v5, "strNextRedeemDate":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_178} :catch_17b

    move-result-object v7

    goto/16 :goto_22

    .line 1602
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v4    # "nextRedeemDate":Ljava/util/Date;
    .end local v5    # "strNextRedeemDate":Ljava/lang/String;
    .end local v6    # "str_nextredeemdate":Ljava/lang/String;
    :catch_17b
    move-exception v2

    .line 1603
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_183
    :try_start_183
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lez v7, :cond_1a4

    .line 1608
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemCount:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lt v7, v8, :cond_1a4

    .line 1609
    const v7, 0x7f0a0303

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_199} :catch_19c

    move-result-object v7

    goto/16 :goto_22

    .line 1612
    :catch_19c
    move-exception v2

    .line 1613
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1a4
    :try_start_1a4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    if-lt v7, v8, :cond_1bf

    .line 1618
    const v7, 0x7f0a0304

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b4} :catch_1b7

    move-result-object v7

    goto/16 :goto_22

    .line 1620
    :catch_1b7
    move-exception v2

    .line 1621
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1bf
    const-string v7, ""

    goto/16 :goto_22
.end method

.method private doInitialBranch()V
    .registers 7

    .prologue
    .line 3503
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 3504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 3506
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3507
    .local v0, "arrTemps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    array-length v4, v0

    if-lt v1, v4, :cond_44

    .line 3514
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    .line 3515
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 3516
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3521
    .end local v0    # "arrTemps":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_43
    :goto_43
    return-void

    .line 3508
    .restart local v0    # "arrTemps":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_44
    aget-object v3, v0, v1

    .line 3509
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 3510
    .local v2, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    iput-object v3, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 3511
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3507
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 3518
    .end local v2    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    .end local v3    # "str":Ljava/lang/String;
    :cond_57
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_43
.end method

.method private fetchPlaces(Z)V
    .registers 5
    .param p1, "pLoadMore"    # Z

    .prologue
    .line 3181
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 3182
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    :goto_b
    return-void

    .line 3184
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3185
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchPlaces("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    if-nez p1, :cond_35

    .line 3188
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3199
    :cond_35
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$28;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$28;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private fetchPlaces(ZDD)V
    .registers 14
    .param p1, "pLoadMore"    # Z
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .prologue
    .line 3222
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 3223
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    :goto_b
    return-void

    .line 3225
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3226
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetchPlaces("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    if-nez p1, :cond_49

    .line 3229
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3240
    :cond_49
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$30;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$30;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;DDZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 3611
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 3612
    return-void
.end method

.method private getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 3547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "campaign_detail-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 3548
    .local v7, "catch_campaign":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 3550
    :try_start_1f
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3551
    .local v10, "jsonRoot":Lorg/json/JSONObject;
    new-instance v6, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v6, v10}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 3553
    .local v6, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 3555
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v1, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 3556
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3557
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "campaign_id"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3558
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3560
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 3592
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_68
    :goto_68
    return-void

    .line 3564
    .restart local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .restart local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_69
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3571
    iput-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_73} :catch_e0

    .line 3578
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3579
    .local v11, "token":Ljava/lang/String;
    if-eqz v11, :cond_68

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 3580
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3587
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&format=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3588
    .local v12, "url":Ljava/lang/String;
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 3590
    .local v4, "startTime":J
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;J)V

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_68

    .line 3572
    .end local v4    # "startTime":J
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_e0
    move-exception v8

    .line 3574
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while load cache campaign!"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 2979
    const-string v0, "campaign.detail"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3069
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;->start()V

    .line 3070
    return-void
.end method

.method private getPoints()V
    .registers 3

    .prologue
    .line 1051
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 1077
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1078
    return-void
.end method

.method private goBooking(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 7
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1851
    if-eqz p1, :cond_9a

    .line 1852
    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 1854
    :try_start_10
    iget-object v2, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_c1

    .line 1857
    .local v2, "url":Ljava/lang/String;
    :try_start_12
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1858
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1859
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_c3

    move-result-object v2

    .line 1864
    .end local v0    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_33
    :try_start_33
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 1865
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1867
    :cond_52
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1873
    :goto_7f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1874
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1875
    const-string v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1876
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1882
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_9a
    :goto_9a
    return-void

    .line 1870
    .restart local v2    # "url":Ljava/lang/String;
    :cond_9b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_bf} :catch_c1

    move-result-object v2

    goto :goto_7f

    .line 1877
    .end local v2    # "url":Ljava/lang/String;
    :catch_c1
    move-exception v3

    goto :goto_9a

    .line 1860
    .restart local v2    # "url":Ljava/lang/String;
    :catch_c3
    move-exception v3

    goto/16 :goto_33
.end method

.method private goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 14
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1885
    if-eqz p1, :cond_3a

    .line 1886
    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v8, :cond_3a

    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 1888
    :try_start_10
    iget-object v7, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 1890
    .local v7, "url":Ljava/lang/String;
    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1891
    :cond_22
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1892
    .local v3, "arrTemp":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7b

    .line 1893
    const/4 v8, 0x1

    aget-object v1, v3, v8
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_79

    .line 1896
    .local v1, "android_ns":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1897
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_3a} :catch_5a

    .line 1935
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 1898
    .restart local v1    # "android_ns":Ljava/lang/String;
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_3b
    move-exception v5

    .line 1899
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_3c
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "market://details?id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_59
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_59} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_79

    goto :goto_3a

    .line 1901
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5a
    move-exception v2

    .line 1902
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    :try_start_5b
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://play.google.com/store/apps/details?id="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a

    .line 1930
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_79
    move-exception v8

    goto :goto_3a

    .line 1905
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_7b
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_89} :catch_79

    goto :goto_3a

    .line 1909
    .end local v3    # "arrTemp":[Ljava/lang/String;
    :cond_8a
    :try_start_8a
    const-string v8, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1910
    new-instance v4, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1911
    .local v4, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v8, "<deviceId>"

    invoke-virtual {v4}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_aa} :catch_134

    move-result-object v7

    .line 1916
    .end local v4    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_ab
    :try_start_ab
    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ca

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_ca

    .line 1917
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1919
    :cond_ca
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 1920
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1925
    :goto_f7
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1927
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v6, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3a

    .line 1922
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_10e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "?token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_132} :catch_79

    move-result-object v7

    goto :goto_f7

    .line 1912
    :catch_134
    move-exception v8

    goto/16 :goto_ab
.end method

.method private inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2907
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2909
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2910
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2911
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2912
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2933
    return-object v9
.end method

.method private inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 959
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 960
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 961
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 962
    return-object v0
.end method

.method private initialFont()V
    .registers 39

    .prologue
    .line 390
    const v36, 0x7f3c000b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 391
    .local v3, "layoutCenter":Landroid/widget/RelativeLayout;
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    const/high16 v36, 0x7f410000

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 393
    .local v4, "layoutMenu":Landroid/widget/LinearLayout;
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    const v36, 0x7f3c0004

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 396
    .local v22, "tvHeaderCaption":Landroid/widget/TextView;
    const v36, 0x7f3c000a

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 397
    .local v31, "tvPoint":Landroid/widget/TextView;
    const v36, 0x7f3c0009

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 398
    .local v33, "tvPointP":Landroid/widget/TextView;
    const v36, 0x7f3c0008

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 399
    .local v32, "tvPointCaption":Landroid/widget/TextView;
    const v36, 0x7f3c0019

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 400
    .local v13, "tvCampaignName":Landroid/widget/TextView;
    const v36, 0x7f3c0012

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 401
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    const v36, 0x7f3c001b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 402
    .local v11, "tvCampaignCondition0":Landroid/widget/TextView;
    const v36, 0x7f3c001c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 403
    .local v10, "tvCampaignCondition":Landroid/widget/TextView;
    const v36, 0x7f3c0015

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 404
    .local v25, "tvLike":Landroid/widget/TextView;
    const v36, 0x7f3c0017

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 405
    .local v16, "tvComment":Landroid/widget/TextView;
    const v36, 0x7f3c001f

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 406
    .local v19, "tvError":Landroid/widget/TextView;
    const v36, 0x7f3c0023

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 407
    .local v34, "tvRedeem":Landroid/widget/TextView;
    const v36, 0x7f3c0025

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 409
    .local v35, "tvRedeemWarning":Landroid/widget/TextView;
    const v36, 0x7f3f0001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 410
    .local v23, "tvInfoAgency":Landroid/widget/TextView;
    const v36, 0x7f3f0002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 411
    .local v24, "tvInfoCampaignName":Landroid/widget/TextView;
    const v36, 0x7f3f0006

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 412
    .local v15, "tvClaim0":Landroid/widget/TextView;
    const v36, 0x7f3f0007

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 413
    .local v14, "tvClaim":Landroid/widget/TextView;
    const v36, 0x7f3f0008

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 414
    .local v30, "tvPeriod0":Landroid/widget/TextView;
    const v36, 0x7f3f0009

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 415
    .local v29, "tvPeriod":Landroid/widget/TextView;
    const v36, 0x7f3f000a

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 416
    .local v18, "tvCondition0":Landroid/widget/TextView;
    const v36, 0x7f3f000b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 418
    .local v17, "tvCondition":Landroid/widget/TextView;
    const v36, 0x7f400001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 419
    .local v26, "tvMapAgency":Landroid/widget/TextView;
    const v36, 0x7f400002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 420
    .local v27, "tvMapCampaignName":Landroid/widget/TextView;
    const v36, 0x7f400006

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 422
    .local v28, "tvMapMessage":Landroid/widget/TextView;
    const v36, 0x7f3e0001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 423
    .local v20, "tvGalleryAgency":Landroid/widget/TextView;
    const v36, 0x7f3e0002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 425
    .local v21, "tvGalleryCampaignName":Landroid/widget/TextView;
    const v36, 0x7f1d0004

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 426
    .local v7, "tvButtonHome":Landroid/widget/TextView;
    const v36, 0x7f1d0007

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 427
    .local v8, "tvButtonInfo":Landroid/widget/TextView;
    const v36, 0x7f1d000c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 428
    .local v9, "tvButtonMap":Landroid/widget/TextView;
    const v36, 0x7f1d0011

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 431
    .local v6, "tvButtonGallery":Landroid/widget/TextView;
    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v36

    const-string v37, "fonts/kit55p.ttf"

    invoke-static/range {v36 .. v37}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 492
    .local v2, "font_kit55p":Landroid/graphics/Typeface;
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 494
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 496
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 497
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_46c
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_46c} :catch_4a1

    .line 502
    .end local v2    # "font_kit55p":Landroid/graphics/Typeface;
    :goto_46c
    const v36, 0x7f3c0005

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 503
    .local v5, "layoutMyPoint":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v36

    if-eqz v36, :cond_487

    .line 504
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    :goto_486
    return-void

    .line 506
    :cond_487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_499

    .line 507
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_486

    .line 509
    :cond_499
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_486

    .line 498
    .end local v5    # "layoutMyPoint":Landroid/widget/RelativeLayout;
    :catch_4a1
    move-exception v36

    goto :goto_46c
.end method

.method private initialFontColor()V
    .registers 12

    .prologue
    .line 1008
    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v9, :cond_6f

    .line 1009
    const v9, 0x7f3c0019

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1010
    .local v2, "tvCampaignName":Landroid/widget/TextView;
    const v9, 0x7f3c001b

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1011
    .local v1, "tvCampaignCondition0":Landroid/widget/TextView;
    const v9, 0x7f3f0001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1012
    .local v6, "tvInfoAgency":Landroid/widget/TextView;
    const v9, 0x7f3f0006

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1013
    .local v3, "tvClaim0":Landroid/widget/TextView;
    const v9, 0x7f3f0008

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1014
    .local v8, "tvPeriod0":Landroid/widget/TextView;
    const v9, 0x7f3f000a

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1015
    .local v4, "tvCondition0":Landroid/widget/TextView;
    const v9, 0x7f400001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1016
    .local v7, "tvMapAgency":Landroid/widget/TextView;
    const v9, 0x7f3e0001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1018
    .local v5, "tvGalleryAgency":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1039
    .local v0, "color":I
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1040
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1041
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1044
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1048
    .end local v0    # "color":I
    .end local v1    # "tvCampaignCondition0":Landroid/widget/TextView;
    .end local v2    # "tvCampaignName":Landroid/widget/TextView;
    .end local v3    # "tvClaim0":Landroid/widget/TextView;
    .end local v4    # "tvCondition0":Landroid/widget/TextView;
    .end local v5    # "tvGalleryAgency":Landroid/widget/TextView;
    .end local v6    # "tvInfoAgency":Landroid/widget/TextView;
    .end local v7    # "tvMapAgency":Landroid/widget/TextView;
    .end local v8    # "tvPeriod0":Landroid/widget/TextView;
    :cond_6f
    return-void
.end method

.method private initialLayout(Z)V
    .registers 73
    .param p1, "isFromCache"    # Z

    .prologue
    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialFontColor()V

    .line 519
    const v3, 0x7f3c000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 520
    .local v20, "imgCampaignThumb":Landroid/widget/ImageView;
    const v3, 0x7f3c0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 521
    .local v19, "imgCampaignBig":Landroid/widget/ImageView;
    const v3, 0x7f3c0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 522
    .local v5, "imgCampaignSmart":Landroid/widget/ImageView;
    const v3, 0x7f3c0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/TextView;

    .line 523
    .local v60, "tvHeaderCaption":Landroid/widget/TextView;
    const v3, 0x7f3c0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 524
    .local v54, "tvCampaignName":Landroid/widget/TextView;
    const v3, 0x7f3c0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 525
    .local v53, "tvCampaignDesc":Landroid/widget/TextView;
    const v3, 0x7f3c001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 526
    .local v52, "tvCampaignCondition":Landroid/widget/TextView;
    const v3, 0x7f3c0015

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/TextView;

    .line 527
    .local v63, "tvLike":Landroid/widget/TextView;
    const v3, 0x7f3c0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 530
    .local v30, "imgLike":Landroid/widget/ImageView;
    const v3, 0x7f3c0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 531
    .local v55, "tvComment":Landroid/widget/TextView;
    const v3, 0x7f3c0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    .line 532
    .local v31, "imgRedeem":Landroid/widget/ImageView;
    const v3, 0x7f3c001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/RelativeLayout;

    .line 533
    .local v36, "layoutError":Landroid/widget/RelativeLayout;
    const v3, 0x7f3c001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 534
    .local v57, "tvError":Landroid/widget/TextView;
    const v3, 0x7f3c0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v67

    check-cast v67, Landroid/widget/TextView;

    .line 535
    .local v67, "tvRedeem":Landroid/widget/TextView;
    const v3, 0x7f3c0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v68

    check-cast v68, Landroid/widget/TextView;

    .line 536
    .local v68, "tvRedeemWarning":Landroid/widget/TextView;
    const v3, 0x7f3c0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/RelativeLayout;

    .line 539
    .local v39, "layoutLike":Landroid/widget/RelativeLayout;
    const v3, 0x7f3c0014

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 540
    .local v35, "layoutComment":Landroid/widget/RelativeLayout;
    const v3, 0x7f3c0024

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 542
    .local v21, "imgFacebookShare":Landroid/widget/ImageView;
    const v3, 0x7f3c002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 543
    .local v28, "imgInfoCampaignInfoSmart":Landroid/widget/ImageView;
    const v3, 0x7f3f0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/TextView;

    .line 544
    .local v61, "tvInfoAgency":Landroid/widget/TextView;
    const v3, 0x7f3f0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/TextView;

    .line 547
    .local v62, "tvInfoCampaignName":Landroid/widget/TextView;
    const v3, 0x7f3f0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Landroid/widget/TextView;

    .line 548
    .local v66, "tvPeriod":Landroid/widget/TextView;
    const v3, 0x7f3f000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 550
    .local v56, "tvCondition":Landroid/widget/TextView;
    const v3, 0x7f3c002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 551
    .local v29, "imgInfoCampaignMapSmart":Landroid/widget/ImageView;
    const v3, 0x7f400001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/TextView;

    .line 552
    .local v64, "tvMapAgency":Landroid/widget/TextView;
    const v3, 0x7f400002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v65

    check-cast v65, Landroid/widget/TextView;

    .line 556
    .local v65, "tvMapCampaignName":Landroid/widget/TextView;
    const v3, 0x7f3c002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 557
    .local v27, "imgInfoCampaignGallerySmart":Landroid/widget/ImageView;
    const v3, 0x7f3e0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 558
    .local v22, "imgGallery01":Landroid/widget/ImageView;
    const v3, 0x7f3e0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 559
    .local v23, "imgGallery02":Landroid/widget/ImageView;
    const v3, 0x7f3e0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 560
    .local v24, "imgGallery03":Landroid/widget/ImageView;
    const v3, 0x7f3e000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 561
    .local v25, "imgGallery04":Landroid/widget/ImageView;
    const v3, 0x7f3e000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 562
    .local v26, "imgGallery05":Landroid/widget/ImageView;
    const v3, 0x7f3e0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 563
    .local v58, "tvGalleryAgency":Landroid/widget/TextView;
    const v3, 0x7f3e0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 581
    .local v59, "tvGalleryCampaignName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    const-string v6, "<br>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7bc

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v3, :cond_7c9

    .line 595
    const v3, 0x7f02031a

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    const v3, 0x7f02007b

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 602
    :goto_1ed
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7db

    .line 603
    const v3, 0x7f0a02f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    :goto_209
    const/16 v33, 0x1

    .line 609
    .local v33, "isChangeCaption":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7eb

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v3, :cond_7eb

    .line 610
    const/16 v33, 0x1

    .line 617
    :goto_223
    if-eqz v33, :cond_246

    .line 633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v3, :cond_246

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_246

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    :cond_246
    if-eqz p1, :cond_809

    .line 639
    const/16 v3, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 640
    const/16 v3, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 641
    const/16 v3, 0x8

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    const/16 v3, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    :goto_26b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v3, :cond_2b6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b6

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "N/A"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b6

    .line 706
    const/16 v3, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 707
    const/16 v3, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 708
    const/16 v3, 0x8

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    const/16 v3, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 714
    :cond_2b6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "402705486466922"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae6

    .line 715
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 720
    :goto_2cc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    const v3, 0x7f3c000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    .line 724
    new-instance v17, Ljava/text/DecimalFormat;

    const-string v3, "#,###,###"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 725
    .local v17, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v44

    .line 726
    .local v44, "points":J
    const-wide/16 v10, 0x0

    cmp-long v3, v44, v10

    if-lez v3, :cond_317

    .line 727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :cond_317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 731
    .local v16, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v69

    .line 733
    .local v69, "tz":Ljava/util/TimeZone;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v69 .. v69}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v50

    .line 742
    .local v50, "strStartDate":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v3, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual/range {v69 .. v69}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v12, v8

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v46

    .line 752
    .local v46, "strExpireDate":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 753
    .local v43, "period":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "1109"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_476

    .line 754
    const-string v3, "Jan"

    const v6, 0x7f0a0360

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 755
    const-string v3, "Feb"

    const v6, 0x7f0a0361

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 756
    const-string v3, "Mar"

    const v6, 0x7f0a0362

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 757
    const-string v3, "Apr"

    const v6, 0x7f0a0363

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 758
    const-string v3, "May"

    const v6, 0x7f0a0364

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 759
    const-string v3, "Jun"

    const v6, 0x7f0a0365

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 760
    const-string v3, "Jul"

    const v6, 0x7f0a0366

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 761
    const-string v3, "Aug"

    const v6, 0x7f0a0367

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 762
    const-string v3, "Sep"

    const v6, 0x7f0a0368

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 763
    const-string v3, "Oct"

    const v6, 0x7f0a0369

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 764
    const-string v3, "Nov"

    const v6, 0x7f0a036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 765
    const-string v3, "Dec"

    const v6, 0x7f0a036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 767
    :cond_476
    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    const-string v6, "<br>"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aef

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    :goto_49a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v58

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    const/4 v3, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 801
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "api/agency/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/picture"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "img_campaign_agency":Ljava/lang/String;
    const-string v3, "https"

    const-string v6, "http"

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 805
    if-eqz v4, :cond_542

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_542

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v6, 0x0

    const v7, 0x7f02039f

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object v7, v4

    move-object/from16 v8, v28

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 808
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object v7, v4

    move-object/from16 v8, v29

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 809
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object v7, v4

    move-object/from16 v8, v27

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 812
    :cond_542
    sget-object v70, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 813
    .local v70, "urlPrefix":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v70

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55b

    .line 814
    const/4 v3, 0x0

    invoke-virtual/range {v70 .. v70}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v70

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v70

    .line 816
    :cond_55b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x1

    if-lt v3, v6, :cond_596

    .line 817
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 818
    .local v7, "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object/from16 v8, v22

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 820
    .end local v7    # "img_gallery":Ljava/lang/String;
    :cond_596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_5d1

    .line 821
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 822
    .restart local v7    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object/from16 v8, v23

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 824
    .end local v7    # "img_gallery":Ljava/lang/String;
    :cond_5d1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_60c

    .line 825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 826
    .restart local v7    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object/from16 v8, v24

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 828
    .end local v7    # "img_gallery":Ljava/lang/String;
    :cond_60c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x4

    if-lt v3, v6, :cond_647

    .line 829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 830
    .restart local v7    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object/from16 v8, v25

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 832
    .end local v7    # "img_gallery":Ljava/lang/String;
    :cond_647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x5

    if-lt v3, v6, :cond_682

    .line 833
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 834
    .restart local v7    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    const v10, 0x7f02039f

    const/4 v11, 0x0

    move-object/from16 v8, v26

    invoke-virtual/range {v6 .. v11}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 837
    .end local v7    # "img_gallery":Ljava/lang/String;
    :cond_682
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    if-nez v3, :cond_744

    .line 841
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v3}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v9

    .line 842
    .local v9, "img_campaign_thumbnail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v3}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v32

    .line 844
    .local v32, "img_campaign_large":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x6

    if-lt v3, v6, :cond_6f1

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?type=thumbnail"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v70 .. v70}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?type=large"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 849
    :cond_6f1
    const-string v3, "campaign.detail"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "img_campaign_thumbnail="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v3, "campaign.detail"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "img_campaign_large="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v11, 0x0

    const v12, 0x7f02039f

    const/4 v13, 0x0

    move-object/from16 v10, v20

    invoke-virtual/range {v8 .. v13}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 853
    const/4 v3, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 854
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v13, 0x0

    const v14, 0x7f02039f

    const/4 v15, 0x0

    move-object/from16 v11, v32

    move-object/from16 v12, v19

    invoke-virtual/range {v10 .. v15}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 855
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    .line 858
    .end local v9    # "img_campaign_thumbnail":Ljava/lang/String;
    .end local v32    # "img_campaign_large":Ljava/lang/String;
    :cond_744
    const/high16 v3, 0x7f3f0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/RelativeLayout;

    .line 859
    .local v38, "layoutInfo":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 874
    const/high16 v3, 0x7f400000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    .line 875
    .local v40, "layoutMap":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 890
    const/high16 v3, 0x7f3e0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RelativeLayout;

    .line 891
    .local v37, "layoutGallery":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 906
    const v3, 0x7f3c000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout;

    .line 907
    .local v34, "layoutCenter":Landroid/widget/RelativeLayout;
    const v3, 0x7f3c000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/ScrollView;

    .line 908
    .local v42, "layoutScrollView":Landroid/widget/ScrollView;
    const/high16 v3, 0x7f410000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/LinearLayout;

    .line 909
    .local v41, "layoutMenu":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    const/4 v3, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 911
    const/4 v3, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doInitialBranch()V

    .line 927
    return-void

    .line 588
    .end local v4    # "img_campaign_agency":Ljava/lang/String;
    .end local v16    # "cal":Ljava/util/Calendar;
    .end local v17    # "formatter":Ljava/text/DecimalFormat;
    .end local v33    # "isChangeCaption":Z
    .end local v34    # "layoutCenter":Landroid/widget/RelativeLayout;
    .end local v37    # "layoutGallery":Landroid/widget/RelativeLayout;
    .end local v38    # "layoutInfo":Landroid/widget/RelativeLayout;
    .end local v40    # "layoutMap":Landroid/widget/RelativeLayout;
    .end local v41    # "layoutMenu":Landroid/widget/LinearLayout;
    .end local v42    # "layoutScrollView":Landroid/widget/ScrollView;
    .end local v43    # "period":Ljava/lang/String;
    .end local v44    # "points":J
    .end local v46    # "strExpireDate":Ljava/lang/String;
    .end local v50    # "strStartDate":Ljava/lang/String;
    .end local v69    # "tz":Ljava/util/TimeZone;
    .end local v70    # "urlPrefix":Ljava/lang/String;
    :cond_7bc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b7

    .line 598
    :cond_7c9
    const v3, 0x7f02031b

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    const v3, 0x7f02007c

    move-object/from16 v0, v63

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1ed

    .line 605
    :cond_7db
    const v3, 0x7f0a02f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_209

    .line 611
    .restart local v33    # "isChangeCaption":Z
    :cond_7eb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_805

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-eqz v3, :cond_805

    .line 612
    const/16 v33, 0x0

    .line 613
    goto/16 :goto_223

    .line 614
    :cond_805
    const/16 v33, 0x1

    goto/16 :goto_223

    .line 645
    :cond_809
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v49

    .line 646
    .local v49, "strRedeemError":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_847

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v6, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_847

    .line 648
    :cond_83e
    const v3, 0x7f0a0313

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 651
    :cond_847
    if-eqz v49, :cond_89b

    const-string v3, ""

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89b

    .line 652
    const/16 v3, 0x8

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 653
    const/16 v3, 0x8

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    const/16 v3, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    move-object/from16 v0, v57

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    :goto_875
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 698
    :try_start_87b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v8, "View Redeem Detail"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v10, v10, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v6, v8, v10, v11}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_896
    .catch Ljava/lang/Exception; {:try_start_87b .. :try_end_896} :catch_898

    goto/16 :goto_26b

    .line 699
    :catch_898
    move-exception v3

    goto/16 :goto_26b

    .line 658
    :cond_89b
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    const/4 v3, 0x0

    move-object/from16 v0, v67

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    const/4 v3, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    const/16 v3, 0x8

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-lez v3, :cond_a31

    .line 664
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v3, "###,###,###.##"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 665
    .local v18, "formatterHasDigi":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 667
    .local v47, "strPoint":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0a035d

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 668
    .local v48, "strPointUnit":Ljava/lang/String;
    const-string v3, "1"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91b

    .line 669
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f0a035e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 672
    :cond_91b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_931

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v3, :cond_960

    .line 673
    :cond_931
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 675
    :cond_960
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v6, 0x3c

    if-ne v3, v6, :cond_9ac

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 678
    :cond_9ac
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 679
    .local v51, "strWarning":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 683
    .end local v18    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v47    # "strPoint":Ljava/lang/String;
    .end local v48    # "strPointUnit":Ljava/lang/String;
    .end local v51    # "strWarning":Ljava/lang/String;
    :cond_a31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v3, :cond_a77

    .line 684
    :cond_a47
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a0309

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " 0 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a035e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 686
    :cond_a77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v3, v3, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v6, 0x3c

    if-ne v3, v6, :cond_a91

    .line 687
    const v3, 0x7f0a02fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 689
    :cond_a91
    new-instance v3, Ljava/lang/StringBuilder;

    const v6, 0x7f0a02fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v6, v6, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v6, 0x7f0a02fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 690
    .restart local v51    # "strWarning":Ljava/lang/String;
    move-object/from16 v0, v68

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_875

    .line 717
    .end local v49    # "strRedeemError":Ljava/lang/String;
    .end local v51    # "strWarning":Ljava/lang/String;
    :cond_ae6
    const/16 v3, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2cc

    .line 778
    .restart local v16    # "cal":Ljava/util/Calendar;
    .restart local v17    # "formatter":Ljava/text/DecimalFormat;
    .restart local v43    # "period":Ljava/lang/String;
    .restart local v44    # "points":J
    .restart local v46    # "strExpireDate":Ljava/lang/String;
    .restart local v50    # "strStartDate":Ljava/lang/String;
    .restart local v69    # "tz":Ljava/util/TimeZone;
    :cond_aef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_49a
.end method

.method private initialParam()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 365
    const-string v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 367
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 369
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    if-lez v1, :cond_63

    .line 370
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v1, :cond_4a

    .line 371
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 372
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 373
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 387
    :cond_49
    :goto_49
    return-void

    .line 375
    :cond_4a
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 376
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49

    .line 379
    :cond_63
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 380
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v1, :cond_49

    .line 381
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V

    .line 383
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 384
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49
.end method

.method private isPlayingAnimation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2473
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2485
    :cond_15
    :goto_15
    return v0

    .line 2477
    :cond_16
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2481
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2485
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2946
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2948
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2949
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2950
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2951
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2972
    return-object v9
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2464
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2465
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2466
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2467
    return-object v0
.end method

.method private outToTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 970
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 971
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 972
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 973
    return-object v0
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 1392
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1424
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 352
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 353
    const-string v0, "paramNFCTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 354
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 355
    const-string v0, "paramFromList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 357
    const-string v0, "doRedeeming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 358
    const-string v0, "isContinueUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 360
    :cond_43
    return-void
.end method

.method private showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1427
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1428
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1430
    .local v1, "dialogInfo":Landroid/app/Dialog;
    const v3, 0x7f0300dc

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1431
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1433
    const v3, 0x7f460003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1434
    .local v2, "tvMessage":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1435
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1436
    const v3, 0x7f460004

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1438
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1447
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1450
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "dialogInfo":Landroid/app/Dialog;
    .end local v2    # "tvMessage":Landroid/widget/TextView;
    :cond_44
    return-void
.end method

.method private showRedeem(Ljava/lang/String;)V
    .registers 15
    .param p1, "pCustomInput"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1938
    const-string v0, ""

    const v1, 0x7f0a018d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1941
    :try_start_10
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1942
    .local v10, "mMessageView":Landroid/widget/TextView;
    if-eqz v10, :cond_2d

    .line 1943
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1944
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_10f

    .line 1950
    .end local v10    # "mMessageView":Landroid/widget/TextView;
    :cond_2d
    :goto_2d
    if-eqz p1, :cond_10e

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    .line 1951
    new-instance v9, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1952
    .local v9, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 1956
    .local v7, "carrier":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/redeem?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1958
    .local v12, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 1959
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 1960
    .local v8, "date":Ljava/util/Date;
    const-string v0, "REDEEM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1961
    const-string v0, "REDEEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1964
    .end local v8    # "date":Ljava/util/Date;
    :cond_f4
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1965
    .local v11, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 1966
    .local v5, "startTime":J
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V

    invoke-static {v12, v11, v0}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1968
    .end local v5    # "startTime":J
    .end local v7    # "carrier":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v12    # "url":Ljava/lang/String;
    :cond_10e
    return-void

    .line 1946
    :catch_10f
    move-exception v0

    goto/16 :goto_2d
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1287
    return-void
.end method

.method private smallToBig1Animation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2450
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2451
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2452
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2453
    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 1291
    return-void
.end method

.method public doComment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1294
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1295
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1296
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1297
    return-void
.end method

.method public doGallery(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2330
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationGallery()V

    .line 2331
    return-void
.end method

.method public doGetDirections(Lcom/samsung/privilege/bean/PlaceNewDetail;)V
    .registers 11
    .param p1, "pCurrentPlaceNewDetail"    # Lcom/samsung/privilege/bean/PlaceNewDetail;

    .prologue
    .line 3524
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "gFoundLocation="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "doGetDirections:latitude="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",longitude="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    if-eqz p1, :cond_82

    .line 3530
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    float-to-double v1, v6

    .line 3531
    .local v1, "latitude_daddr":D
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    float-to-double v3, v6

    .line 3536
    .local v3, "longitude_daddr":D
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.google.com/maps?daddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3537
    .local v5, "uri":Ljava/lang/String;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3539
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.apps.maps"

    const-string v7, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3540
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3542
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "latitude_daddr":D
    .end local v3    # "longitude_daddr":D
    .end local v5    # "uri":Ljava/lang/String;
    :cond_82
    return-void
.end method

.method public doHome(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2318
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationFinish()V

    .line 2319
    return-void
.end method

.method public doInfo(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2322
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationInfo()V

    .line 2323
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1302
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1320
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 2187
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2188
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-nez v2, :cond_38

    .line 2189
    const v2, 0x7f3c0013

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2191
    .local v0, "layoutLike":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2192
    .local v1, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2193
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2194
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2196
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2197
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2314
    .end local v0    # "layoutLike":Landroid/widget/RelativeLayout;
    .end local v1    # "likeClickAnimation1":Landroid/view/animation/Animation;
    :goto_37
    return-void

    .line 2308
    :cond_38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V

    .line 2309
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doLike(Landroid/view/View;)V

    goto :goto_37

    .line 2312
    :cond_40
    const v2, 0x7f0a0302

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public doMap(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2326
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationMap()V

    .line 2327
    return-void
.end method

.method public doMyPoint(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    .line 2334
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2335
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2336
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2337
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2338
    .local v7, "width":I
    int-to-float v8, v7

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    .line 2339
    int-to-float v8, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    .line 2341
    const/high16 v8, 0x7f3d0000

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2342
    .local v4, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v8, 0x7f3d0001

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2343
    .local v2, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v8, 0x7f3d0002

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2345
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v8, 0x7f3d0005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2346
    .local v6, "tvClose":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2347
    const-string v8, "Close"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2361
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2362
    const v8, 0x7f020355

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2371
    :goto_62
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2378
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2379
    .local v5, "smallToBig1":Landroid/view/animation/Animation;
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2380
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2381
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2382
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2383
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2385
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailActivity$15;

    invoke-direct {v8, p0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2409
    return-void

    .line 2363
    .end local v5    # "smallToBig1":Landroid/view/animation/Animation;
    :cond_89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1108"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 2364
    const v8, 0x7f020353

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2365
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1109"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2366
    const v8, 0x7f020354

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2368
    :cond_b7
    const v8, 0x7f020352

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62
.end method

.method public doMyPointClose(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2412
    const/high16 v4, 0x7f3d0000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2413
    .local v3, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v4, 0x7f3d0001

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2414
    .local v1, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v4, 0x7f3d0002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2416
    .local v2, "layoutButton":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->bigToSmallAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2417
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2418
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2419
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2420
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2422
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2447
    return-void
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1733
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    const-string v4, "Redeem "

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    const-wide/16 v20, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_39c

    .line 1738
    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v2, :cond_3b

    .line 1739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    .line 1848
    :goto_3a
    return-void

    .line 1743
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBooking(Lcom/samsung/privilege/bean/CampaignView;)V

    goto :goto_3a

    .line 1748
    :cond_53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    if-eqz v2, :cond_10b

    .line 1749
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 1750
    :cond_b5
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1751
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a025e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a025f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1757
    const v3, 0x7f0a00b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1762
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 1763
    .local v9, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3a

    .line 1768
    .end local v9    # "alert":Landroid/app/AlertDialog;
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_10b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    if-eqz v2, :cond_11a

    .line 1769
    const-string v2, "campaign.detail"

    const-string v3, "if (doRedeeming == true) {"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1771
    :cond_11a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 1772
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v17

    .line 1774
    .local v17, "strRedeemError":Ljava/lang/String;
    if-eqz v17, :cond_141

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_141

    .line 1775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1777
    :cond_141
    new-instance v12, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1779
    .local v12, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v12}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v2

    if-nez v2, :cond_15e

    .line 1780
    const-string v2, "No internet connection!"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    .line 1781
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_3a

    .line 1783
    :cond_15e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 1785
    .local v18, "token":Ljava/lang/String;
    if-eqz v18, :cond_393

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_393

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    if-eqz v2, :cond_1a4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a4

    .line 1788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V

    .line 1789
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_3a

    .line 1791
    :cond_1a4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 1793
    new-instance v14, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1794
    .local v14, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1798
    .local v11, "carrier":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/redeem?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1799
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v2, :cond_271

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v2, :cond_312

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&nfc=write_back"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1805
    :goto_210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v2, :cond_327

    .line 1806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&redeem_media=nfc_write_back"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1810
    :goto_22b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v2, v2, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    if-eqz v2, :cond_271

    .line 1811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&location_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&info1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1815
    :cond_271
    const-string v2, "campaign.detail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(doBuy)url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f4

    .line 1817
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 1818
    .local v13, "date":Ljava/util/Date;
    const-string v2, "REDEEM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}<br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1819
    const-string v2, "REDEEM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "</font><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1822
    .end local v13    # "date":Ljava/util/Date;
    :cond_2f4
    new-instance v16, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v16 .. v16}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1823
    .local v16, "params":Lcom/loopj/android/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33c

    .line 1824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_3a

    .line 1803
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&nfc=read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_210

    .line 1808
    :cond_327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&redeem_media=nfc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_22b

    .line 1826
    .restart local v16    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_33c
    const-string v2, ""

    const v3, 0x7f0a018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1829
    :try_start_353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1830
    .local v15, "mMessageView":Landroid/widget/TextView;
    if-eqz v15, :cond_374

    .line 1831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1832
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_353 .. :try_end_374} :catch_39a

    .line 1838
    .end local v15    # "mMessageView":Landroid/widget/TextView;
    :cond_374
    :goto_374
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    .line 1839
    .local v7, "startTime":J
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_3a

    .line 1843
    .end local v7    # "startTime":J
    .end local v11    # "carrier":Ljava/lang/String;
    .end local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v19    # "url":Ljava/lang/String;
    :cond_393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_3a

    .line 1834
    .restart local v11    # "carrier":Ljava/lang/String;
    .restart local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v19    # "url":Ljava/lang/String;
    :catch_39a
    move-exception v2

    goto :goto_374

    .line 1734
    .end local v11    # "carrier":Ljava/lang/String;
    .end local v12    # "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    .end local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v17    # "strRedeemError":Ljava/lang/String;
    .end local v18    # "token":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    :catch_39c
    move-exception v2

    goto/16 :goto_1b
.end method

.method public doShare(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1633
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1634
    const v4, 0x7f0a0332

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1719
    :cond_1b
    :goto_1b
    return-void

    .line 1636
    :cond_1c
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1637
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "app_id"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v4, "to"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v4, "name"

    const v5, 0x7f0a030b

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    const-string v4, "picture"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://buzzebees.blob.core.windows.net/campaigns/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v4, "link"

    const-string v5, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v4, "caption"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    const-string v4, "description"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 1650
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_82

    .line 1651
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    goto :goto_1b

    .line 1654
    :cond_82
    if-eqz v2, :cond_1b

    :try_start_84
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1655
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    const-string v5, "feed"

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1656
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$10;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 1711
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 1712
    .local v3, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a4} :catch_a6

    goto/16 :goto_1b

    .line 1714
    .end local v0    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v3    # "webDialog":Lcom/facebook/widget/WebDialog;
    :catch_a6
    move-exception v4

    goto/16 :goto_1b
.end method

.method public getLocationByGPS()V
    .registers 9

    .prologue
    .line 3074
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3083
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 3086
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 3087
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    .line 3088
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    .line 3090
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLat "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    const-string v0, "campaign.detail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gCurrentLon "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(ZDD)V

    .line 3094
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->stopUsingGPS()V

    .line 3123
    :goto_63
    return-void

    .line 3099
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_63

    .line 3101
    :catch_6a
    move-exception v6

    .line 3102
    .local v6, "e":Ljava/lang/Exception;
    const v0, 0x7f0a0319

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3103
    .local v7, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3106
    :cond_9b
    invoke-direct {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    .line 3108
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$25;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3116
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$26;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3121
    const-wide/16 v2, 0x3e8

    .line 3116
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 931
    if-ne p2, v3, :cond_70

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    if-ne p1, v2, :cond_70

    .line 932
    const-string v2, "NextNFCTag"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    .line 933
    .local v0, "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v0, :cond_29

    .line 934
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 935
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 956
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_29
    :goto_29
    return-void

    .line 936
    .restart local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_2a
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Share"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 937
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v4, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 938
    :cond_42
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CheckIn"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 939
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 940
    :cond_5a
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReDeem"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 941
    invoke-static {v0, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto :goto_29

    .line 944
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_70
    if-ne p2, v3, :cond_8d

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v2, :cond_8d

    .line 945
    const-string v2, "bzbs_return_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, "return_url":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 947
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 948
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showRedeem(Ljava/lang/String;)V

    goto :goto_29

    .line 950
    .end local v1    # "return_url":Ljava/lang/String;
    :cond_8d
    if-ne p2, v3, :cond_93

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v2, :cond_29

    .line 952
    :cond_93
    if-ne p2, v3, :cond_29

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    if-ne p1, v2, :cond_29

    .line 953
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    .line 954
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    goto/16 :goto_29
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 171
    if-eqz p1, :cond_130

    .line 172
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->requestWindowFeature(I)Z

    .line 178
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 185
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 190
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 191
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 195
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 197
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenHeight:I

    .line 198
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenWidth:I

    .line 200
    iget v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenWidth:I

    .line 201
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenHeight:I

    .line 203
    .local v2, "height":I
    if-le v2, v7, :cond_139

    .end local v2    # "height":I
    :goto_73
    div-int/lit8 v5, v2, 0x2

    .line 204
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 205
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f02039f

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 206
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 207
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 210
    const v8, 0x7f0300a7

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->setContentView(I)V

    .line 212
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    .line 213
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    .line 215
    const v8, 0x7f070031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 216
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13c

    .line 217
    const v8, 0x7f0202b6

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 226
    :goto_d5
    const v8, 0x7f3c0003

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 227
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_173

    .line 228
    const v8, 0x7f0202ba

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :goto_ee
    const v8, 0x7f400007

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    .line 234
    const v8, 0x7f400008

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    .line 235
    const v8, 0x7f400005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 236
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030122

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    .line 238
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialFont()V

    .line 239
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialParam()V

    .line 241
    if-eqz p1, :cond_128

    .line 244
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 247
    :cond_128
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v9, "GIFT_CAMPAIGN_DETAIL"

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 250
    return-void

    .line 174
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_130
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_139
    move v2, v7

    .line 203
    goto/16 :goto_73

    .line 218
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_13c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_153

    .line 219
    const v8, 0x7f0202b5

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 220
    :cond_153
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16b

    .line 221
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d5

    .line 223
    :cond_16b
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d5

    .line 230
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_173
    const v8, 0x7f0202b9

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_ee
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 321
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 324
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 325
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 254
    const/4 v2, 0x4

    if-ne p1, v2, :cond_52

    .line 255
    const/high16 v2, 0x7f3d0000

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 256
    .local v0, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_17

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doMyPointClose(Landroid/view/View;)V

    .line 278
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :goto_16
    return v1

    .line 261
    .restart local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_17
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 262
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    goto :goto_16

    .line 266
    :cond_29
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 267
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    goto :goto_16

    .line 271
    :cond_3b
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 272
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    goto :goto_16

    .line 276
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_16

    .line 278
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_16
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 300
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 302
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 303
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 314
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 315
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 345
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 346
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 290
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 292
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    .line 293
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->GetProfileData()V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 295
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 330
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    const-string v0, "paramNFCTag"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 336
    const-string v0, "paramCampaignID"

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v0, "paramFromList"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "doRedeeming"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const-string v0, "isContinueUrl"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 284
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 285
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 308
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 309
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method
