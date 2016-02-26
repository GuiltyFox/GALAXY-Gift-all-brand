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

    .line 116
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 117
    const-string v0, "campaign.detail"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->LOGCAT:Ljava/lang/String;

    .line 118
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->formatter:Ljava/text/NumberFormat;

    .line 124
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 144
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    .line 148
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 150
    const/16 v0, 0x19

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListPerPage:I

    .line 160
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsPlayDetailAnimation:Z

    .line 162
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    .line 163
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 164
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 165
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    .line 513
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    .line 1815
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 1816
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 2645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2663
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    .line 2794
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    .line 2923
    const-string v0, "GONE"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    .line 3353
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3719
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3910
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

    .line 3911
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/activity/CampaignDetailActivity$GetProfileAddressListener;)V

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 3912
    return-void
.end method

.method private HideTabGallery()V
    .registers 5

    .prologue
    .line 3014
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 3015
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3064
    const-wide/16 v2, 0x64

    .line 3015
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3065
    return-void
.end method

.method private HideTabInfo()V
    .registers 5

    .prologue
    .line 2741
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2742
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2791
    const-wide/16 v2, 0x64

    .line 2742
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2792
    return-void
.end method

.method private HideTabMap()V
    .registers 5

    .prologue
    .line 2874
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2875
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2920
    const-wide/16 v2, 0x64

    .line 2875
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2921
    return-void
.end method

.method private PlayAnimationFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 979
    const v2, 0x7f3c000c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 981
    .local v0, "layoutScrollView":Landroid/widget/ScrollView;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToTopAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 982
    .local v1, "outToTop":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 983
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 984
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 986
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 987
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1004
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsPlayDetailAnimation:Z

    if-nez v2, :cond_2b

    .line 1005
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 1007
    :cond_2b
    return-void
.end method

.method private PlayAnimationGallery()V
    .registers 4

    .prologue
    .line 2927
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2930
    const/4 v0, 0x0

    .line 2931
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2932
    const/4 v0, 0x1

    .line 2933
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    .line 2936
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2937
    const/4 v0, 0x1

    .line 2938
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    .line 2941
    :cond_2b
    if-eqz v0, :cond_32

    .line 2942
    const-string v1, "Gallery"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2953
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2944
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2945
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2946
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V

    goto :goto_31

    .line 2947
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2948
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    goto :goto_31
.end method

.method private PlayAnimationInfo()V
    .registers 4

    .prologue
    .line 2667
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2670
    const/4 v0, 0x0

    .line 2671
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2672
    const/4 v0, 0x1

    .line 2673
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    .line 2676
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2677
    const/4 v0, 0x1

    .line 2678
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    .line 2681
    :cond_2b
    if-eqz v0, :cond_32

    .line 2682
    const-string v1, "Info"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2693
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2684
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2685
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2686
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V

    goto :goto_31

    .line 2687
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2688
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    goto :goto_31
.end method

.method private PlayAnimationMap()V
    .registers 4

    .prologue
    .line 2798
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2801
    const/4 v0, 0x0

    .line 2802
    .local v0, "isHiding":Z
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2803
    const/4 v0, 0x1

    .line 2804
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    .line 2807
    :cond_19
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2808
    const/4 v0, 0x1

    .line 2809
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    .line 2812
    :cond_2b
    if-eqz v0, :cond_32

    .line 2813
    const-string v1, "Map"

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    .line 2824
    .end local v0    # "isHiding":Z
    :cond_31
    :goto_31
    return-void

    .line 2815
    .restart local v0    # "isHiding":Z
    :cond_32
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2816
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2817
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabMap()V

    goto :goto_31

    .line 2818
    :cond_44
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2819
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    goto :goto_31
.end method

.method private ProcessJsonPlace(Ljava/lang/String;Z)V
    .registers 15
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "loadMore"    # Z

    .prologue
    const/16 v11, 0x8

    .line 3493
    const/4 v0, 0x0

    .line 3494
    .local v0, "count_item":I
    :try_start_3
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f3

    .line 3495
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3496
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_7f

    .line 3509
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 3514
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :goto_1b
    if-eqz v0, :cond_21

    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListPerPage:I

    if-ge v0, v8, :cond_11e

    .line 3515
    :cond_21
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 3516
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v8}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_d9

    move-result v8

    if-eqz v8, :cond_33

    .line 3519
    :try_start_2c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/samsung/privilege/control/PullToRefreshListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_f6

    .line 3532
    :cond_33
    :goto_33
    :try_start_33
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v9, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;

    invoke-direct {v9, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$32;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3550
    const v8, 0x7f400006

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3551
    .local v7, "tvMapMessage":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_137

    .line 3552
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v9, 0x7f0902fe

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

    .line 3553
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3559
    :goto_71
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_74} :catch_d9

    .line 3564
    .end local v7    # "tvMapMessage":Landroid/widget/TextView;
    :goto_74
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3565
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3566
    return-void

    .line 3498
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    :cond_7f
    :try_start_7f
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 3499
    .local v5, "json_place_new":Lorg/json/JSONObject;
    const-string v8, "LocationID"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3500
    .local v3, "id":Ljava/lang/String;
    new-instance v6, Lcom/samsung/privilege/bean/PlaceNewDetail;

    invoke-direct {v6, v3}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 3501
    .local v6, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    const-string v8, "Name"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 3502
    const-string v8, "Latitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    .line 3503
    const-string v8, "Longitude"

    invoke-static {v5, v8}, Lcom/samsung/privilege/util/JsonUtil;->getDouble(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/BBUtil;->CTypeFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, v6, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    .line 3504
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_bb} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_bb} :catch_d9

    .line 3496
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "json_place_new":Lorg/json/JSONObject;
    .end local v6    # "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    :goto_bb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 3505
    :catch_bf
    move-exception v1

    .line 3506
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

    .line 3560
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    :catch_d9
    move-exception v1

    .line 3561
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

    .line 3511
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f3
    const/4 v0, 0x0

    goto/16 :goto_1b

    .line 3520
    :catch_f6
    move-exception v1

    .line 3521
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f7
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3522
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

    .line 3526
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_11e
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsHasData:Z

    .line 3527
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    invoke-virtual {v8}, Lcom/samsung/privilege/control/PullToRefreshListView;->getFooterViewsCount()I

    move-result v8

    if-nez v8, :cond_33

    .line 3528
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    const/high16 v9, 0x7f240000

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_33

    .line 3555
    .restart local v7    # "tvMapMessage":Landroid/widget/TextView;
    :cond_137
    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3556
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_141} :catch_d9

    goto/16 :goto_71
.end method

.method private ShowTabGallery()V
    .registers 5

    .prologue
    .line 2956
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2957
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3010
    const-wide/16 v2, 0x64

    .line 2957
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3011
    return-void
.end method

.method private ShowTabInfo()V
    .registers 5

    .prologue
    .line 2696
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2697
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2737
    const-wide/16 v2, 0x64

    .line 2697
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2738
    return-void
.end method

.method private ShowTabMap()V
    .registers 5

    .prologue
    .line 2827
    const v0, 0x7f3c0026

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 2828
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 2870
    const-wide/16 v2, 0x64

    .line 2828
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2871
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3

    .prologue
    .line 3769
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    return-void
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 1815
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    return-void
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V
    .registers 4

    .prologue
    .line 145
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignDetailActivity;D)V
    .registers 4

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    return-void
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D
    .registers 3

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/samsung/privilege/activity/CampaignDetailActivity;)D
    .registers 3

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$21(Lcom/samsung/privilege/activity/CampaignDetailActivity;ZDD)V
    .registers 6

    .prologue
    .line 3396
    invoke-direct/range {p0 .. p5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(ZDD)V

    return-void
.end method

.method static synthetic access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 3491
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ProcessJsonPlace(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$25(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 3353
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    return-void
.end method

.method static synthetic access$26(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$27(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3719
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$28(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    return-void
.end method

.method static synthetic access$29(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$30(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$31(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2740
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    return-void
.end method

.method static synthetic access$33(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2873
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    return-void
.end method

.method static synthetic access$35(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$36(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 3013
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    return-void
.end method

.method static synthetic access$37(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 3081
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2663
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$39(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 3120
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignDetailActivity;)I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    return v0
.end method

.method static synthetic access$40(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$41(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2826
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabMap()V

    return-void
.end method

.method static synthetic access$42(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2955
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabGallery()V

    return-void
.end method

.method static synthetic access$43(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2645
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gShowTab:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$44(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2794
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 2695
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->ShowTabInfo()V

    return-void
.end method

.method static synthetic access$46(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2923
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$47(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$49(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 2

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadingMore:Z

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$50(Lcom/samsung/privilege/activity/CampaignDetailActivity;J)V
    .registers 4

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gLastRank:J

    return-void
.end method

.method static synthetic access$51(Lcom/samsung/privilege/activity/CampaignDetailActivity;)J
    .registers 3

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gLastRank:J

    return-wide v0
.end method

.method static synthetic access$52(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$53(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    return-object v0
.end method

.method static synthetic access$54(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    return-void
.end method

.method static synthetic access$55(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$56(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingCampaign:Landroid/widget/ProgressBar;

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 1

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    return-void
.end method

.method private bigToSmallAnimation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 2632
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2633
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2634
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2635
    return-object v0
.end method

.method private checkRedeemError(Z)Ljava/lang/String;
    .registers 16
    .param p1, "isCheckNFC"    # Z

    .prologue
    const v12, 0x7f09035f

    const v8, 0x7f09035d

    const v11, 0x7f0901bd

    const/4 v10, 0x2

    const/4 v9, 0x6

    .line 1457
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1460
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v7

    if-nez v7, :cond_23

    .line 1461
    const v7, 0x7f090309

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1628
    :goto_22
    return-object v7

    .line 1493
    :cond_23
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_2f

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_d4

    .line 1494
    :cond_2f
    iget-boolean v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    if-eqz v7, :cond_bd

    .line 1496
    :try_start_33
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_93

    .line 1497
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "nfc"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/NfcManager;

    .line 1498
    .local v3, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v3}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1500
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_7d

    .line 1501
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1502
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_5f

    .line 1504
    const v7, 0x7f09035d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1506
    :cond_5f
    const v7, 0x7f090354

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1509
    :cond_67
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_75

    .line 1511
    const v7, 0x7f09035e

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1513
    :cond_75
    const v7, 0x7f0901be

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1517
    :cond_7d
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_8b

    .line 1519
    const v7, 0x7f09035f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1521
    :cond_8b
    const v7, 0x7f0901bd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1525
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v3    # "manager":Landroid/nfc/NfcManager;
    :cond_93
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_a1

    .line 1527
    const v7, 0x7f09035d

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 1529
    :cond_a1
    const v7, 0x7f0901bd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_a7} :catch_aa

    move-result-object v7

    goto/16 :goto_22

    .line 1532
    :catch_aa
    move-exception v2

    .line 1533
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_b7

    .line 1535
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1537
    :cond_b7
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1541
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_bd
    if-eqz p1, :cond_d4

    .line 1542
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-ne v7, v9, :cond_cb

    .line 1544
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1546
    :cond_cb
    const v7, 0x7f090354

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1552
    :cond_d4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_e3

    .line 1553
    if-eqz p1, :cond_e3

    .line 1555
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_22

    .line 1560
    :cond_e3
    if-nez p1, :cond_fb

    .line 1561
    :try_start_e5
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-nez v7, :cond_115

    .line 1562
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1565
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_22

    .line 1569
    :cond_fb
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eqz v7, :cond_115

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMedia:I

    if-eq v7, v10, :cond_115

    .line 1572
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ConditionAlert:Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_10b} :catch_10d

    goto/16 :goto_22

    .line 1575
    :catch_10d
    move-exception v2

    .line 1576
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_115
    :try_start_115
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v8, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_183

    .line 1583
    new-instance v4, Ljava/util/Date;

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-wide v8, v7, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1584
    .local v4, "nextRedeemDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1598
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_183

    .line 1601
    const v7, 0x7f0902fd

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1602
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

    iget-wide v10, v9, Lcom/samsung/privilege/bean/CampaignView;->NextRedeemDate:J

    const-wide/16 v12, 0x6270

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1603
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

    .line 1606
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v4    # "nextRedeemDate":Ljava/util/Date;
    .end local v5    # "strNextRedeemDate":Ljava/lang/String;
    .end local v6    # "str_nextredeemdate":Ljava/lang/String;
    :catch_17b
    move-exception v2

    .line 1607
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_183
    :try_start_183
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lez v7, :cond_1a4

    .line 1612
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->RedeemCount:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->RedeemMostPerPerson:I

    if-lt v7, v8, :cond_1a4

    .line 1613
    const v7, 0x7f09030a

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_183 .. :try_end_199} :catch_19c

    move-result-object v7

    goto/16 :goto_22

    .line 1616
    :catch_19c
    move-exception v2

    .line 1617
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1a4
    :try_start_1a4
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ItemCountSold:I

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Quantity:I

    if-lt v7, v8, :cond_1bf

    .line 1622
    const v7, 0x7f09030b

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;
    :try_end_1b4
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b4} :catch_1b7

    move-result-object v7

    goto/16 :goto_22

    .line 1624
    :catch_1b7
    move-exception v2

    .line 1625
    .restart local v2    # "ex":Ljava/lang/Exception;
    const-string v7, "campaign.detail"

    const-string v8, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1bf
    const-string v7, ""

    goto/16 :goto_22
.end method

.method private doInitialBranch()V
    .registers 7

    .prologue
    .line 3678
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 3679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    .line 3681
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Location:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3682
    .local v0, "arrTemps":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    array-length v4, v0

    if-lt v1, v4, :cond_44

    .line 3689
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    .line 3690
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 3691
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gAdapter:Lcom/samsung/privilege/activity/CampaignDetailActivity$CampaignBranchAdapter;

    invoke-virtual {v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3696
    .end local v0    # "arrTemps":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_43
    :goto_43
    return-void

    .line 3683
    .restart local v0    # "arrTemps":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_44
    aget-object v3, v0, v1

    .line 3684
    .local v3, "str":Ljava/lang/String;
    new-instance v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    const-string v4, ""

    invoke-direct {v2, v4}, Lcom/samsung/privilege/bean/PlaceNewDetail;-><init>(Ljava/lang/String;)V

    .line 3685
    .local v2, "place":Lcom/samsung/privilege/bean/PlaceNewDetail;
    iput-object v3, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->name:Ljava/lang/String;

    .line 3686
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3682
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 3693
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
    .line 3356
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 3357
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    :goto_b
    return-void

    .line 3359
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3360
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

    .line 3362
    if-nez p1, :cond_35

    .line 3363
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$28;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3374
    :cond_35
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private fetchPlaces(ZDD)V
    .registers 14
    .param p1, "pLoadMore"    # Z
    .param p2, "lat"    # D
    .param p4, "lon"    # D

    .prologue
    .line 3397
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    if-eqz v0, :cond_c

    .line 3398
    const-string v0, "campaign.detail"

    const-string v1, "if (gFetching == true) {// do nothing..."

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    :goto_b
    return-void

    .line 3400
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFetching:Z

    .line 3401
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

    .line 3403
    if-nez p1, :cond_49

    .line 3404
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$30;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$30;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3415
    :cond_49
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$31;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;DDZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 3
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 3786
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 3787
    return-void
.end method

.method private getCampaignFromCatch(ILcom/samsung/privilege/bean/NFCTag;)V
    .registers 16
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/samsung/privilege/bean/NFCTag;

    .prologue
    .line 3722
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

    .line 3723
    .local v7, "catch_campaign":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 3725
    :try_start_1f
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3726
    .local v10, "jsonRoot":Lorg/json/JSONObject;
    new-instance v6, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v6, v10}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 3728
    .local v6, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 3730
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v0, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v1, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 3731
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3732
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

    .line 3733
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3735
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 3767
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_68
    :goto_68
    return-void

    .line 3739
    .restart local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .restart local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_69
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$33;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3746
    iput-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCacheCampaign:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_73} :catch_e0

    .line 3753
    .end local v6    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v10    # "jsonRoot":Lorg/json/JSONObject;
    :cond_73
    :goto_73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 3754
    .local v11, "token":Ljava/lang/String;
    if-eqz v11, :cond_68

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 3755
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$34;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$34;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3762
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

    .line 3763
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

    .line 3764
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 3765
    .local v4, "startTime":J
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetCampaignListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;ILcom/samsung/privilege/bean/NFCTag;J)V

    const/4 v1, 0x0

    invoke-static {v12, v0, v1}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_68

    .line 3747
    .end local v4    # "startTime":J
    .end local v11    # "token":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_e0
    move-exception v8

    .line 3749
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
    .line 3154
    const-string v0, "campaign.detail"

    const-string v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3244
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$24;->start()V

    .line 3245
    return-void
.end method

.method private getPoints()V
    .registers 3

    .prologue
    .line 1053
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 1079
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1080
    return-void
.end method

.method private goBooking(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 7
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 2026
    if-eqz p1, :cond_9a

    .line 2027
    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v3, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 2029
    :try_start_10
    iget-object v2, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_c1

    .line 2032
    .local v2, "url":Ljava/lang/String;
    :try_start_12
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2033
    new-instance v0, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2034
    .local v0, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_32} :catch_c3

    move-result-object v2

    .line 2039
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

    .line 2040
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2042
    :cond_52
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 2043
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

    .line 2048
    :goto_7f
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2049
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2050
    const-string v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2051
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2057
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_9a
    :goto_9a
    return-void

    .line 2045
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

    .line 2052
    .end local v2    # "url":Ljava/lang/String;
    :catch_c1
    move-exception v3

    goto :goto_9a

    .line 2035
    .restart local v2    # "url":Ljava/lang/String;
    :catch_c3
    move-exception v3

    goto/16 :goto_33
.end method

.method private goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 14
    .param p1, "pCampain"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 2060
    if-eqz p1, :cond_3a

    .line 2061
    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    if-eqz v8, :cond_3a

    iget-object v8, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    .line 2063
    :try_start_10
    iget-object v7, p1, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    .line 2065
    .local v7, "url":Ljava/lang/String;
    const-string v8, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_22

    const-string v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 2066
    :cond_22
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2067
    .local v3, "arrTemp":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_7b

    .line 2068
    const/4 v8, 0x1

    aget-object v1, v3, v8
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_79

    .line 2071
    .local v1, "android_ns":Ljava/lang/String;
    :try_start_2f
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2072
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_3a} :catch_5a

    .line 2110
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 2073
    .restart local v1    # "android_ns":Ljava/lang/String;
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_3b
    move-exception v5

    .line 2074
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

    .line 2076
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_5a
    move-exception v2

    .line 2077
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

    .line 2105
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_79
    move-exception v8

    goto :goto_3a

    .line 2080
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

    .line 2084
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

    .line 2085
    new-instance v4, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2086
    .local v4, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v8, "<deviceId>"

    invoke-virtual {v4}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_aa} :catch_134

    move-result-object v7

    .line 2091
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

    .line 2092
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2094
    :cond_ca
    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10e

    .line 2095
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

    .line 2100
    :goto_f7
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/samsung/privilege/activity/WebViewActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2102
    .local v6, "intent":Landroid/content/Intent;
    const-string v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2103
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v6, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3a

    .line 2097
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

    .line 2087
    :catch_134
    move-exception v8

    goto/16 :goto_ab
.end method

.method private goGetPoint(Ljava/lang/String;Lcom/samsung/privilege/bean/CampaignView;)V
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pCampaign"    # Lcom/samsung/privilege/bean/CampaignView;

    .prologue
    .line 1957
    const-string v4, ""

    const v5, 0x7f09018d

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p0, v4, v5, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1960
    :try_start_11
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1961
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_3c

    .line 1962
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1963
    .local v1, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1964
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3c} :catch_74

    .line 1970
    .end local v1    # "fontDefault":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_3c
    :goto_3c
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1971
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string v4, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1974
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "goGetPoint="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v4, p1, v3, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2023
    return-void

    .line 1966
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    :catch_74
    move-exception v4

    goto :goto_3c
.end method

.method private inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3082
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3084
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3085
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3086
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3087
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3108
    return-object v9
.end method

.method private inFromTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 961
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 962
    .local v0, "inFromTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 963
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 964
    return-object v0
.end method

.method private initialFont()V
    .registers 39

    .prologue
    .line 389
    const v36, 0x7f3c000b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 390
    .local v3, "layoutCenter":Landroid/widget/RelativeLayout;
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 391
    const/high16 v36, 0x7f410000

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 392
    .local v4, "layoutMenu":Landroid/widget/LinearLayout;
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 394
    const v36, 0x7f3c0004

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 395
    .local v22, "tvHeaderCaption":Landroid/widget/TextView;
    const v36, 0x7f3c000a

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 396
    .local v31, "tvPoint":Landroid/widget/TextView;
    const v36, 0x7f3c0009

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 397
    .local v33, "tvPointP":Landroid/widget/TextView;
    const v36, 0x7f3c0008

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 398
    .local v32, "tvPointCaption":Landroid/widget/TextView;
    const v36, 0x7f3c0019

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 399
    .local v13, "tvCampaignName":Landroid/widget/TextView;
    const v36, 0x7f3c0012

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 400
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    const v36, 0x7f3c001b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 401
    .local v11, "tvCampaignCondition0":Landroid/widget/TextView;
    const v36, 0x7f3c001c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 402
    .local v10, "tvCampaignCondition":Landroid/widget/TextView;
    const v36, 0x7f3c0015

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 403
    .local v25, "tvLike":Landroid/widget/TextView;
    const v36, 0x7f3c0017

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 404
    .local v16, "tvComment":Landroid/widget/TextView;
    const v36, 0x7f3c001f

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 405
    .local v19, "tvError":Landroid/widget/TextView;
    const v36, 0x7f3c0023

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 406
    .local v34, "tvRedeem":Landroid/widget/TextView;
    const v36, 0x7f3c0025

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 408
    .local v35, "tvRedeemWarning":Landroid/widget/TextView;
    const v36, 0x7f3f0001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 409
    .local v23, "tvInfoAgency":Landroid/widget/TextView;
    const v36, 0x7f3f0002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 410
    .local v24, "tvInfoCampaignName":Landroid/widget/TextView;
    const v36, 0x7f3f0006

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 411
    .local v15, "tvClaim0":Landroid/widget/TextView;
    const v36, 0x7f3f0007

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 412
    .local v14, "tvClaim":Landroid/widget/TextView;
    const v36, 0x7f3f0008

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 413
    .local v30, "tvPeriod0":Landroid/widget/TextView;
    const v36, 0x7f3f0009

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 414
    .local v29, "tvPeriod":Landroid/widget/TextView;
    const v36, 0x7f3f000a

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 415
    .local v18, "tvCondition0":Landroid/widget/TextView;
    const v36, 0x7f3f000b

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 417
    .local v17, "tvCondition":Landroid/widget/TextView;
    const v36, 0x7f400001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 418
    .local v26, "tvMapAgency":Landroid/widget/TextView;
    const v36, 0x7f400002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 419
    .local v27, "tvMapCampaignName":Landroid/widget/TextView;
    const v36, 0x7f400006

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 421
    .local v28, "tvMapMessage":Landroid/widget/TextView;
    const v36, 0x7f3e0001

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 422
    .local v20, "tvGalleryAgency":Landroid/widget/TextView;
    const v36, 0x7f3e0002

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 424
    .local v21, "tvGalleryCampaignName":Landroid/widget/TextView;
    const v36, 0x7f1d0004

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 425
    .local v7, "tvButtonHome":Landroid/widget/TextView;
    const v36, 0x7f1d0007

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 426
    .local v8, "tvButtonInfo":Landroid/widget/TextView;
    const v36, 0x7f1d000c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 427
    .local v9, "tvButtonMap":Landroid/widget/TextView;
    const v36, 0x7f1d0011

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 430
    .local v6, "tvButtonGallery":Landroid/widget/TextView;
    :try_start_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v30

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v17

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v28

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v36

    const/high16 v37, 0x40800000

    sub-float v36, v36, v37

    move/from16 v0, v36

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v36

    const-string v37, "fonts/kit55p.ttf"

    invoke-static/range {v36 .. v37}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 491
    .local v2, "font_kit55p":Landroid/graphics/Typeface;
    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 492
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 493
    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 495
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 496
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_46c
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_46c} :catch_4a1

    .line 501
    .end local v2    # "font_kit55p":Landroid/graphics/Typeface;
    :goto_46c
    const v36, 0x7f3c0005

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 502
    .local v5, "layoutMyPoint":Landroid/widget/RelativeLayout;
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v36

    if-eqz v36, :cond_487

    .line 503
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    :goto_486
    return-void

    .line 505
    :cond_487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_499

    .line 506
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_486

    .line 508
    :cond_499
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_486

    .line 497
    .end local v5    # "layoutMyPoint":Landroid/widget/RelativeLayout;
    :catch_4a1
    move-exception v36

    goto :goto_46c
.end method

.method private initialFontColor()V
    .registers 12

    .prologue
    .line 1010
    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v9, :cond_6f

    .line 1011
    const v9, 0x7f3c0019

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1012
    .local v2, "tvCampaignName":Landroid/widget/TextView;
    const v9, 0x7f3c001b

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1013
    .local v1, "tvCampaignCondition0":Landroid/widget/TextView;
    const v9, 0x7f3f0001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1014
    .local v6, "tvInfoAgency":Landroid/widget/TextView;
    const v9, 0x7f3f0006

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1015
    .local v3, "tvClaim0":Landroid/widget/TextView;
    const v9, 0x7f3f0008

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1016
    .local v8, "tvPeriod0":Landroid/widget/TextView;
    const v9, 0x7f3f000a

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1017
    .local v4, "tvCondition0":Landroid/widget/TextView;
    const v9, 0x7f400001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1018
    .local v7, "tvMapAgency":Landroid/widget/TextView;
    const v9, 0x7f3e0001

    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1020
    .local v5, "tvGalleryAgency":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080045

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1041
    .local v0, "color":I
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1042
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1044
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1047
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1048
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1050
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
    .registers 74
    .param p1, "isFromCache"    # Z

    .prologue
    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialFontColor()V

    .line 518
    const v4, 0x7f3c000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 519
    .local v21, "imgCampaignThumb":Landroid/widget/ImageView;
    const v4, 0x7f3c0010

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 520
    .local v20, "imgCampaignBig":Landroid/widget/ImageView;
    const v4, 0x7f3c0011

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 521
    .local v6, "imgCampaignSmart":Landroid/widget/ImageView;
    const v4, 0x7f3c0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/widget/TextView;

    .line 522
    .local v61, "tvHeaderCaption":Landroid/widget/TextView;
    const v4, 0x7f3c0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Landroid/widget/TextView;

    .line 523
    .local v55, "tvCampaignName":Landroid/widget/TextView;
    const v4, 0x7f3c0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v54

    check-cast v54, Landroid/widget/TextView;

    .line 524
    .local v54, "tvCampaignDesc":Landroid/widget/TextView;
    const v4, 0x7f3c001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v53

    check-cast v53, Landroid/widget/TextView;

    .line 525
    .local v53, "tvCampaignCondition":Landroid/widget/TextView;
    const v4, 0x7f3c0015

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v64

    check-cast v64, Landroid/widget/TextView;

    .line 526
    .local v64, "tvLike":Landroid/widget/TextView;
    const v4, 0x7f3c0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/ImageView;

    .line 529
    .local v31, "imgLike":Landroid/widget/ImageView;
    const v4, 0x7f3c0017

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 530
    .local v56, "tvComment":Landroid/widget/TextView;
    const v4, 0x7f3c0022

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/ImageView;

    .line 531
    .local v32, "imgRedeem":Landroid/widget/ImageView;
    const v4, 0x7f3c001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/RelativeLayout;

    .line 532
    .local v37, "layoutError":Landroid/widget/RelativeLayout;
    const v4, 0x7f3c001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/TextView;

    .line 533
    .local v58, "tvError":Landroid/widget/TextView;
    const v4, 0x7f3c0023

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v68

    check-cast v68, Landroid/widget/TextView;

    .line 534
    .local v68, "tvRedeem":Landroid/widget/TextView;
    const v4, 0x7f3c0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v69

    check-cast v69, Landroid/widget/TextView;

    .line 535
    .local v69, "tvRedeemWarning":Landroid/widget/TextView;
    const v4, 0x7f3c0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    .line 538
    .local v40, "layoutLike":Landroid/widget/RelativeLayout;
    const v4, 0x7f3c0014

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/RelativeLayout;

    .line 539
    .local v36, "layoutComment":Landroid/widget/RelativeLayout;
    const v4, 0x7f3c0024

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 541
    .local v22, "imgFacebookShare":Landroid/widget/ImageView;
    const v4, 0x7f3c002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 542
    .local v29, "imgInfoCampaignInfoSmart":Landroid/widget/ImageView;
    const v4, 0x7f3f0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v62

    check-cast v62, Landroid/widget/TextView;

    .line 543
    .local v62, "tvInfoAgency":Landroid/widget/TextView;
    const v4, 0x7f3f0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v63

    check-cast v63, Landroid/widget/TextView;

    .line 546
    .local v63, "tvInfoCampaignName":Landroid/widget/TextView;
    const v4, 0x7f3f0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v67

    check-cast v67, Landroid/widget/TextView;

    .line 547
    .local v67, "tvPeriod":Landroid/widget/TextView;
    const v4, 0x7f3f000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 549
    .local v57, "tvCondition":Landroid/widget/TextView;
    const v4, 0x7f3c002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/ImageView;

    .line 550
    .local v30, "imgInfoCampaignMapSmart":Landroid/widget/ImageView;
    const v4, 0x7f400001

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v65

    check-cast v65, Landroid/widget/TextView;

    .line 551
    .local v65, "tvMapAgency":Landroid/widget/TextView;
    const v4, 0x7f400002

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v66

    check-cast v66, Landroid/widget/TextView;

    .line 555
    .local v66, "tvMapCampaignName":Landroid/widget/TextView;
    const v4, 0x7f3c002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 556
    .local v28, "imgInfoCampaignGallerySmart":Landroid/widget/ImageView;
    const v4, 0x7f3e0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 557
    .local v23, "imgGallery01":Landroid/widget/ImageView;
    const v4, 0x7f3e0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 558
    .local v24, "imgGallery02":Landroid/widget/ImageView;
    const v4, 0x7f3e0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 559
    .local v25, "imgGallery03":Landroid/widget/ImageView;
    const v4, 0x7f3e000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 560
    .local v26, "imgGallery04":Landroid/widget/ImageView;
    const v4, 0x7f3e000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 561
    .local v27, "imgGallery05":Landroid/widget/ImageView;
    const v4, 0x7f3e0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v59

    check-cast v59, Landroid/widget/TextView;

    .line 562
    .local v59, "tvGalleryAgency":Landroid/widget/TextView;
    const v4, 0x7f3e0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v60

    check-cast v60, Landroid/widget/TextView;

    .line 580
    .local v60, "tvGalleryCampaignName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    const-string v7, "<br>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7be

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->PeopleLike:I

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Buzz:I

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-eqz v4, :cond_7cb

    .line 594
    const v4, 0x7f02031c

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    const v4, 0x7f02007b

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 601
    :goto_1ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7dd

    .line 602
    const v4, 0x7f090300

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :goto_209
    const/16 v34, 0x1

    .line 608
    .local v34, "isChangeCaption":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7ed

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v4, :cond_7ed

    .line 609
    const/16 v34, 0x1

    .line 616
    :goto_223
    if-eqz v34, :cond_246

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v4, :cond_246

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_246

    .line 633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    :cond_246
    if-eqz p1, :cond_80b

    .line 638
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    const/16 v4, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    const/16 v4, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    const/16 v4, 0x8

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 642
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 705
    :goto_26b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    if-eqz v4, :cond_2b6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b6

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "N/A"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    .line 707
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    const/16 v4, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    const/16 v4, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    const/16 v4, 0x8

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 711
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    :cond_2b6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "402705486466922"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b02

    .line 717
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 722
    :goto_2cd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v63

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    const v4, 0x7f3c000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    .line 726
    new-instance v18, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 727
    .local v18, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v46

    .line 728
    .local v46, "points":J
    const-wide/16 v12, 0x0

    cmp-long v4, v46, v12

    if-lez v4, :cond_318

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    :cond_318
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 733
    .local v17, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v70

    .line 735
    .local v70, "tz":Ljava/util/TimeZone;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->StartDate:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual/range {v70 .. v70}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    int-to-long v14, v9

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v51

    .line 744
    .local v51, "strStartDate":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "dd MMM yyyy"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v4, v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v7, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v9, v9, Lcom/samsung/privilege/bean/CampaignView;->ExpireDate:Ljava/lang/String;

    invoke-static {v9}, Lcom/samsung/privilege/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual/range {v70 .. v70}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    div-int/lit16 v9, v9, 0x3e8

    int-to-long v14, v9

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v7, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v45

    .line 754
    .local v45, "strExpireDate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 755
    .local v44, "period":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1109"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_477

    .line 756
    const-string v4, "Jan"

    const v7, 0x7f09036d

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 757
    const-string v4, "Feb"

    const v7, 0x7f09036e

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 758
    const-string v4, "Mar"

    const v7, 0x7f09036f

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 759
    const-string v4, "Apr"

    const v7, 0x7f090370

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 760
    const-string v4, "May"

    const v7, 0x7f090371

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 761
    const-string v4, "Jun"

    const v7, 0x7f090372

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 762
    const-string v4, "Jul"

    const v7, 0x7f090373

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 763
    const-string v4, "Aug"

    const v7, 0x7f090374

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 764
    const-string v4, "Sep"

    const v7, 0x7f090375

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 765
    const-string v4, "Oct"

    const v7, 0x7f090376

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 766
    const-string v4, "Nov"

    const v7, 0x7f090377

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 767
    const-string v4, "Dec"

    const v7, 0x7f090378

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 769
    :cond_477
    move-object/from16 v0, v67

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    const-string v7, "<br>"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b0b

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :goto_49b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    const/4 v4, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 803
    const/4 v4, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "api/agency/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->LocationAgencyId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/picture"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "img_campaign_agency":Ljava/lang/String;
    const-string v4, "https"

    const-string v7, "http"

    invoke-virtual {v5, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 807
    if-eqz v5, :cond_543

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_543

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    const v8, 0x7f0203a7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 809
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object v8, v5

    move-object/from16 v9, v29

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 810
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object v8, v5

    move-object/from16 v9, v30

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 811
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object v8, v5

    move-object/from16 v9, v28

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 814
    :cond_543
    sget-object v71, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 815
    .local v71, "urlPrefix":Ljava/lang/String;
    const-string v4, "/"

    move-object/from16 v0, v71

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55c

    .line 816
    const/4 v4, 0x0

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v71

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v71

    .line 818
    :cond_55c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-lt v4, v7, :cond_597

    .line 819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 820
    .local v8, "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object/from16 v9, v23

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 822
    .end local v8    # "img_gallery":Ljava/lang/String;
    :cond_597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_5d2

    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 824
    .restart local v8    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object/from16 v9, v24

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 826
    .end local v8    # "img_gallery":Ljava/lang/String;
    :cond_5d2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x3

    if-lt v4, v7, :cond_60d

    .line 827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 828
    .restart local v8    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object/from16 v9, v25

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 830
    .end local v8    # "img_gallery":Ljava/lang/String;
    :cond_60d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x4

    if-lt v4, v7, :cond_648

    .line 831
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 832
    .restart local v8    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object/from16 v9, v26

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 834
    .end local v8    # "img_gallery":Ljava/lang/String;
    :cond_648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x5

    if-lt v4, v7, :cond_683

    .line 835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 836
    .restart local v8    # "img_gallery":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v10, 0x0

    const v11, 0x7f0203a7

    const/4 v12, 0x0

    move-object/from16 v9, v27

    invoke-virtual/range {v7 .. v12}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 839
    .end local v8    # "img_gallery":Ljava/lang/String;
    :cond_683
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    if-nez v4, :cond_746

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v4}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v10

    .line 844
    .local v10, "img_campaign_thumbnail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v4}, Lcom/samsung/privilege/bean/CampaignView;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v33

    .line 846
    .local v33, "img_campaign_large":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x6

    if-lt v4, v7, :cond_6f2

    .line 847
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?type=thumbnail"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 848
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v71 .. v71}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/MarketGalleryView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/MarketGalleryView;->ImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "?type=large"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 851
    :cond_6f2
    const-string v4, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "img_campaign_thumbnail="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v4, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "img_campaign_large="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v12, 0x0

    const v13, 0x7f0203a7

    const/4 v14, 0x0

    move-object/from16 v11, v21

    invoke-virtual/range {v9 .. v14}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 855
    const/4 v4, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 856
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v14, 0x0

    const v15, 0x7f0203a7

    const/16 v16, 0x0

    move-object/from16 v12, v33

    move-object/from16 v13, v20

    invoke-virtual/range {v11 .. v16}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 857
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gIsLoadImaged:Z

    .line 860
    .end local v10    # "img_campaign_thumbnail":Ljava/lang/String;
    .end local v33    # "img_campaign_large":Ljava/lang/String;
    :cond_746
    const/high16 v4, 0x7f3f0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/RelativeLayout;

    .line 861
    .local v39, "layoutInfo":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 876
    const/high16 v4, 0x7f400000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/RelativeLayout;

    .line 877
    .local v41, "layoutMap":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 892
    const/high16 v4, 0x7f3e0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/RelativeLayout;

    .line 893
    .local v38, "layoutGallery":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 908
    const v4, 0x7f3c000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/RelativeLayout;

    .line 909
    .local v35, "layoutCenter":Landroid/widget/RelativeLayout;
    const v4, 0x7f3c000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ScrollView;

    .line 910
    .local v43, "layoutScrollView":Landroid/widget/ScrollView;
    const/high16 v4, 0x7f410000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/LinearLayout;

    .line 911
    .local v42, "layoutMenu":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 913
    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doInitialBranch()V

    .line 929
    return-void

    .line 587
    .end local v5    # "img_campaign_agency":Ljava/lang/String;
    .end local v17    # "cal":Ljava/util/Calendar;
    .end local v18    # "formatter":Ljava/text/DecimalFormat;
    .end local v34    # "isChangeCaption":Z
    .end local v35    # "layoutCenter":Landroid/widget/RelativeLayout;
    .end local v38    # "layoutGallery":Landroid/widget/RelativeLayout;
    .end local v39    # "layoutInfo":Landroid/widget/RelativeLayout;
    .end local v41    # "layoutMap":Landroid/widget/RelativeLayout;
    .end local v42    # "layoutMenu":Landroid/widget/LinearLayout;
    .end local v43    # "layoutScrollView":Landroid/widget/ScrollView;
    .end local v44    # "period":Ljava/lang/String;
    .end local v45    # "strExpireDate":Ljava/lang/String;
    .end local v46    # "points":J
    .end local v51    # "strStartDate":Ljava/lang/String;
    .end local v70    # "tz":Ljava/util/TimeZone;
    .end local v71    # "urlPrefix":Ljava/lang/String;
    :cond_7be
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Detail:Ljava/lang/String;

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b7

    .line 597
    :cond_7cb
    const v4, 0x7f02031d

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    const v4, 0x7f02007c

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1ed

    .line 604
    :cond_7dd
    const v4, 0x7f0902ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_209

    .line 610
    .restart local v34    # "isChangeCaption":Z
    :cond_7ed
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "8"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_807

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v4, v4, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-eqz v4, :cond_807

    .line 611
    const/16 v34, 0x0

    .line 612
    goto/16 :goto_223

    .line 613
    :cond_807
    const/16 v34, 0x1

    goto/16 :goto_223

    .line 644
    :cond_80b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v50

    .line 645
    .local v50, "strRedeemError":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_849

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->CategoryID:Ljava/lang/String;

    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_840

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ParentCategoryID:Ljava/lang/String;

    sget v7, Lcom/samsung/privilege/AppSetting;->CAT_PREMIUM_THAI:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_849

    .line 647
    :cond_840
    const v4, 0x7f09031a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 650
    :cond_849
    if-eqz v50, :cond_8b7

    const-string v4, ""

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b7

    .line 651
    const/16 v4, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    const/16 v4, 0x8

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 653
    const/16 v4, 0x8

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    move-object/from16 v0, v58

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    :goto_877
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    :try_start_87e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v7, "Gift Campaign Details"

    const-string v9, "View Campaign Detail"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v7, v9, v11, v12}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_8b2
    .catch Ljava/lang/Exception; {:try_start_87e .. :try_end_8b2} :catch_8b4

    goto/16 :goto_26b

    .line 700
    :catch_8b4
    move-exception v4

    goto/16 :goto_26b

    .line 657
    :cond_8b7
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    const/4 v4, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    const/4 v4, 0x0

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    const/16 v4, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v4, v12, v14

    if-lez v4, :cond_a4d

    .line 663
    new-instance v19, Ljava/text/DecimalFormat;

    const-string v4, "###,###,###.##"

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 664
    .local v19, "formatterHasDigi":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->PointPerUnit:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/privilege/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    .line 666
    .local v48, "strPoint":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f09036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 667
    .local v49, "strPointUnit":Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_937

    .line 668
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v7, 0x7f09036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 671
    :cond_937
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_94d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v4, :cond_97c

    .line 672
    :cond_94d
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 674
    :cond_97c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_9c8

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090301

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 677
    :cond_9c8
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090302

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090303

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 678
    .local v52, "strWarning":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 682
    .end local v19    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v48    # "strPoint":Ljava/lang/String;
    .end local v49    # "strPointUnit":Ljava/lang/String;
    .end local v52    # "strWarning":Ljava/lang/String;
    :cond_a4d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a63

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    if-nez v4, :cond_a93

    .line 683
    :cond_a63
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090310

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " 0 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f09036b

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 685
    :cond_a93
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v4, v4, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_aad

    .line 686
    const v4, 0x7f090301

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 688
    :cond_aad
    new-instance v4, Ljava/lang/StringBuilder;

    const v7, 0x7f090302

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget v7, v7, Lcom/samsung/privilege/bean/CampaignView;->MinutesValidAfterUsed:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090303

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v7, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 689
    .restart local v52    # "strWarning":Ljava/lang/String;
    move-object/from16 v0, v69

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_877

    .line 719
    .end local v50    # "strRedeemError":Ljava/lang/String;
    .end local v52    # "strWarning":Ljava/lang/String;
    :cond_b02
    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2cd

    .line 780
    .restart local v17    # "cal":Ljava/util/Calendar;
    .restart local v18    # "formatter":Ljava/text/DecimalFormat;
    .restart local v44    # "period":Ljava/lang/String;
    .restart local v45    # "strExpireDate":Ljava/lang/String;
    .restart local v46    # "points":J
    .restart local v51    # "strStartDate":Ljava/lang/String;
    .restart local v70    # "tz":Ljava/util/TimeZone;
    :cond_b0b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->Condition:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_49b
.end method

.method private initialParam()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    .line 362
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 363
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 364
    const-string v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 366
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 368
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    if-lez v1, :cond_63

    .line 369
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v1, :cond_4a

    .line 370
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 371
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    :cond_49
    :goto_49
    return-void

    .line 374
    :cond_4a
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 375
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49

    .line 378
    :cond_63
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 379
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    if-eqz v1, :cond_49

    .line 380
    invoke-direct {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialLayout(Z)V

    .line 382
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v1, v1, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/privilege/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getCampaign(ILcom/samsung/privilege/bean/NFCTag;)V

    .line 383
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_49
.end method

.method private isPlayingAnimation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2648
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

    .line 2660
    :cond_15
    :goto_15
    return v0

    .line 2652
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

    .line 2656
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

    .line 2660
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3121
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3123
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3124
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3125
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3126
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3147
    return-object v9
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2639
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2640
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2641
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2642
    return-object v0
.end method

.method private outToTopAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 972
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x40800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 973
    .local v0, "outToTop":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 974
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 975
    return-object v0
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 1396
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1428
    return-void
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 349
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 351
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/CampaignView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    .line 352
    const-string v0, "paramNFCTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 353
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    .line 354
    const-string v0, "paramFromList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    .line 356
    const-string v0, "doRedeeming"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 357
    const-string v0, "isContinueUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 359
    :cond_43
    return-void
.end method

.method private showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1431
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_44

    .line 1432
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1434
    .local v1, "dialogInfo":Landroid/app/Dialog;
    const v3, 0x7f0300dc

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1435
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1437
    const v3, 0x7f460003

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1438
    .local v2, "tvMessage":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1439
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1440
    const v3, 0x7f460004

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1442
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1444
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1451
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1454
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
    const/4 v4, 0x1

    .line 2113
    const-string v1, ""

    const v2, 0x7f09018d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 2116
    :try_start_10
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2117
    .local v10, "mMessageView":Landroid/widget/TextView;
    if-eqz v10, :cond_2d

    .line 2118
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2119
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_10f

    .line 2125
    .end local v10    # "mMessageView":Landroid/widget/TextView;
    :cond_2d
    :goto_2d
    if-eqz p1, :cond_10e

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 2126
    new-instance v9, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2127
    .local v9, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, "carrier":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/redeem?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&carrier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2133
    .local v12, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 2134
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 2135
    .local v8, "date":Ljava/util/Date;
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2136
    const-string v1, "REDEEM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2139
    .end local v8    # "date":Ljava/util/Date;
    :cond_f4
    new-instance v11, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v11}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2140
    .local v11, "params":Lcom/loopj/android/http/RequestParams;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 2141
    .local v6, "startTime":J
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V

    invoke-static {v12, v11, v1}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2143
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v6    # "startTime":J
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v11    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v12    # "url":Ljava/lang/String;
    :cond_10e
    return-void

    .line 2121
    :catch_10f
    move-exception v1

    goto/16 :goto_2d
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1289
    return-void
.end method

.method private smallToBig1Animation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 2625
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 2626
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2627
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2628
    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->finish()V

    .line 1293
    return-void
.end method

.method public doComment(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1296
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1297
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1298
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 1299
    return-void
.end method

.method public doGallery(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2505
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationGallery()V

    .line 2506
    return-void
.end method

.method public doGetDirections(Lcom/samsung/privilege/bean/PlaceNewDetail;)V
    .registers 11
    .param p1, "pCurrentPlaceNewDetail"    # Lcom/samsung/privilege/bean/PlaceNewDetail;

    .prologue
    .line 3699
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

    .line 3700
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

    .line 3702
    if-eqz p1, :cond_82

    .line 3705
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->latitude:F

    float-to-double v2, v6

    .line 3706
    .local v2, "latitude_daddr":D
    iget v6, p1, Lcom/samsung/privilege/bean/PlaceNewDetail;->longitude:F

    float-to-double v4, v6

    .line 3711
    .local v4, "longitude_daddr":D
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://maps.google.com/maps?daddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3712
    .local v1, "uri":Ljava/lang/String;
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uri="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3714
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "com.google.android.apps.maps"

    const-string v7, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3715
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3717
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Ljava/lang/String;
    .end local v2    # "latitude_daddr":D
    .end local v4    # "longitude_daddr":D
    :cond_82
    return-void
.end method

.method public doHome(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2493
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationFinish()V

    .line 2494
    return-void
.end method

.method public doInfo(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2497
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationInfo()V

    .line 2498
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1304
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1324
    return-void
.end method

.method public doLikeAnimation(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 2362
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2363
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v2, v2, Lcom/samsung/privilege/bean/CampaignView;->IsLike:Z

    if-nez v2, :cond_38

    .line 2364
    const v2, 0x7f3c0013

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2366
    .local v0, "layoutLike":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000d

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2367
    .local v1, "likeClickAnimation1":Landroid/view/animation/Animation;
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2368
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2369
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2371
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2372
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2489
    .end local v0    # "layoutLike":Landroid/widget/RelativeLayout;
    .end local v1    # "likeClickAnimation1":Landroid/view/animation/Animation;
    :goto_37
    return-void

    .line 2483
    :cond_38
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->processLikeAction()V

    .line 2484
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doLike(Landroid/view/View;)V

    goto :goto_37

    .line 2487
    :cond_40
    const v2, 0x7f090309

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_37
.end method

.method public doMap(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2501
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->PlayAnimationMap()V

    .line 2502
    return-void
.end method

.method public doMyPoint(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    .line 2509
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2510
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2511
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2512
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2513
    .local v7, "width":I
    int-to-float v8, v7

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterX:F

    .line 2514
    int-to-float v8, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCenterY:F

    .line 2516
    const/high16 v8, 0x7f3d0000

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2517
    .local v4, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v8, 0x7f3d0001

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2518
    .local v2, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v8, 0x7f3d0002

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2520
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v8, 0x7f3d0005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2521
    .local v6, "tvClose":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2522
    const-string v8, "Close"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2536
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2537
    const v8, 0x7f020357

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2546
    :goto_62
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailActivity$15;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2553
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2554
    .local v5, "smallToBig1":Landroid/view/animation/Animation;
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2555
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2556
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2557
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2558
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2560
    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;

    invoke-direct {v8, p0, v3, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2584
    return-void

    .line 2538
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

    .line 2539
    const v8, 0x7f020355

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2540
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1109"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2541
    const v8, 0x7f020356

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2543
    :cond_b7
    const v8, 0x7f020354

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62
.end method

.method public doMyPointClose(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2587
    const/high16 v4, 0x7f3d0000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2588
    .local v3, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v4, 0x7f3d0001

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2589
    .local v1, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v4, 0x7f3d0002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2591
    .local v2, "layoutButton":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->bigToSmallAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2592
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2593
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2594
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2595
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2597
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$17;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2622
    return-void
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 24
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1828
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v4, "Gift Campaign Details"

    const-string v5, "Click Get Privilege"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v20, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_455

    .line 1833
    :goto_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->IsConditionPass:Z

    if-nez v3, :cond_54

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    .line 1954
    :goto_53
    return-void

    .line 1838
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 1839
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBooking(Lcom/samsung/privilege/bean/CampaignView;)V

    goto :goto_53

    .line 1843
    :cond_6c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Delivered:Z

    if-eqz v3, :cond_124

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 1845
    :cond_ce
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1846
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09025d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f09025e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0900b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1852
    const v4, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailActivity$12;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1857
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1858
    .local v2, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_53

    .line 1863
    .end local v2    # "alert":Landroid/app/AlertDialog;
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_124
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    if-eqz v3, :cond_133

    .line 1864
    const-string v3, "campaign.detail"

    const-string v4, "if (doRedeeming == true) {"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    .line 1866
    :cond_133
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    .line 1867
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v17

    .line 1869
    .local v17, "strRedeemError":Ljava/lang/String;
    if-eqz v17, :cond_15a

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 1870
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    .line 1872
    :cond_15a
    new-instance v12, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v12, v3}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1874
    .local v12, "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    invoke-virtual {v12}, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->isConnectingToInternet()Z

    move-result v3

    if-nez v3, :cond_177

    .line 1875
    const-string v3, "No internet connection!"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    .line 1876
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_53

    .line 1878
    :cond_177
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 1880
    .local v18, "token":Ljava/lang/String;
    if-eqz v18, :cond_44c

    const-string v3, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44c

    .line 1882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    if-eqz v3, :cond_1bd

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->CustomInput:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1bd

    .line 1883
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/samsung/privilege/bean/CampaignView;Lcom/bitmapfun/util/ImageFetcher;Lcom/samsung/privilege/bean/NFCTag;)V

    .line 1884
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_53

    .line 1886
    :cond_1bd
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 1888
    new-instance v14, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1889
    .local v14, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1893
    .local v11, "carrier":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v4, v4, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/redeem?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&carrier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1894
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v3, :cond_28a

    .line 1895
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v3, :cond_32b

    .line 1896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&nfc=write_back"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1900
    :goto_229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-boolean v3, v3, Lcom/samsung/privilege/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v3, :cond_340

    .line 1901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&redeem_media=nfc_write_back"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1905
    :goto_244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    if-eqz v3, :cond_28a

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&location_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1907
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&info1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCTag;->objNFCResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v4, v4, Lcom/samsung/privilege/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1910
    :cond_28a
    const-string v3, "campaign.detail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(doBuy)url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_30d

    .line 1912
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 1913
    .local v13, "date":Ljava/util/Date;
    const-string v3, "REDEEM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<font color=blue>REDEEM_RQ{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1914
    const-string v3, "REDEEM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "</font><br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1917
    .end local v13    # "date":Ljava/util/Date;
    :cond_30d
    new-instance v16, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v16 .. v16}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1918
    .local v16, "params":Lcom/loopj/android/http/RequestParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_355

    .line 1919
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_53

    .line 1898
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_32b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&nfc=read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_229

    .line 1903
    :cond_340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&redeem_media=nfc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_244

    .line 1920
    .restart local v16    # "params":Lcom/loopj/android/http/RequestParams;
    :cond_355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ce

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->InterfaceDisplay:Ljava/lang/String;

    const-string v4, "api"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ce

    .line 1921
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PointType:Ljava/lang/String;

    const-string v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_390

    .line 1922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goGetPoint(Ljava/lang/String;Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_53

    .line 1924
    :cond_390
    const-string v3, ""

    const v4, 0x7f09018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1926
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1927
    .local v8, "startTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v0, v3, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    move-object/from16 v20, v0

    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_53

    .line 1929
    .end local v8    # "startTime":J
    :cond_3ce
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->InterfaceDisplay:Ljava/lang/String;

    const-string v4, "web"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f5

    .line 1930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->goBuyMarketPlace(Lcom/samsung/privilege/bean/CampaignView;)V

    goto/16 :goto_53

    .line 1932
    :cond_3f5
    const-string v3, ""

    const v4, 0x7f09018d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1935
    :try_start_40c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1936
    .local v15, "mMessageView":Landroid/widget/TextView;
    if-eqz v15, :cond_42d

    .line 1937
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1938
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_42d
    .catch Ljava/lang/Exception; {:try_start_40c .. :try_end_42d} :catch_453

    .line 1944
    .end local v15    # "mMessageView":Landroid/widget/TextView;
    :cond_42d
    :goto_42d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1945
    .restart local v8    # "startTime":J
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Lcom/samsung/privilege/bean/CampaignView;ZZJ)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1, v3}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_53

    .line 1949
    .end local v8    # "startTime":J
    .end local v11    # "carrier":Ljava/lang/String;
    .end local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v19    # "url":Ljava/lang/String;
    :cond_44c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    goto/16 :goto_53

    .line 1940
    .restart local v11    # "carrier":Ljava/lang/String;
    .restart local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .restart local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .restart local v19    # "url":Ljava/lang/String;
    :catch_453
    move-exception v3

    goto :goto_42d

    .line 1829
    .end local v11    # "carrier":Ljava/lang/String;
    .end local v12    # "cd":Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
    .end local v14    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v16    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v17    # "strRedeemError":Ljava/lang/String;
    .end local v18    # "token":Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    :catch_455
    move-exception v3

    goto/16 :goto_34
.end method

.method public doShare(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 1637
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1638
    const v4, 0x7f090339

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1724
    :cond_1b
    :goto_1b
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v5, "Gift Campaign Details"

    const-string v6, "Click Share"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1725
    return-void

    .line 1640
    :cond_4a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1641
    .local v1, "params":Landroid/os/Bundle;
    const-string v4, "app_id"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string v4, "to"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const-string v4, "name"

    const v5, 0x7f090312

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
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

    .line 1645
    const-string v4, "link"

    const-string v5, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v4, "caption"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    const-string v4, "description"

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    iget-object v5, v5, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 1654
    .local v2, "session":Lcom/facebook/Session;
    if-nez v2, :cond_b1

    .line 1655
    invoke-static {p0, v7}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    goto/16 :goto_1b

    .line 1658
    :cond_b1
    if-eqz v2, :cond_1b

    :try_start_b3
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1659
    new-instance v0, Lcom/facebook/widget/WebDialog$Builder;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    const-string v5, "feed"

    invoke-direct {v0, p0, v4, v5, v1}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1660
    .local v0, "builder":Lcom/facebook/widget/WebDialog$Builder;
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$10;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v4}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 1715
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v3

    .line 1716
    .local v3, "webDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v3}, Lcom/facebook/widget/WebDialog;->show()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_d3} :catch_d5

    goto/16 :goto_1b

    .line 1718
    .end local v0    # "builder":Lcom/facebook/widget/WebDialog$Builder;
    .end local v3    # "webDialog":Lcom/facebook/widget/WebDialog;
    :catch_d5
    move-exception v4

    goto/16 :goto_1b
.end method

.method public doShareNew(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1813
    return-void
.end method

.method public getLocationByGPS()V
    .registers 9

    .prologue
    .line 3249
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$25;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3258
    new-instance v0, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    .line 3261
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->canGetLocation()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 3262
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    .line 3263
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    .line 3265
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

    .line 3266
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

    .line 3267
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLat:D

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCurrentLon:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(ZDD)V

    .line 3269
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->stopUsingGPS()V

    .line 3298
    :goto_63
    return-void

    .line 3274
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gps:Lcom/samsung/privilege/newconcepts/utils/GPSTracker;

    invoke-virtual {v0}, Lcom/samsung/privilege/newconcepts/utils/GPSTracker;->showSettingsAlert()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_63

    .line 3276
    :catch_6a
    move-exception v6

    .line 3277
    .local v6, "e":Ljava/lang/Exception;
    const v0, 0x7f090320

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3278
    .local v7, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3279
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

    .line 3281
    :cond_9b
    invoke-direct {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V

    .line 3283
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$26;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3291
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    .line 3296
    const-wide/16 v2, 0x3e8

    .line 3291
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

    .line 933
    if-ne p2, v3, :cond_70

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I

    if-ne p1, v2, :cond_70

    .line 934
    const-string v2, "NextNFCTag"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    .line 935
    .local v0, "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v0, :cond_29

    .line 936
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Status"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 937
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 958
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_29
    :goto_29
    return-void

    .line 938
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

    .line 939
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v4, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 940
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

    .line 941
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_29

    .line 942
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

    .line 943
    invoke-static {v0, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto :goto_29

    .line 946
    .end local v0    # "objNextNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    :cond_70
    if-ne p2, v3, :cond_8d

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v2, :cond_8d

    .line 947
    const-string v2, "bzbs_return_url"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "return_url":Ljava/lang/String;
    if-eqz v1, :cond_29

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 949
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    .line 950
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->showRedeem(Ljava/lang/String;)V

    goto :goto_29

    .line 952
    .end local v1    # "return_url":Ljava/lang/String;
    :cond_8d
    if-ne p2, v3, :cond_93

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v2, :cond_29

    .line 954
    :cond_93
    if-ne p2, v3, :cond_29

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_WEBVIEW_BOOKING:I

    if-ne p1, v2, :cond_29

    .line 955
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    .line 956
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
    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    if-eqz p1, :cond_129

    .line 173
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_c
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->requestWindowFeature(I)Z

    .line 179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 186
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 191
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 194
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_gift"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 196
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 197
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 198
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenHeight:I

    .line 199
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenWidth:I

    .line 201
    iget v7, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenWidth:I

    .line 202
    .local v7, "width":I
    iget v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gScreenHeight:I

    .line 204
    .local v2, "height":I
    if-le v2, v7, :cond_132

    .end local v2    # "height":I
    :goto_73
    div-int/lit8 v5, v2, 0x2

    .line 205
    .local v5, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 206
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const v9, 0x7f0203a7

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 207
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 208
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 211
    const v8, 0x7f0300a7

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->setContentView(I)V

    .line 213
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;

    .line 214
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gFont:Landroid/graphics/Typeface;

    .line 216
    const v8, 0x7f0c0031

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 217
    .local v3, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "768830479847872"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_135

    .line 218
    const v8, 0x7f0202b8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    :goto_d5
    const v8, 0x7f3c0003

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 228
    .local v4, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 229
    const v8, 0x7f0202bc

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    :goto_ee
    const v8, 0x7f400007

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gPbLoadingMap:Landroid/widget/ProgressBar;

    .line 235
    const v8, 0x7f400008

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gTvLoadingMap:Landroid/widget/TextView;

    .line 236
    const v8, 0x7f400005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/privilege/control/PullToRefreshListView;

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;

    .line 237
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030124

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->footerListView:Landroid/view/View;

    .line 239
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialFont()V

    .line 240
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->initialParam()V

    .line 242
    if-eqz p1, :cond_128

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 249
    :cond_128
    return-void

    .line 175
    .end local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "imgFlag":Landroid/widget/ImageView;
    .end local v4    # "imgLogo":Landroid/widget/ImageView;
    .end local v5    # "longest":I
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "width":I
    :cond_129
    const-string v8, "buzzebees.market"

    const-string v9, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v8, v9}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .restart local v0    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v2    # "height":I
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "width":I
    :cond_132
    move v2, v7

    .line 204
    goto/16 :goto_73

    .line 219
    .end local v2    # "height":I
    .restart local v3    # "imgFlag":Landroid/widget/ImageView;
    .restart local v5    # "longest":I
    :cond_135
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1525635597652592"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14c

    .line 220
    const v8, 0x7f0202b7

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d5

    .line 221
    :cond_14c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "517155661760483"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_164

    .line 222
    const v8, 0x7f0202b9

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d5

    .line 224
    :cond_164
    const v8, 0x7f0202ba

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d5

    .line 231
    .restart local v4    # "imgLogo":Landroid/widget/ImageView;
    :cond_16c
    const v8, 0x7f0202bb

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_ee
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 320
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 323
    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 324
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 253
    const/4 v2, 0x4

    if-ne p1, v2, :cond_52

    .line 254
    const/high16 v2, 0x7f3d0000

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 255
    .local v0, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_17

    .line 256
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doMyPointClose(Landroid/view/View;)V

    .line 277
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :goto_16
    return v1

    .line 260
    .restart local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_17
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 261
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabInfo()V

    goto :goto_16

    .line 265
    :cond_29
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowMap:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 266
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabMap()V

    goto :goto_16

    .line 270
    :cond_3b
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->gStateShowGallery:Ljava/lang/String;

    const-string v3, "VISIBLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 271
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->HideTabGallery()V

    goto :goto_16

    .line 275
    :cond_4d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_16

    .line 277
    .end local v0    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_52
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_16
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 299
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 301
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 302
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 314
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 345
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 289
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 291
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V

    .line 292
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->GetProfileData()V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 294
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 329
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 333
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 334
    const-string v0, "paramNFCTag"

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    const-string v0, "paramCampaignID"

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string v0, "paramFromList"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramFromList:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    const-string v0, "doRedeeming"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->doRedeeming:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    const-string v0, "isContinueUrl"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity;->isContinueUrl:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 283
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 284
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 308
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method
