.class public Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketPlaceDetail2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforePurchasingListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$DoLikeListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDrawsListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostWinnerListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;,
        Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"


# instance fields
.field private RC_WEBVIEW_BUY_POINT:I

.field private RC_WEBVIEW_CUSTOMINPUT:I

.field private RC_WEBVIEW_SHOPPING_BASKET:I

.field private TAG:Ljava/lang/String;

.field private _fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

.field private _progressDialogDownload:Landroid/app/ProgressDialog;

.field private _progressDialogRetry:Landroid/app/ProgressDialog;

.field private _progressHandler:Landroid/os/Handler;

.field arrImg:[Ljava/lang/Integer;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private contentQT:Landroid/widget/RelativeLayout;

.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gCurrentDownloadImageIndex:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gDpi:I

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gIsShow:Z

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

.field private gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

.field private gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

.field private gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutPoints:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

.field private gMarketGalleryView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lic/buzzebeeslib/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field private gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTimerPager:Ljava/util/Timer;

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gTvInfoBuyPoint11:Landroid/widget/TextView;

.field private gTvInfoBuyPoint12:Landroid/widget/TextView;

.field private gTvInfoBuyPoint13:Landroid/widget/TextView;

.field private gTvInfoBuyPoint14:Landroid/widget/TextView;

.field private gTvInfoBuyPoint21:Landroid/widget/TextView;

.field private gTvInfoBuyPoint22:Landroid/widget/TextView;

.field private gTvInfoBuyPoint23:Landroid/widget/TextView;

.field private gTvInfoBuyPoint24:Landroid/widget/TextView;

.field private gTvInfoBuyPoint25:Landroid/widget/TextView;

.field private gTvInfoBuyPoint31:Landroid/widget/TextView;

.field private gTvInfoBuyPoint32:Landroid/widget/TextView;

.field private gTvInfoBuyPoint33:Landroid/widget/TextView;

.field private gTvInfoBuyPoint34:Landroid/widget/TextView;

.field private gTvInfoBuyPoint42:Landroid/widget/TextView;

.field private gTvInfoBuyPoint43:Landroid/widget/TextView;

.field private gTvInfoBuyPoint44:Landroid/widget/TextView;

.field private gTvline1:Landroid/widget/TextView;

.field private gTvline2:Landroid/widget/TextView;

.field private gTvline3:Landroid/widget/TextView;

.field private gTvline4:Landroid/widget/TextView;

.field private gincInfoBuyPoint:Landroid/view/View;

.field private imgInfoBuyPoint41:Landroid/widget/ImageView;

.field private isShowAllInfoBuyPoint:Z

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:I

.field private paramIsUsed:Z

.field private paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

.field private pbLoadingCampaign:Landroid/widget/ProgressBar;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 115
    const-class v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    .line 119
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 120
    const/16 v0, 0x15

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_BUY_POINT:I

    .line 121
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    .line 122
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_SHOPPING_BASKET:I

    .line 133
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatter:Ljava/text/NumberFormat;

    .line 134
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 142
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gSDK_INT:I

    .line 190
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isShowAllInfoBuyPoint:Z

    .line 200
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 2836
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 3565
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I

    .line 3566
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gIsShow:Z

    .line 114
    return-void
.end method

.method private IsAllLoadFromCache()Z
    .registers 6

    .prologue
    .line 3782
    const/4 v0, 0x0

    .line 3783
    .local v0, "blnNotFind":Z
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 3784
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_24

    .line 3793
    .end local v1    # "i":I
    :cond_20
    if-eqz v0, :cond_40

    .line 3794
    const/4 v3, 0x0

    .line 3796
    :goto_23
    return v3

    .line 3785
    .restart local v1    # "i":I
    :cond_24
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v2, v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 3786
    .local v2, "strUrl":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, v2}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 3789
    const/4 v0, 0x1

    .line 3784
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 3796
    .end local v1    # "i":I
    .end local v2    # "strUrl":Ljava/lang/String;
    :cond_40
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private IsHasAddress()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3086
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3087
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_50

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 3088
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3089
    .local v1, "uid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/profile/me?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3090
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IsHasAddress:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;

    invoke-direct {v3, p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetProfileDataListener;)V

    invoke-static {v2, v6, v3}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 3095
    .end local v1    # "uid":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/badge/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?type=large"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2919
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2921
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvBadge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2922
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2923
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2925
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 2926
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 2928
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$23;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2990
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$24;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3014
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3015
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3017
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 3018
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3019
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3020
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3022
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 3023
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 3024
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3025
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3026
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3027
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 2248
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogSentByPost()V

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 2125
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogDealsGet()V

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 2412
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V
    .registers 2

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 2811
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 3046
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3251
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogWinner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 1751
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDraws()V

    return-void
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 1326
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDealsGet()V

    return-void
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isShowAllInfoBuyPoint:Z

    return v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V
    .registers 2

    .prologue
    .line 190
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->isShowAllInfoBuyPoint:Z

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 3349
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showCustominput()V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V
    .registers 2

    .prologue
    .line 823
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2835
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 2835
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2836
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2837
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2838
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$46(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2839
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$47(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2840
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$48(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2841
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$49(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 2877
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 946
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V

    return-void
.end method

.method static synthetic access$50(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 2876
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$51(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 2877
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$52(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2881
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$53(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 2878
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$54(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 2880
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$55(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 2879
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$56(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 2879
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$57(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 2876
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$58(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 2917
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$59(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 2883
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 988
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V

    return-void
.end method

.method static synthetic access$60(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 3036
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$61(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/AsyncFileLoader;
    .registers 2

    .prologue
    .line 3561
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    return-object v0
.end method

.method static synthetic access$62(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 3562
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$63(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/io/File;
    .registers 2

    .prologue
    .line 3751
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$64(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3746
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$65(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 3900
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cancelLoad()V

    return-void
.end method

.method static synthetic access$66(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$67(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)I
    .registers 2

    .prologue
    .line 3565
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I

    return v0
.end method

.method static synthetic access$68(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 3812
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$69(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z
    .registers 2

    .prologue
    .line 3781
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsAllLoadFromCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V
    .registers 1

    .prologue
    .line 1001
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V

    return-void
.end method

.method static synthetic access$70(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Z
    .registers 2

    .prologue
    .line 3566
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gIsShow:Z

    return v0
.end method

.method static synthetic access$71(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Z)V
    .registers 2

    .prologue
    .line 3566
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gIsShow:Z

    return-void
.end method

.method static synthetic access$72(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/util/ConnectionDetector;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    return-object v0
.end method

.method static synthetic access$73(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V
    .registers 2

    .prologue
    .line 3565
    iput p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I

    return-void
.end method

.method static synthetic access$74(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3801
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoaderPIC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$75(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3740
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$76(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->contentQT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 2561
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private cancelLoad()V
    .registers 3

    .prologue
    .line 3901
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    if-eqz v0, :cond_a

    .line 3902
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->cancel(Z)Z

    .line 3904
    :cond_a
    return-void
.end method

.method private checkAddressBeforePurchasing(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 6
    .param p1, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v3, 0x1

    .line 3448
    const-string v1, ""

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 3450
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3451
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforePurchasingListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforePurchasingListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/Campaign;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 3454
    return-void
.end method

.method private checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 6
    .param p1, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v3, 0x1

    .line 4030
    const-string v1, ""

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 4032
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4033
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$CheckAddressBeforeRedeemListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/Campaign;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 4034
    return-void
.end method

.method private checkLogin()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 3909
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3910
    .local v2, "tokenBzBs":Ljava/lang/String;
    if-eqz v2, :cond_15

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3911
    const/4 v3, 0x1

    .line 3923
    :goto_14
    return v3

    .line 3913
    :cond_15
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3914
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_header:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3915
    sget v4, Lic/buzzebeeslib/R$string;->dialog_login_message:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "OK"

    new-instance v6, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$32;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$32;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3920
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3921
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_14
.end method

.method private doWatchAdd()V
    .registers 12

    .prologue
    const/16 v7, 0x9

    const/4 v10, 0x0

    .line 3571
    :try_start_3
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v5, :cond_13

    .line 3572
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    if-eqz v5, :cond_13

    .line 3573
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_16d

    .line 3591
    :cond_13
    :goto_13
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 3593
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3595
    .local v2, "lgFileSize":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_4f

    .line 3596
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3597
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3600
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_4f
    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;

    invoke-direct {v5, p0, v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$27;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;J)V

    iput-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;

    .line 3630
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a7

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_a7

    .line 3631
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    .line 3632
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3633
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 3636
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3637
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 3735
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "lgFileSize":J
    :goto_a6
    return-void

    .line 3639
    .restart local v2    # "lgFileSize":J
    :cond_a7
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 3640
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoader(Ljava/lang/String;)V

    .line 3641
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialog(I)V

    .line 3642
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3643
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a6

    .line 3645
    :cond_d0
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_a6

    .line 3653
    .end local v2    # "lgFileSize":J
    :cond_da
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_ee

    .line 3654
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3655
    .restart local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 3658
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_ee
    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$28;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    iput-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;

    .line 3709
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_162

    .line 3710
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsAllLoadFromCache()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 3711
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    .line 3712
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3713
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3714
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a6

    .line 3716
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_129
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_157

    .line 3717
    iput v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I

    .line 3718
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gCurrentDownloadImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 3719
    .local v4, "strUrl":Ljava/lang/String;
    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initFileLoaderPIC(Ljava/lang/String;)V

    .line 3720
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialog(I)V

    .line 3721
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 3722
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a6

    .line 3724
    .end local v4    # "strUrl":Ljava/lang/String;
    :cond_157
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 3729
    :cond_162
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 3578
    :catch_16d
    move-exception v5

    goto/16 :goto_13
.end method

.method private enableButtonUseXX(Z)V
    .registers 5
    .param p1, "isEnable"    # Z

    .prologue
    .line 3549
    sget v1, Lic/buzzebeeslib/R$id;->imgRedeem:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3551
    .local v0, "imgRedeem":Landroid/widget/ImageView;
    if-eqz p1, :cond_18

    .line 3552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3553
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 3558
    :goto_17
    return-void

    .line 3555
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3556
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use_gray:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_17
.end method

.method private getCampaign(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 615
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 616
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsHasAddress()V

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json&type=full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCampaign|url := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 621
    return-void
.end method

.method private getOutputFile()Ljava/io/File;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 3752
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 3756
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/AdVideo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3757
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 3758
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3760
    :cond_3a
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3761
    .local v0, "arrTemp":[Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v2, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    .line 3762
    .local v2, "file_name":Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_69

    .line 3763
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v0, v4

    .line 3765
    :cond_69
    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 3766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3769
    :cond_88
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3770
    .local v3, "outputFile":Ljava/io/File;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vdo|outputFile.getAbsolutePath() = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    .end local v0    # "arrTemp":[Ljava/lang/String;
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "file_name":Ljava/lang/String;
    .end local v3    # "outputFile":Ljava/io/File;
    :goto_a5
    return-object v3

    :cond_a6
    const/4 v3, 0x0

    goto :goto_a5
.end method

.method private getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p1, "strSrc"    # Ljava/lang/String;

    .prologue
    .line 3813
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 3817
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GalaxyGift"

    invoke-virtual {v3, v4, v5}, Lcom/bitmapfun/util/ImageFetcher;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3818
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    .line 3819
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3826
    :cond_25
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, p1}, Lcom/bitmapfun/util/ImageFetcher;->gethashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3827
    .local v1, "file_name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3828
    .local v2, "outputFile":Ljava/io/File;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pic|outputFile.getAbsolutePath() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "file_name":Ljava/lang/String;
    .end local v2    # "outputFile":Ljava/io/File;
    :goto_48
    return-object v2

    :cond_49
    const/4 v2, 0x0

    goto :goto_48
.end method

.method private getPathOutputFile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3747
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 3748
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private goBuyMarketPlace(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 8
    .param p1, "pCampain"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 2496
    if-eqz p1, :cond_ac

    .line 2497
    iget-object v3, p1, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 2501
    :try_start_10
    iget-object v3, p1, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_d3

    move-result-object v2

    .line 2504
    .local v2, "url":Ljava/lang/String;
    :try_start_16
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2505
    new-instance v0, Lic/buzzebeeslib/util/DeviceHelper;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2506
    .local v0, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lic/buzzebeeslib/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_d5

    move-result-object v2

    .line 2511
    .end local v0    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    :goto_37
    :try_start_37
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2512
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2514
    :cond_56
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 2515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2520
    :goto_83
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2527
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "goBuyMarketPlace|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2530
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2543
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 2517
    .restart local v2    # "url":Ljava/lang/String;
    :cond_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_d1} :catch_d3

    move-result-object v2

    goto :goto_83

    .line 2537
    .end local v2    # "url":Ljava/lang/String;
    :catch_d3
    move-exception v3

    goto :goto_ac

    .line 2507
    .restart local v2    # "url":Ljava/lang/String;
    :catch_d5
    move-exception v3

    goto/16 :goto_37
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 3030
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3031
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3032
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3033
    return-object v0
.end method

.method private initFileLoader(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 3741
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 3742
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 3743
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3744
    return-void
.end method

.method private initFileLoaderPIC(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 3802
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3803
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 3804
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3805
    return-void
.end method

.method private initialLayout()V
    .registers 14

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v7, 0x8

    .line 671
    sget v6, Lic/buzzebeeslib/R$id;->scrollMain:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 672
    .local v2, "scrollMain":Landroid/widget/ScrollView;
    invoke-virtual {v2, v7}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 677
    sget v6, Lic/buzzebeeslib/R$id;->tvDescription:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 678
    .local v4, "tvDescription":Landroid/widget/TextView;
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 682
    sget v6, Lic/buzzebeeslib/R$id;->tvCondition:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 683
    .local v3, "tvCondition":Landroid/widget/TextView;
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 687
    sget v6, Lic/buzzebeeslib/R$id;->tvInfo:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 688
    .local v5, "tvInfo":Landroid/widget/TextView;
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 691
    sget v6, Lic/buzzebeeslib/R$id;->pbLoadingCampaign:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 694
    sget v6, Lic/buzzebeeslib/R$id;->incInfoBuyPoint:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    .line 696
    sget v6, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint1:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    .line 697
    sget v6, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint2:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    .line 698
    sget v6, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint3:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    .line 699
    sget v6, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint4:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    .line 701
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint11:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint11:Landroid/widget/TextView;

    .line 702
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint12:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint12:Landroid/widget/TextView;

    .line 703
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint13:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    .line 704
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint14:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint14:Landroid/widget/TextView;

    .line 706
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint21:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint21:Landroid/widget/TextView;

    .line 707
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint22:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint22:Landroid/widget/TextView;

    .line 708
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint23:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    .line 709
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint24:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    .line 710
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint25:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint25:Landroid/widget/TextView;

    .line 712
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint31:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    .line 713
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint32:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    .line 714
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint33:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    .line 715
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint34:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    .line 717
    sget v6, Lic/buzzebeeslib/R$id;->imgInfoBuyPoint41:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    .line 718
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint42:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    .line 719
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint43:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    .line 720
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint44:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint44:Landroid/widget/TextView;

    .line 722
    sget v6, Lic/buzzebeeslib/R$id;->tvline1:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;

    .line 723
    sget v6, Lic/buzzebeeslib/R$id;->tvline2:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;

    .line 724
    sget v6, Lic/buzzebeeslib/R$id;->tvline3:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;

    .line 725
    sget v6, Lic/buzzebeeslib/R$id;->tvline4:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;

    .line 727
    sget v6, Lic/buzzebeeslib/R$id;->layoutRedeem:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 728
    .local v1, "layoutRedeem":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 730
    sget v6, Lic/buzzebeeslib/R$id;->layoutConditionAlert:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 731
    .local v0, "layoutConditionAlert":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 733
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 735
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 736
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 737
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 738
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint12:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 763
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 764
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint14:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 765
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint22:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 766
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 767
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 768
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint25:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 769
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 770
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 771
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 772
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 773
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 774
    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint44:Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 799
    sget v6, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v11, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 800
    sget v6, Lic/buzzebeeslib/R$id;->tvToolShare:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 801
    sget v6, Lic/buzzebeeslib/R$id;->tvToolMap:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 802
    sget v6, Lic/buzzebeeslib/R$id;->tvToolLike:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 803
    sget v6, Lic/buzzebeeslib/R$id;->tvToolComment:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 804
    sget v6, Lic/buzzebeeslib/R$id;->tvCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 805
    sget v6, Lic/buzzebeeslib/R$id;->tvName:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 806
    sget v6, Lic/buzzebeeslib/R$id;->tvType:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v6, v7, v8, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 807
    sget v6, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v12, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 808
    sget v6, Lic/buzzebeeslib/R$id;->tvPrice:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 809
    sget v6, Lic/buzzebeeslib/R$id;->tvPointCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v12, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 810
    sget v6, Lic/buzzebeeslib/R$id;->tvPoint:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 811
    sget v6, Lic/buzzebeeslib/R$id;->tvTimeCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v12, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 812
    sget v6, Lic/buzzebeeslib/R$id;->tvTime:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 813
    sget v6, Lic/buzzebeeslib/R$id;->tvDescriptionCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v11, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 814
    sget v6, Lic/buzzebeeslib/R$id;->tvDescription:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 815
    sget v6, Lic/buzzebeeslib/R$id;->tvConditionCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v11, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 816
    sget v6, Lic/buzzebeeslib/R$id;->tvCondition:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 817
    sget v6, Lic/buzzebeeslib/R$id;->tvInfoCaption:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v11, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 818
    sget v6, Lic/buzzebeeslib/R$id;->tvInfo:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v10}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 819
    sget v6, Lic/buzzebeeslib/R$id;->tvRedeemConditionAlert:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 820
    sget v6, Lic/buzzebeeslib/R$id;->tvRedeem:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v11, v9}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;II)V

    .line 821
    return-void
.end method

.method private initialParam()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 606
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    .line 607
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 610
    const-string v1, "purchase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Purchasing;

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    .line 611
    const-string v1, "purchase_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramIsUsed:Z

    .line 612
    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 5
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 208
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 209
    sget-object v0, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v0}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    .line 217
    :cond_15
    return-void
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3037
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3038
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3039
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3040
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 2887
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 2888
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 2889
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$22;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2915
    :cond_f
    return-void
.end method

.method private playPoint(I)V
    .registers 3
    .param p1, "points"    # I

    .prologue
    .line 2844
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_f

    .line 2845
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 2846
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$21;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2869
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 2823
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 2824
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 2825
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 2831
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 2828
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 3047
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$25;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3082
    return-void
.end method

.method private qtMarketBzbs()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x41200000

    const/high16 v10, 0x40400000

    .line 4105
    sget v7, Lic/buzzebeeslib/R$id;->contentQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->contentQT:Landroid/widget/RelativeLayout;

    .line 4106
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->contentQT:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4107
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->contentQT:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4109
    sget v7, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 4110
    .local v3, "linCircle":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4111
    .local v6, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v8

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v9

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->GetPixelFromDips(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4112
    const/4 v4, 0x4

    .line 4113
    .local v4, "numPage":I
    new-array v7, v4, [Ljava/lang/Integer;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->arrImg:[Ljava/lang/Integer;

    .line 4114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    const/4 v7, 0x4

    if-lt v1, v7, :cond_78

    .line 4119
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Landroid/widget/ImageView;

    .line 4120
    .local v2, "imgCircle":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    :goto_53
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-lt v1, v7, :cond_a2

    .line 4131
    sget v7, Lic/buzzebeeslib/R$id;->vpQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 4132
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 4133
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;[Ljava/lang/Integer;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 4135
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$35;

    invoke-direct {v7, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$35;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;[Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 4163
    return-void

    .line 4115
    .end local v2    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_78
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "qt_bzbs"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4116
    .local v0, "ResID":I
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 4114
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 4121
    .end local v0    # "ResID":I
    .restart local v2    # "imgCircle":[Landroid/widget/ImageView;
    :cond_a2
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v2, v1

    .line 4122
    aget-object v7, v2, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4123
    if-nez v1, :cond_c3

    .line 4124
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4128
    :goto_bb
    aget-object v7, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4120
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 4126
    :cond_c3
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bb
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 581
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 583
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    .line 584
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 587
    const-string v0, "gMarketGalleryView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V

    .line 590
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V

    .line 591
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V

    .line 592
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V

    .line 594
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    if-lez v0, :cond_42

    .line 595
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    .line 602
    :cond_41
    :goto_41
    return-void

    .line 597
    :cond_42
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v0, :cond_41

    .line 598
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    goto :goto_41
.end method

.method private setUI_Campaign(Z)V
    .registers 28
    .param p1, "isFromServer"    # Z

    .prologue
    .line 824
    sget v20, Lic/buzzebeeslib/R$id;->ivToolLike:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 825
    .local v2, "ivToolLike":Landroid/widget/ImageView;
    sget v20, Lic/buzzebeeslib/R$id;->tvToolLike:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 826
    .local v18, "tvToolLike":Landroid/widget/TextView;
    sget v20, Lic/buzzebeeslib/R$id;->tvToolComment:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 827
    .local v17, "tvToolComment":Landroid/widget/TextView;
    sget v20, Lic/buzzebeeslib/R$id;->layoutConditionAlert:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 828
    .local v3, "layoutConditionAlert":Landroid/widget/RelativeLayout;
    sget v20, Lic/buzzebeeslib/R$id;->tvRedeemConditionAlert:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 829
    .local v15, "tvRedeemConditionAlert":Landroid/widget/TextView;
    sget v20, Lic/buzzebeeslib/R$id;->layoutRedeem:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 831
    .local v4, "layoutRedeem":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    move/from16 v20, v0

    if-eqz v20, :cond_35f

    .line 832
    sget v20, Lic/buzzebeeslib/R$drawable;->bz_tool_like:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 836
    :goto_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lic/buzzebeeslib/bean/Campaign;->Buzz:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Pager()V

    .line 841
    if-eqz p1, :cond_3fa

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_36e

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_36e

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 845
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 875
    :goto_e2
    :try_start_e2
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v20, v0

    const-string v21, "BZB Campaign Details"

    invoke-virtual/range {v20 .. v21}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    move-object/from16 v20, v0

    const-string v21, "BZB Campaign Details"

    const-string v22, "View Campaign"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const-wide/16 v24, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v20 .. v24}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_12f} :catch_488

    .line 886
    :goto_12f
    sget v20, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 887
    .local v10, "tvPageHeader":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    sget v20, Lic/buzzebeeslib/R$id;->tvName:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 890
    .local v9, "tvName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    sget v20, Lic/buzzebeeslib/R$id;->tvDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 893
    .local v8, "tvDescription":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    sget v20, Lic/buzzebeeslib/R$id;->tvType:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 899
    .local v19, "tvType":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_40e

    .line 900
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 906
    :goto_1b1
    sget v20, Lic/buzzebeeslib/R$id;->tvPoint:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 907
    .local v11, "tvPoint":Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "0"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 908
    .local v6, "point_per_unit":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    sget v20, Lic/buzzebeeslib/R$id;->tvPointCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 911
    .local v12, "tvPointCaption":Landroid/widget/TextView;
    const-wide/high16 v20, 0x3ff0000000000000L

    cmpg-double v20, v6, v20

    if-gtz v20, :cond_44f

    .line 912
    sget v20, Lic/buzzebeeslib/R$string;->market_point:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    :goto_212
    sget v20, Lic/buzzebeeslib/R$id;->tvPriceFull:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 918
    .local v14, "tvPriceFull":Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->OriginalPrice:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    invoke-virtual {v14}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v20

    or-int/lit8 v20, v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 921
    sget v20, Lic/buzzebeeslib/R$id;->tvPrice:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 922
    .local v13, "tvPrice":Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->mk_detail_thb:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    sget v20, Lic/buzzebeeslib/R$id;->tvTime:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 925
    .local v16, "tvTime":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-lez v20, :cond_460

    .line 926
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Lic/buzzebeeslib/R$string;->market_days:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    const-string v20, "#070707"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 933
    :goto_318
    sget v20, Lic/buzzebeeslib/R$id;->tvCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 934
    .local v5, "tvCaption":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_478

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_478

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    :goto_35e
    return-void

    .line 834
    .end local v5    # "tvCaption":Landroid/widget/TextView;
    .end local v6    # "point_per_unit":D
    .end local v8    # "tvDescription":Landroid/widget/TextView;
    .end local v9    # "tvName":Landroid/widget/TextView;
    .end local v10    # "tvPageHeader":Landroid/widget/TextView;
    .end local v11    # "tvPoint":Landroid/widget/TextView;
    .end local v12    # "tvPointCaption":Landroid/widget/TextView;
    .end local v13    # "tvPrice":Landroid/widget/TextView;
    .end local v14    # "tvPriceFull":Landroid/widget/TextView;
    .end local v16    # "tvTime":Landroid/widget/TextView;
    .end local v19    # "tvType":Landroid/widget/TextView;
    :cond_35f
    sget v20, Lic/buzzebeeslib/R$drawable;->bz_tool_like_gray:I

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v2, v0, v1}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_63

    .line 848
    :cond_36e
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 851
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsRequirePoints:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3b5

    .line 853
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/LibUserLogin;->Get_can_buy_point(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3a8

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e2

    .line 856
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e2

    .line 859
    :cond_3b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "2"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3ed

    .line 860
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lic/buzzebeeslib/LibUserLogin;->Get_can_buy_point(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_3e0

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e2

    .line 863
    :cond_3e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e2

    .line 866
    :cond_3ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e2

    .line 882
    :cond_3fa
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_12f

    .line 902
    .restart local v8    # "tvDescription":Landroid/widget/TextView;
    .restart local v9    # "tvName":Landroid/widget/TextView;
    .restart local v10    # "tvPageHeader":Landroid/widget/TextView;
    .restart local v19    # "tvType":Landroid/widget/TextView;
    :cond_40e
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    new-instance v20, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatter:Ljava/text/NumberFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const/16 v24, 0x5

    invoke-static/range {v22 .. v24}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b1

    .line 914
    .restart local v6    # "point_per_unit":D
    .restart local v11    # "tvPoint":Landroid/widget/TextView;
    .restart local v12    # "tvPointCaption":Landroid/widget/TextView;
    :cond_44f
    sget v20, Lic/buzzebeeslib/R$string;->market_points:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_212

    .line 929
    .restart local v13    # "tvPrice":Landroid/widget/TextView;
    .restart local v14    # "tvPriceFull":Landroid/widget/TextView;
    .restart local v16    # "tvTime":Landroid/widget/TextView;
    :cond_460
    const-string v20, "Time Over"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    const-string v20, "#ff0000"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_318

    .line 938
    .restart local v5    # "tvCaption":Landroid/widget/TextView;
    :cond_478
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 939
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_35e

    .line 877
    .end local v5    # "tvCaption":Landroid/widget/TextView;
    .end local v6    # "point_per_unit":D
    .end local v8    # "tvDescription":Landroid/widget/TextView;
    .end local v9    # "tvName":Landroid/widget/TextView;
    .end local v10    # "tvPageHeader":Landroid/widget/TextView;
    .end local v11    # "tvPoint":Landroid/widget/TextView;
    .end local v12    # "tvPointCaption":Landroid/widget/TextView;
    .end local v13    # "tvPrice":Landroid/widget/TextView;
    .end local v14    # "tvPriceFull":Landroid/widget/TextView;
    .end local v16    # "tvTime":Landroid/widget/TextView;
    .end local v19    # "tvType":Landroid/widget/TextView;
    :catch_488
    move-exception v20

    goto/16 :goto_12f
.end method

.method private setUI_Condition()V
    .registers 14

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x8

    const/4 v12, 0x0

    .line 1002
    sget v7, Lic/buzzebeeslib/R$id;->tvCondition:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1003
    .local v5, "tvCondition":Landroid/widget/TextView;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    if-eqz v7, :cond_13d

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13d

    .line 1004
    const-string v7, " "

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :goto_23
    sget v7, Lic/buzzebeeslib/R$id;->layoutRedeem:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1014
    .local v2, "layoutRedeem":Landroid/widget/LinearLayout;
    sget v7, Lic/buzzebeeslib/R$id;->tvRedeem:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1016
    .local v6, "tvRedeem":Landroid/widget/TextView;
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v7, v7, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v7, :cond_169

    .line 1017
    sget v7, Lic/buzzebeeslib/R$drawable;->bz_style_button_redeem:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1028
    :goto_3e
    sget v7, Lic/buzzebeeslib/R$id;->ivBuyBasket:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1029
    .local v0, "ivBuyBasket":Landroid/widget/ImageView;
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_170

    .line 1031
    sget v7, Lic/buzzebeeslib/R$string;->mk_detail_cmd_draws:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    :cond_5e
    :goto_5e
    sget v7, Lic/buzzebeeslib/R$id;->layoutButtonBasket:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 1046
    .local v1, "layoutButtonBasket":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetIsShowShoppingBasket(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1fe

    .line 1047
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "6"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e2

    .line 1048
    :cond_88
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1061
    :goto_8b
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    if-eqz v7, :cond_a4

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a4

    .line 1062
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    :cond_a4
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v7, v7, Lic/buzzebeeslib/bean/Campaign;->IsRequirePoints:Z

    if-eqz v7, :cond_3ee

    .line 1071
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_203

    .line 1073
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v9, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v10, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1083
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v8, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$4;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1305
    :cond_131
    :goto_131
    sget v7, Lic/buzzebeeslib/R$id;->scrollMain:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    .line 1306
    .local v3, "scrollMain":Landroid/widget/ScrollView;
    invoke-virtual {v3, v12}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1307
    return-void

    .line 1006
    .end local v0    # "ivBuyBasket":Landroid/widget/ImageView;
    .end local v1    # "layoutButtonBasket":Landroid/widget/RelativeLayout;
    .end local v2    # "layoutRedeem":Landroid/widget/LinearLayout;
    .end local v3    # "scrollMain":Landroid/widget/ScrollView;
    .end local v6    # "tvRedeem":Landroid/widget/TextView;
    :cond_13d
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    if-eqz v7, :cond_160

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "<br"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_160

    .line 1007
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1009
    :cond_160
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1019
    .restart local v2    # "layoutRedeem":Landroid/widget/LinearLayout;
    .restart local v6    # "tvRedeem":Landroid/widget/TextView;
    :cond_169
    sget v7, Lic/buzzebeeslib/R$drawable;->bz_style_button_redeem_down:I

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3e

    .line 1032
    .restart local v0    # "ivBuyBasket":Landroid/widget/ImageView;
    :cond_170
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_187

    .line 1033
    sget v7, Lic/buzzebeeslib/R$string;->mk_detail_cmd_free:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e

    .line 1034
    :cond_187
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19e

    .line 1035
    sget v7, Lic/buzzebeeslib/R$string;->mk_detail_cmd_get:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e

    .line 1036
    :cond_19e
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 1037
    sget v7, Lic/buzzebeeslib/R$string;->mk_detail_cmd_buy:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5e

    .line 1039
    :cond_1b8
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cf

    .line 1040
    sget v7, Lic/buzzebeeslib/R$string;->campaign_detail_ad_botton_post_watchad:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e

    .line 1041
    :cond_1cf
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 1042
    const-string v7, "Subscribe"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5e

    .line 1050
    .restart local v1    # "layoutButtonBasket":Landroid/widget/RelativeLayout;
    :cond_1e2
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1051
    .local v4, "tokenBzBs":Ljava/lang/String;
    if-eqz v4, :cond_1f9

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f9

    .line 1052
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_8b

    .line 1054
    :cond_1f9
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_8b

    .line 1058
    .end local v4    # "tokenBzBs":Ljava/lang/String;
    :cond_1fe
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_8b

    .line 1119
    :cond_203
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29f

    .line 1121
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v9, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v10, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1133
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v8, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$5;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$5;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_131

    .line 1169
    :cond_29f
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_352

    .line 1171
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v9, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v10, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_3:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_4:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1183
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1184
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1185
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1186
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v8, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$6;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$6;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_131

    .line 1229
    :cond_352
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 1231
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v9, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v10, v10, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_1:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v8, v9}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1243
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v8, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$7;

    invoke-direct {v8, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$7;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_131

    .line 1283
    :cond_3ee
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 1285
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1286
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1287
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1288
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1290
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline1:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1291
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline2:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline3:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvline4:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1296
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_3:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1301
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    sget v8, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_4:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_131
.end method

.method private setUI_Description()V
    .registers 4

    .prologue
    .line 989
    sget v1, Lic/buzzebeeslib/R$id;->tvDescription:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 990
    .local v0, "tvDescription":Landroid/widget/TextView;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 991
    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    :goto_1f
    return-void

    .line 993
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 994
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 996
    :cond_42
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f
.end method

.method private setUI_Info()V
    .registers 7

    .prologue
    .line 947
    sget v4, Lic/buzzebeeslib/R$id;->tvInfo:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 948
    .local v2, "tvInfo":Landroid/widget/TextView;
    const-string v1, ""

    .line 950
    .local v1, "strHtml":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_label_delivery:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 951
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_delivery_by_post:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 957
    :goto_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_label_tel:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 958
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    if-eqz v4, :cond_221

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_221

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 964
    :goto_b2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_label_location:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 965
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Location:Ljava/lang/String;

    if-eqz v4, :cond_236

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Location:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_236

    .line 966
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyCity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "strAddress":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    .end local v0    # "strAddress":Ljava/lang/String;
    :goto_131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_label_website:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 973
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    if-eqz v4, :cond_24b

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24b

    .line 974
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " <a href=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a><br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 979
    :goto_195
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    if-eqz v4, :cond_1f4

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f4

    .line 980
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "<b>FanPage:</b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 981
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://www.facebook.com/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " <a href=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a><br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 985
    .end local v3    # "url":Ljava/lang/String;
    :cond_1f4
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    return-void

    .line 954
    :cond_1fc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_delivery_at_shop:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5c

    .line 961
    :cond_221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " <br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b2

    .line 969
    :cond_236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " <br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_131

    .line 976
    :cond_24b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " <br>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_195
.end method

.method private setUI_Pager()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x1388

    .line 4245
    sget v0, Lic/buzzebeeslib/R$id;->pagerImageCampaign:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    .line 4247
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v0, :cond_74

    .line 4248
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_74

    .line 4249
    new-instance v6, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v6, p0, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 4250
    .local v6, "adapter":Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 4252
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$36;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$36;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4265
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$37;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$37;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4278
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$38;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$38;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4296
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$39;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$39;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 4319
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTimerPager:Ljava/util/Timer;

    if-nez v0, :cond_74

    .line 4320
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTimerPager:Ljava/util/Timer;

    .line 4321
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    .line 4322
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gTimerPager:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 4326
    .end local v1    # "taskSlideImage":Ljava/util/TimerTask;
    .end local v6    # "adapter":Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$ImageAdapter;
    :cond_74
    return-void
.end method

.method private showCustominput()V
    .registers 7

    .prologue
    .line 3352
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v3, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 3354
    .local v2, "url":Ljava/lang/String;
    const-string v3, "{campaign_id}"

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3355
    const-string v3, "{token}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3356
    const-string v3, "{return_url}"

    const-string v4, "bzbs_return_url"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3357
    const-string v3, "{cancel_url}"

    const-string v4, "bzbs_cancel_url"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3358
    const-string v3, "{locale}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3359
    const-string v3, "{user_id}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3361
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showCustominput|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3363
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3365
    .local v1, "intent":Landroid/content/Intent;
    :try_start_6b
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    .line 3366
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3368
    :cond_8a
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 3369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_f0

    move-result-object v2

    .line 3377
    :goto_b1
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showCustominput|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3379
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3380
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_CUSTOMINPUT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3382
    return-void

    .line 3371
    :cond_d0
    :try_start_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ee} :catch_f0

    move-result-object v2

    goto :goto_b1

    .line 3373
    :catch_f0
    move-exception v0

    .line 3374
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception|showRedeem := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1
.end method

.method private showDialogBuyPoint()V
    .registers 15

    .prologue
    const-wide v6, 0x3feccccccccccccdL

    const-wide v12, 0x3fe6666666666666L

    const/16 v10, 0x11

    const/4 v9, 0x0

    const/4 v8, -0x2

    .line 1627
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_13d

    .line 1629
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1631
    .local v2, "dialogSerial":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1632
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dialog_new_show_buy_point:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1633
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1672
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-eq v4, v5, :cond_43

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_13e

    .line 1673
    :cond_43
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1674
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v12

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1675
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1676
    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 1677
    invoke-virtual {v3, v10}, Landroid/view/Window;->setGravity(I)V

    .line 1698
    :goto_76
    sget v4, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1699
    .local v1, "btnOK":Landroid/widget/Button;
    sget v4, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1704
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1705
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1717
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet1:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1718
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet2:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1719
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet3:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1720
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet4:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1721
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet5:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1722
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet6:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1723
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet7:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1724
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet8:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1725
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet9:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1727
    sget-object v4, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v5, "com.ptt.BlueCard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    .line 1728
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1731
    :cond_12a
    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$10;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$10;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1738
    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$11;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$11;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1745
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1749
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "btnOK":Landroid/widget/Button;
    .end local v2    # "dialogSerial":Landroid/app/Dialog;
    .end local v3    # "window":Landroid/view/Window;
    :cond_13d
    return-void

    .line 1678
    .restart local v2    # "dialogSerial":Landroid/app/Dialog;
    :cond_13e
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    if-ne v4, v5, :cond_182

    .line 1679
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1680
    .restart local v3    # "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v12

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1681
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1682
    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 1683
    invoke-virtual {v3, v10}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_76

    .line 1684
    .end local v3    # "window":Landroid/view/Window;
    :cond_182
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c4

    .line 1685
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1686
    .restart local v3    # "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1687
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1688
    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 1689
    invoke-virtual {v3, v10}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_76

    .line 1691
    .end local v3    # "window":Landroid/view/Window;
    :cond_1c4
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 1692
    .restart local v3    # "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v12

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 1693
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1694
    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 1695
    invoke-virtual {v3, v10}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_76
.end method

.method private showDialogConditionDealsGet()V
    .registers 21

    .prologue
    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 1330
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1332
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1333
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_condition:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1334
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bb

    .line 1374
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1375
    .local v17, "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1376
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1377
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1378
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1401
    :goto_83
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1402
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1403
    .local v13, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1404
    .local v14, "tvCondition1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1405
    .local v15, "tvCondition3":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1406
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1407
    .local v9, "btnOK":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1408
    .local v8, "btnClose":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1409
    .local v16, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 1411
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1431
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1432
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1433
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1436
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v2, :cond_15f

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15f

    .line 1437
    sget v2, Lic/buzzebeeslib/R$string;->dialog_new_serial_label_button_registration:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1442
    :cond_15f
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b3

    .line 1447
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    :goto_1a3
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$8;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$9;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1505
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 1509
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnOK":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v14    # "tvCondition1":Landroid/widget/TextView;
    .end local v15    # "tvCondition3":Landroid/widget/TextView;
    .end local v16    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v17    # "window":Landroid/view/Window;
    :cond_1ba
    return-void

    .line 1379
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_1bb
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_217

    .line 1380
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1381
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1382
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1383
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1384
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1385
    .end local v17    # "window":Landroid/view/Window;
    :cond_217
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_266

    .line 1386
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1387
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1388
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1389
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1390
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1392
    .end local v17    # "window":Landroid/view/Window;
    :cond_266
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1393
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1394
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1395
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1396
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1449
    .restart local v4    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v8    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "btnOK":Landroid/widget/Button;
    .restart local v10    # "currentDateandTime":Ljava/lang/String;
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v14    # "tvCondition1":Landroid/widget/TextView;
    .restart local v15    # "tvCondition3":Landroid/widget/TextView;
    .restart local v16    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_2b3
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a3
.end method

.method private showDialogConditionDraws()V
    .registers 21

    .prologue
    .line 1753
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_199

    .line 1755
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1757
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1758
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_condition:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1759
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19a

    .line 1799
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1800
    .local v17, "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1801
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1802
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1803
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 1825
    :goto_83
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1826
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1827
    .local v13, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1828
    .local v16, "tvShowTimeRedeem":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1829
    .local v14, "tvCondition1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1830
    .local v15, "tvCondition3":Landroid/widget/TextView;
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1831
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 1832
    .local v9, "btnOK":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 1844
    .local v8, "btnClose":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1845
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1846
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1847
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 1853
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1854
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1855
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1861
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1862
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 1863
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1870
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1871
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_292

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1881
    :goto_182
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$12;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1892
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$13;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$13;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1911
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 1915
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnOK":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v14    # "tvCondition1":Landroid/widget/TextView;
    .end local v15    # "tvCondition3":Landroid/widget/TextView;
    .end local v16    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v17    # "window":Landroid/view/Window;
    :cond_199
    return-void

    .line 1804
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_19a
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f6

    .line 1805
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1806
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1807
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1808
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1809
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1810
    .end local v17    # "window":Landroid/view/Window;
    :cond_1f6
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_245

    .line 1811
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1812
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1813
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1814
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1815
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1817
    .end local v17    # "window":Landroid/view/Window;
    :cond_245
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 1818
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1819
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1820
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 1821
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 1876
    .restart local v4    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v8    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "btnOK":Landroid/widget/Button;
    .restart local v10    # "currentDateandTime":Ljava/lang/String;
    .restart local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v13    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v14    # "tvCondition1":Landroid/widget/TextView;
    .restart local v15    # "tvCondition3":Landroid/widget/TextView;
    .restart local v16    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_292
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_182
.end method

.method private showDialogDealsGet()V
    .registers 21

    .prologue
    .line 2126
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 2127
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2128
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2129
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_deals_get:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2130
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2132
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1bc

    .line 2133
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2134
    .local v17, "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2135
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2136
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2137
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 2162
    :goto_83
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2163
    .local v15, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2164
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2165
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2168
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2169
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2171
    .local v14, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2172
    .local v9, "btnUsed":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2179
    .local v8, "btnClose":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2180
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v15, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v9, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2193
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2194
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2195
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2196
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet4:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2197
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet6:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2198
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet7:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2199
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet8:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2200
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet9:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2206
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2210
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$15;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2224
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$16;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2240
    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    .line 2241
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2242
    .local v16, "uri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2243
    .local v12, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setResult(ILandroid/content/Intent;)V

    .line 2244
    invoke-virtual {v9}, Landroid/widget/Button;->performClick()Z

    .line 2246
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnUsed":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v15    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "window":Landroid/view/Window;
    :cond_1bb
    return-void

    .line 2138
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_1bc
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_218

    .line 2139
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2140
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2141
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2142
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2143
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 2144
    .end local v17    # "window":Landroid/view/Window;
    :cond_218
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_267

    .line 2145
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2146
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2147
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2148
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2149
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83

    .line 2151
    .end local v17    # "window":Landroid/view/Window;
    :cond_267
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2152
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2153
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2154
    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2155
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_83
.end method

.method private showDialogDraws()V
    .registers 21

    .prologue
    .line 2004
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_185

    .line 2005
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2006
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2007
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_draws:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2008
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2012
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_186

    .line 2013
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2014
    .local v17, "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2032
    :goto_6a
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2033
    .local v16, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2034
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 2035
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2043
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2044
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2053
    .local v14, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws5:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2056
    .local v15, "tvSerial5":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2063
    .local v8, "btnClose":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2064
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v15, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2066
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2073
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2074
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2075
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2076
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws4:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2082
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2085
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2086
    .local v13, "strPreText":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v6, v5, Lic/buzzebeeslib/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2088
    .local v10, "dateHuman":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2091
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$14;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2120
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2123
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "currentDateandTime":Ljava/lang/String;
    .end local v10    # "dateHuman":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v13    # "strPreText":Ljava/lang/String;
    .end local v14    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v15    # "tvSerial5":Landroid/widget/TextView;
    .end local v16    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v17    # "window":Landroid/view/Window;
    :cond_185
    return-void

    .line 2015
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_186
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c9

    .line 2016
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2017
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2018
    .end local v17    # "window":Landroid/view/Window;
    :cond_1c9
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1ff

    .line 2019
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2020
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2022
    .end local v17    # "window":Landroid/view/Window;
    :cond_1ff
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2023
    .restart local v17    # "window":Landroid/view/Window;
    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v18, 0x3fe6666666666666L

    mul-double v6, v6, v18

    double-to-int v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a
.end method

.method private showDialogError(Ljava/lang/String;Z)V
    .registers 17
    .param p1, "pError"    # Ljava/lang/String;
    .param p2, "pIsShowCampaign"    # Z

    .prologue
    .line 2414
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_cc

    .line 2415
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2417
    .local v8, "dialogSerial":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2418
    sget v0, Lic/buzzebeeslib/R$layout;->bz_dialog_new_error:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2419
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2427
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_cd

    .line 2428
    :cond_36
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 2429
    .local v11, "window":Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v4, v1

    const-wide v12, 0x3fe6666666666666L

    mul-double/2addr v4, v12

    double-to-int v1, v4

    invoke-virtual {v11, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2441
    :goto_65
    sget v0, Lic/buzzebeeslib/R$id;->LayoutHeader:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 2442
    .local v6, "LayoutHeader":Landroid/widget/RelativeLayout;
    sget v0, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2443
    .local v2, "imgCampaign":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 2444
    .local v9, "tvCampaignDesc":Landroid/widget/TextView;
    sget v0, Lic/buzzebeeslib/R$id;->tvError:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2445
    .local v10, "tvError":Landroid/widget/TextView;
    sget v0, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 2451
    .local v7, "btnClose":Landroid/widget/Button;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v9, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2452
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v10, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2453
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v7, v0}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2455
    if-eqz p2, :cond_172

    .line 2456
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2464
    :goto_a8
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2465
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2466
    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2468
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$18;

    invoke-direct {v0, p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$18;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2479
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2482
    .end local v2    # "imgCampaign":Landroid/widget/ImageView;
    .end local v6    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .end local v7    # "btnClose":Landroid/widget/Button;
    .end local v8    # "dialogSerial":Landroid/app/Dialog;
    .end local v9    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v10    # "tvError":Landroid/widget/TextView;
    .end local v11    # "window":Landroid/view/Window;
    :cond_cc
    return-void

    .line 2430
    .restart local v8    # "dialogSerial":Landroid/app/Dialog;
    :cond_cd
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10d

    .line 2431
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 2432
    .restart local v11    # "window":Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v4, v1

    const-wide v12, 0x3fe6666666666666L

    mul-double/2addr v4, v12

    double-to-int v1, v4

    invoke-virtual {v11, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 2433
    .end local v11    # "window":Landroid/view/Window;
    :cond_10d
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_141

    .line 2434
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 2435
    .restart local v11    # "window":Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1

    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 2437
    .end local v11    # "window":Landroid/view/Window;
    :cond_141
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 2438
    .restart local v11    # "window":Landroid/view/Window;
    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x3feccccccccccccdL

    mul-double/2addr v0, v4

    double-to-int v0, v0

    invoke-virtual {v11}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v4, v1

    const-wide v12, 0x3fe6666666666666L

    mul-double/2addr v4, v12

    double-to-int v1, v4

    invoke-virtual {v11, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 2458
    .restart local v2    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v6    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .restart local v7    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v10    # "tvError":Landroid/widget/TextView;
    :cond_172
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_a8
.end method

.method private showDialogSentByPost()V
    .registers 19

    .prologue
    .line 2249
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_141

    .line 2251
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_13

    .line 2252
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2255
    :cond_13
    new-instance v10, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2256
    .local v10, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2257
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_sent_by_post:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2258
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_142

    .line 2262
    :cond_45
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2263
    .local v14, "window":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v3, v6

    invoke-virtual {v14, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2276
    :goto_75
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2277
    .local v13, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2278
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 2279
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2282
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2283
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2285
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2291
    .local v8, "btnClose":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v12, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2292
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2293
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 2300
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2301
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2302
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2303
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws4:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 2309
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2312
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$17;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2325
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2327
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "currentDateandTime":Ljava/lang/String;
    .end local v10    # "dialogSerial":Landroid/app/Dialog;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v13    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v14    # "window":Landroid/view/Window;
    :cond_141
    return-void

    .line 2264
    .restart local v10    # "dialogSerial":Landroid/app/Dialog;
    :cond_142
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_183

    .line 2265
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2266
    .restart local v14    # "window":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v3, v6

    invoke-virtual {v14, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_75

    .line 2267
    .end local v14    # "window":Landroid/view/Window;
    :cond_183
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b7

    .line 2268
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2269
    .restart local v14    # "window":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_75

    .line 2271
    .end local v14    # "window":Landroid/view/Window;
    :cond_1b7
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2272
    .restart local v14    # "window":Landroid/view/Window;
    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v14}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v3, v6

    invoke-virtual {v14, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_75
.end method

.method private showDialogWinner(Ljava/lang/String;)V
    .registers 20
    .param p1, "pStrWinnerMessage"    # Ljava/lang/String;

    .prologue
    .line 3253
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_13d

    .line 3254
    new-instance v10, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3255
    .local v10, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3256
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_winner:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 3257
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3261
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x3

    if-eq v2, v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x4

    if-ne v2, v5, :cond_13e

    .line 3262
    :cond_38
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 3263
    .local v15, "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v6, v6, v16

    double-to-int v2, v6

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v5, v6

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    .line 3283
    :goto_69
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 3284
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3285
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 3286
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 3287
    .local v14, "tvWinner2":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 3289
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 3295
    .local v8, "btnClose":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 3296
    .local v13, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3297
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 3298
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v5, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v12, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v8, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 3307
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v13, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 3313
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 3314
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 3315
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 3321
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    .line 3322
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 3323
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3326
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3329
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$26;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$26;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3344
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 3347
    .end local v3    # "img_url":Ljava/lang/String;
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "currentDateandTime":Ljava/lang/String;
    .end local v10    # "dialogSerial":Landroid/app/Dialog;
    .end local v11    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v13    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v14    # "tvWinner2":Landroid/widget/TextView;
    .end local v15    # "window":Landroid/view/Window;
    :cond_13d
    return-void

    .line 3264
    .restart local v10    # "dialogSerial":Landroid/app/Dialog;
    :cond_13e
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x2

    if-ne v2, v5, :cond_180

    .line 3265
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 3266
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v6, v6, v16

    double-to-int v2, v6

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v5, v6

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 3267
    .end local v15    # "window":Landroid/view/Window;
    :cond_180
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b4

    .line 3268
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 3269
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69

    .line 3271
    .end local v15    # "window":Landroid/view/Window;
    :cond_1b4
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 3272
    .restart local v15    # "window":Landroid/view/Window;
    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v6, v2

    const-wide v16, 0x3feccccccccccccdL

    mul-double v6, v6, v16

    double-to-int v2, v6

    invoke-virtual {v15}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-double v6, v5

    const-wide v16, 0x3fe6666666666666L

    mul-double v6, v6, v16

    double-to-int v5, v6

    invoke-virtual {v15, v2, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_69
.end method

.method private showRedeem(Ljava/lang/String;)V
    .registers 9
    .param p1, "pCustomInput"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1310
    const-string v4, ""

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 1311
    const/4 v3, 0x0

    .line 1312
    .local v3, "url":Ljava/lang/String;
    if-eqz p1, :cond_7c

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 1314
    new-instance v2, Lic/buzzebeeslib/util/DeviceHelper;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1315
    .local v2, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1316
    .local v0, "carrier":Ljava/lang/String;
    invoke-virtual {v2}, Lic/buzzebeeslib/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "contact_number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/redeem?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&carrier="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&contact_number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1320
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v1    # "contact_number":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    :cond_7c
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OK redeem url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const/4 v4, 0x0

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1324
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2562
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$19;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$19;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2569
    return-void
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 4239
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 4241
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public doAction(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3928
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->checkLogin()Z

    move-result v7

    if-nez v7, :cond_7

    .line 4027
    :cond_6
    :goto_6
    return-void

    .line 3932
    :cond_7
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v8, "BZB Campaign Details"

    const-string v9, "Click Redeem"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 3935
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    if-nez v7, :cond_6

    .line 3943
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v7, :cond_6

    .line 3944
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "5"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 3946
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doWatchAdd()V

    goto :goto_6

    .line 3948
    :cond_4d
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v7, v7, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v7, :cond_6

    .line 3949
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 3950
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v4

    .line 3951
    .local v4, "lgPoints":J
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v7}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_95

    long-to-double v8, v4

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v7}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_95

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_95

    .line 3952
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogBuyPoint()V

    goto/16 :goto_6

    .line 3954
    :cond_95
    const/4 v0, 0x0

    .line 3955
    .local v0, "IsGotoProfile":Z
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v7}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 3956
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fa

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fa

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fa

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fa

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_fa

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fb

    .line 3957
    :cond_fa
    const/4 v0, 0x1

    .line 3960
    :cond_fb
    if-eqz v0, :cond_139

    .line 3961
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3962
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    sget v7, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_4:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lic/buzzebeeslib/R$string;->dialog_msg_address:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const-string v8, "Yes"

    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$33;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$33;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 3970
    const-string v8, "No"

    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$34;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$34;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3975
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3976
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_6

    .line 3978
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_139
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1f8

    .line 3979
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v7}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_156

    .line 3980
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V

    goto/16 :goto_6

    .line 3982
    :cond_156
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b4

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string v8, "api"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b4

    .line 3983
    const-string v7, ""

    sget v8, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {p0, v7, v8, v9, v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 3985
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v7, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    .line 3986
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 3987
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string v7, "token"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v8, "get"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1aa

    .line 3989
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v6, v3, v7}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_6

    .line 3991
    :cond_1aa
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;

    invoke-direct {v7, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostDealsGetListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v6, v3, v7}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_6

    .line 3993
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v6    # "url":Ljava/lang/String;
    :cond_1b4
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d1

    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string v8, "web"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d1

    .line 3994
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_6

    .line 3995
    :cond_1d1
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e2

    .line 3996
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_6

    .line 4000
    :cond_1e2
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f3

    .line 4001
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDraws()V

    goto/16 :goto_6

    .line 4003
    :cond_1f3
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDealsGet()V

    goto/16 :goto_6

    .line 4008
    :cond_1f8
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_209

    .line 4009
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_6

    .line 4011
    :cond_209
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v7, v7, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21a

    .line 4012
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDraws()V

    goto/16 :goto_6

    .line 4014
    :cond_21a
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogConditionDealsGet()V

    goto/16 :goto_6
.end method

.method public doActionPurchasing(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3385
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    .line 3387
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    if-eqz v0, :cond_70

    .line 3389
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 3390
    const-string v3, ""

    sget v4, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 3392
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/winner?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3393
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OK redeem url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostWinnerListener;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostWinnerListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v2, v1, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 3445
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 3429
    :cond_71
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 3430
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->checkAddressBeforePurchasing(Lic/buzzebeeslib/bean/Campaign;)V

    goto :goto_70

    .line 3432
    :cond_7d
    iget v3, v0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-lez v3, :cond_e4

    iget v3, v0, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    iget v4, v0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-ne v3, v4, :cond_e4

    .line 3433
    const-string v3, ""

    sget v4, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 3435
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/use?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3436
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OK redeem url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3438
    .restart local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-static {v2, v1, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_70

    .line 3440
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_e4
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogDealsGet()V

    goto :goto_70
.end method

.method public doBuy(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2486
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->goBuyMarketPlace(Lic/buzzebeeslib/bean/Campaign;)V

    .line 2493
    return-void
.end method

.method public doBuyPoint()V
    .registers 7

    .prologue
    .line 3532
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3533
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "payment/buypoint.aspx?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&campaignId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3535
    .local v2, "url":Ljava/lang/String;
    :try_start_40
    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 3536
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5e} :catch_7e

    move-result-object v2

    .line 3542
    :cond_5f
    :goto_5f
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doBuyPoint|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3545
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3546
    return-void

    .line 3538
    :catch_7e
    move-exception v0

    .line 3539
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception|showRedeem := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f
.end method

.method public doGotoFanPage(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2630
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 2631
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://www.facebook.com/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2632
    .local v1, "url":Ljava/lang/String;
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2633
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2635
    :cond_42
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2636
    .local v0, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 2638
    .end local v0    # "openUrlIntent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method public doGotoLikeFanPage(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2641
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2644
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fb://page/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2646
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2647
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_31} :catch_32

    .line 2658
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_31
    :goto_31
    return-void

    .line 2648
    :catch_32
    move-exception v0

    .line 2650
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.facebook.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2651
    .local v4, "url":Ljava/lang/String;
    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 2652
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2654
    :cond_65
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2655
    .local v2, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2661
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->checkLogin()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2703
    :goto_6
    return-void

    .line 2665
    :cond_7
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$20;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$20;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public doMarketPlaceLocation(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2546
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/Place2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2549
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE_ACTIVITY"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2550
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2551
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 2559
    return-void
.end method

.method public doMarketPlaceReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2578
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2580
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 2581
    return-void
.end method

.method public doShareCampaign(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2584
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->checkLogin()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2627
    :goto_6
    return-void

    .line 2614
    :cond_7
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "og/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "402705486466922"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2615
    .local v1, "linkShare":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2616
    .local v2, "pictureShare":Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 2617
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignGallery;

    iget-object v2, v4, Lic/buzzebeeslib/bean/CampaignGallery;->FullImageUrl:Ljava/lang/String;

    .line 2620
    :cond_4e
    new-instance v4, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-direct {v4, p0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-virtual {v4, v2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-virtual {v4, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-virtual {v4}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v3

    .line 2621
    .local v3, "shareDialog":Lcom/facebook/widget/FacebookDialog;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_80} :catch_b0

    .line 2626
    .end local v1    # "linkShare":Ljava/lang/String;
    .end local v2    # "pictureShare":Ljava/lang/String;
    .end local v3    # "shareDialog":Lcom/facebook/widget/FacebookDialog;
    :goto_80
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v5, "BZB Campaign Details"

    const-string v6, "Click Share"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v8, v8, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v8, v8, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    .line 2622
    :catch_b0
    move-exception v0

    .line 2623
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_80
.end method

.method public doShoppingBasket(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4227
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "payment/ShoppingCart.aspx?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4229
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doShoppingBasket|url := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4231
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4233
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4234
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_SHOPPING_BASKET:I

    invoke-virtual {p0, v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4235
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$3;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$3;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 437
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v1, :cond_25

    .line 438
    const-string v1, "bzbs_return_url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "bzbs_return_url":Ljava/lang/String;
    if-eqz v0, :cond_24

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 440
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showRedeem(Ljava/lang/String;)V

    .line 478
    .end local v0    # "bzbs_return_url":Ljava/lang/String;
    :cond_24
    :goto_24
    return-void

    .line 444
    :cond_25
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v1, :cond_24

    .line 468
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->RC_WEBVIEW_SHOPPING_BASKET:I

    if-ne p1, v1, :cond_24

    .line 469
    const-string v1, "bzbs_buy_return_url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    if-eqz p1, :cond_172

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v14, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->requestWindowFeature(I)Z

    .line 229
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 230
    sget v13, Lic/buzzebeeslib/R$layout;->bz_market_place_detail2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setContentView(I)V

    .line 232
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 237
    new-instance v13, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 242
    new-instance v13, Lcom/facebook/UiLifecycleHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->callback:Lcom/facebook/Session$StatusCallback;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v14, "UA-42649771-1"

    invoke-virtual {v13, v14}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 255
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;

    .line 257
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gSDK_INT:I

    .line 259
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initialParam()V

    .line 260
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->initialLayout()V

    .line 261
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsHasAddress()V

    .line 263
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 264
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 266
    new-instance v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "cache_market"

    invoke-direct {v2, v13, v14}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    .local v2, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x3e800000

    invoke-virtual {v2, v13, v14}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 268
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenHeight:I

    .line 271
    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenWidth:I

    .line 273
    move-object/from16 v0, p0

    iget v12, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenWidth:I

    .line 274
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v8, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenHeight:I

    .line 276
    .local v8, "height":I
    if-le v8, v12, :cond_17d

    .end local v8    # "height":I
    :goto_c6
    div-int/lit8 v10, v8, 0x2

    .line 277
    .local v10, "longest":I
    new-instance v13, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v14, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v13, v14}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 283
    if-nez p1, :cond_269

    .line 285
    const-string v3, ""

    .line 287
    .local v3, "cache_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    if-lez v13, :cond_180

    .line 288
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 295
    :cond_107
    :goto_107
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v3, v13}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "catch_market":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "catch_market "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1e9

    .line 301
    :try_start_12d
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    .local v9, "jsonRoot":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v4, v9}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 303
    .local v4, "campaign":Lic/buzzebeeslib/bean/Campaign;
    move-object/from16 v0, p0

    iput-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 304
    new-instance v13, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_147
    .catch Lorg/json/JSONException; {:try_start_12d .. :try_end_147} :catch_192

    .line 319
    .end local v4    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_147
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    if-lez v13, :cond_197

    .line 320
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    .end local v3    # "cache_name":Ljava/lang/String;
    .end local v5    # "catch_market":Ljava/lang/String;
    :goto_171
    return-void

    .line 226
    .end local v2    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "longest":I
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "width":I
    :cond_172
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v14, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .restart local v2    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "height":I
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "width":I
    :cond_17d
    move v8, v12

    .line 276
    goto/16 :goto_c6

    .line 290
    .end local v8    # "height":I
    .restart local v3    # "cache_name":Ljava/lang/String;
    .restart local v10    # "longest":I
    :cond_180
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_107

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_107

    .line 312
    .restart local v5    # "catch_market":Ljava/lang/String;
    :catch_192
    move-exception v7

    .line 313
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_147

    .line 323
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_197
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_1e1

    .line 324
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V

    .line 325
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V

    .line 326
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V

    .line 327
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V

    .line 328
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    goto :goto_171

    .line 331
    :cond_1e1
    const-string v13, "Invalid campaign data!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_171

    .line 336
    :cond_1e9
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    if-lez v13, :cond_215

    .line 337
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_171

    .line 340
    :cond_215
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_260

    .line 341
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Campaign(Z)V

    .line 342
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Info()V

    .line 343
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Description()V

    .line 344
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setUI_Condition()V

    .line 345
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V

    goto/16 :goto_171

    .line 348
    :cond_260
    const-string v13, "Invalid campaign data!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_171

    .line 353
    .end local v3    # "cache_name":Ljava/lang/String;
    .end local v5    # "catch_market":Ljava/lang/String;
    :cond_269
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_171
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 3837
    const/4 v0, 0x0

    .line 3838
    .local v0, "_progressDialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_86

    .line 3897
    :goto_7
    return-object v0

    .line 3840
    :pswitch_8
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 3841
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 3842
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3843
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3844
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3852
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$29;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$29;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3860
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 3861
    goto :goto_7

    .line 3863
    :pswitch_3e
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    .line 3864
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 3865
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file_again:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3866
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3867
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3868
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    const/4 v2, -0x1

    sget v3, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_again:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$30;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3886
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$31;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$31;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 3894
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 3838
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3e
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 528
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 529
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 534
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 535
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 537
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 538
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 539
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    .line 540
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 541
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 542
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    .line 543
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramIsUsed:Z

    .line 545
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatter:Ljava/text/NumberFormat;

    .line 546
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 547
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;

    .line 549
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 551
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenWidth:I

    .line 552
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gScreenHeight:I

    .line 554
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gincInfoBuyPoint:Landroid/view/View;

    .line 556
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDialog:Landroid/app/ProgressDialog;

    .line 558
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 559
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 361
    const/4 v4, 0x4

    if-ne p1, v4, :cond_33

    .line 362
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_noti"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 364
    .local v1, "is_from_noti":Z
    if-eqz v1, :cond_1f

    .line 370
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->startActivity(Landroid/content/Intent;)V

    .line 382
    .end local v1    # "is_from_noti":Z
    :goto_1e
    return v3

    .line 374
    .restart local v1    # "is_from_noti":Z
    :cond_1f
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 375
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->setResult(ILandroid/content/Intent;)V

    .line 377
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->finish()V

    goto :goto_1e

    .line 382
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "is_from_noti":Z
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_33
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1e
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 505
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 506
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 510
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 511
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 512
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 522
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 523
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 577
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 482
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 484
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 486
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 488
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 490
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 491
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 492
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gDpi:I

    .line 494
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 495
    sget-object v1, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v2, "com.samsung.privilege"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 496
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/LibUserLogin;->SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z

    .line 497
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->qtMarketBzbs()V

    .line 500
    :cond_48
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->IsHasAddress()V

    .line 501
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 564
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    const-string v0, "paramCampaignID"

    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 571
    const-string v0, "gMarketGalleryView"

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gMarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 572
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 388
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 389
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 516
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 517
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method
