.class public Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MarketPlaceDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforeRedeemListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$DoLikeListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDealsGetListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDrawsListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostSubmitListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;,
        Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$QTPagerAdapter;
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

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private contentQT:Landroid/widget/RelativeLayout;

.field private etCondition:Landroid/widget/TextView;

.field private etDescription:Landroid/widget/TextView;

.field private footerListView:Landroid/view/View;

.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gCurrentDownloadImageIndex:I

.field private gCurrentTab:I

.field private gDialog:Landroid/app/ProgressDialog;

.field private gDpi:I

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gFontHeader:Landroid/graphics/Typeface;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gImgLike:Landroid/widget/ImageView;

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

.field private gListCampaignGallery:Landroid/widget/ListView;

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

.field private gSDK_INT:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gShowTab:Ljava/lang/String;

.field private gStateShowCond:Ljava/lang/String;

.field private gStateShowDesc:Ljava/lang/String;

.field private gStateShowGall:Ljava/lang/String;

.field private gStateShowInfo:Ljava/lang/String;

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private gTvCommentCount:Landroid/widget/TextView;

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

.field private gTvLike:Landroid/widget/TextView;

.field private gTvline1:Landroid/widget/TextView;

.field private gTvline2:Landroid/widget/TextView;

.field private gTvline3:Landroid/widget/TextView;

.field private gTvline4:Landroid/widget/TextView;

.field private gincInfoBuyPoint:Landroid/view/View;

.field private imgCampaign:Landroid/widget/ImageView;

.field private imgCampaignThumb:Landroid/widget/ImageView;

.field private imgFanpage:Landroid/widget/ImageView;

.field private imgInfoBuyPoint41:Landroid/widget/ImageView;

.field private imgPoint:Landroid/widget/ImageView;

.field private imgRedeem:Landroid/widget/ImageView;

.field private imgRibbon:Landroid/widget/ImageView;

.field private imgWebSite:Landroid/widget/ImageView;

.field private isShowAllInfoBuyPoint:Z

.field private layoutButtonBasket:Landroid/widget/RelativeLayout;

.field private layoutButtonGallery:Landroid/widget/RelativeLayout;

.field private layoutButtonInfo:Landroid/widget/RelativeLayout;

.field private layoutConditionAlter:Landroid/widget/RelativeLayout;

.field private layoutFanpage:Landroid/widget/RelativeLayout;

.field private layoutRedeem:Landroid/widget/RelativeLayout;

.field private layoutRight:Landroid/widget/RelativeLayout;

.field private layoutTabGallery:Landroid/widget/RelativeLayout;

.field private layoutTabInfo:Landroid/widget/RelativeLayout;

.field private layoutWebSite:Landroid/widget/RelativeLayout;

.field private lineFanPage:Landroid/widget/TextView;

.field private lineWebSite:Landroid/widget/TextView;

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

.field private pbImgLike:Landroid/widget/ProgressBar;

.field private pbLoadingCampaign:Landroid/widget/ProgressBar;

.field private scrollMain:Landroid/widget/ScrollView;

.field private tvCaption:Landroid/widget/TextView;

.field private tvDelivery:Landroid/widget/TextView;

.field private tvDescription:Landroid/widget/TextView;

.field private tvDiscountNumber:Landroid/widget/TextView;

.field private tvHeader:Landroid/widget/TextView;

.field private tvLocation:Landroid/widget/TextView;

.field private tvPointNumber:Landroid/widget/TextView;

.field private tvPriceNumber:Landroid/widget/TextView;

.field private tvRedeem:Landroid/widget/TextView;

.field private tvRedeemConditionAlter:Landroid/widget/TextView;

.field private tvRemainNumber:Landroid/widget/TextView;

.field private tvTel:Landroid/widget/TextView;

.field private tvTimeNumber:Landroid/widget/TextView;

.field private tvWebSite:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 106
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 107
    const/16 v0, 0x15

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 108
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    .line 109
    const/16 v0, 0x19

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_SHOPPING_BASKET:I

    .line 139
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatter:Ljava/text/NumberFormat;

    .line 140
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    .line 169
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gSDK_INT:I

    .line 221
    const-class v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    .line 263
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isShowAllInfoBuyPoint:Z

    .line 3686
    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gShowTab:Ljava/lang/String;

    .line 3687
    const-string v0, "GONE"

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    .line 3689
    const-string v0, "GONE"

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowDesc:Ljava/lang/String;

    .line 3691
    const-string v0, "GONE"

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowCond:Ljava/lang/String;

    .line 3693
    const-string v0, "GONE"

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    .line 3958
    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 4618
    iput v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I

    .line 4619
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gIsShow:Z

    .line 103
    return-void
.end method

.method private HideTabGall()V
    .registers 5

    .prologue
    .line 3616
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 3667
    const-wide/16 v2, 0x64

    .line 3616
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3668
    return-void
.end method

.method private HideTabInfo()V
    .registers 5

    .prologue
    .line 3516
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 3567
    const-wide/16 v2, 0x64

    .line 3516
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3568
    return-void
.end method

.method private IsAllLoadFromCache()Z
    .registers 6

    .prologue
    .line 4834
    const/4 v0, 0x0

    .line 4835
    .local v0, "blnNotFind":Z
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 4836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_24

    .line 4845
    .end local v1    # "i":I
    :cond_20
    if-eqz v0, :cond_40

    .line 4846
    const/4 v3, 0x0

    .line 4848
    :goto_23
    return v3

    .line 4837
    .restart local v1    # "i":I
    :cond_24
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v2, v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 4838
    .local v2, "strUrl":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, v2}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 4841
    const/4 v0, 0x1

    .line 4836
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 4848
    .end local v1    # "i":I
    .end local v2    # "strUrl":Ljava/lang/String;
    :cond_40
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private IsHasAddress()V
    .registers 5

    .prologue
    .line 4206
    const-string v0, ""

    .line 4207
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4208
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/profile/me?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4209
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 4211
    return-void
.end method

.method private PlayAnimationGall()V
    .registers 4

    .prologue
    .line 3753
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3756
    const/4 v0, 0x0

    .line 3769
    .local v0, "isHiding":Z
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3770
    const/4 v0, 0x1

    .line 3771
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabInfo()V

    .line 3774
    :cond_19
    if-eqz v0, :cond_20

    .line 3775
    const-string v1, "Gall"

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gShowTab:Ljava/lang/String;

    .line 3786
    .end local v0    # "isHiding":Z
    :cond_1f
    :goto_1f
    return-void

    .line 3777
    .restart local v0    # "isHiding":Z
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 3778
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3779
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->ShowTabGall()V

    goto :goto_1f

    .line 3780
    :cond_32
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3781
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabGall()V

    goto :goto_1f
.end method

.method private PlayAnimationInfo()V
    .registers 4

    .prologue
    .line 3717
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isPlayingAnimation()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 3720
    const/4 v0, 0x0

    .line 3733
    .local v0, "isHiding":Z
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3734
    const/4 v0, 0x1

    .line 3735
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabGall()V

    .line 3738
    :cond_19
    if-eqz v0, :cond_20

    .line 3739
    const-string v1, "Info"

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gShowTab:Ljava/lang/String;

    .line 3750
    .end local v0    # "isHiding":Z
    :cond_1f
    :goto_1f
    return-void

    .line 3741
    .restart local v0    # "isHiding":Z
    :cond_20
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 3742
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "GONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3743
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->ShowTabInfo()V

    goto :goto_1f

    .line 3744
    :cond_32
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "VISIBLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3745
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabInfo()V

    goto :goto_1f
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 4038
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

    .line 4039
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 4041
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvBadge:Landroid/widget/TextView;

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

    .line 4042
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4043
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4045
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 4046
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 4048
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4109
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$30;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$30;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4133
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4134
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4136
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 4137
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4138
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4139
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4141
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 4142
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 4143
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 4144
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4145
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4146
    return-void
.end method

.method private ShowTabGall()V
    .registers 5

    .prologue
    .line 3575
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 3612
    const-wide/16 v2, 0x64

    .line 3575
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3613
    return-void
.end method

.method private ShowTabInfo()V
    .registers 5

    .prologue
    .line 3475
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    .line 3512
    const-wide/16 v2, 0x64

    .line 3475
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3513
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 2911
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogSentByPost()V

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 2810
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogDealsGet()V

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 3053
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    .registers 2

    .prologue
    .line 838
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 2130
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Gallery()V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageWidth:I

    return v0
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I
    .registers 2

    .prologue
    .line 214
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageHeight:I

    return v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3933
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 4165
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 4313
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogWinner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 2510
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDraws()V

    return-void
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 2196
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDealsGet()V

    return-void
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3687
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V
    .registers 2

    .prologue
    .line 1375
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V

    return-void
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3515
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabInfo()V

    return-void
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3693
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3615
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabGall()V

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3716
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationInfo()V

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3752
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationGall()V

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isShowAllInfoBuyPoint:Z

    return v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V
    .registers 2

    .prologue
    .line 263
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->isShowAllInfoBuyPoint:Z

    return-void
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 1550
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V

    return-void
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$46(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$47(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$48(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$49(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 1595
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V

    return-void
.end method

.method static synthetic access$50(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 4403
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showCustominput()V

    return-void
.end method

.method static synthetic access$51(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 3448
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3687
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$53(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    .registers 2

    .prologue
    .line 149
    iput p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    return-void
.end method

.method static synthetic access$54(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$55(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/AnimationSet;
    .registers 2

    .prologue
    .line 3459
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$56(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3686
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gShowTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3574
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->ShowTabGall()V

    return-void
.end method

.method static synthetic access$58(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3686
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gShowTab:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$59(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3693
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 1607
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V

    return-void
.end method

.method static synthetic access$60(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$61(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3474
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->ShowTabInfo()V

    return-void
.end method

.method static synthetic access$62(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbImgLike:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$63(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 3957
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$64(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 3957
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$65(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 3958
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$66(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3959
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$67(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3960
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$68(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3961
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$69(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3962
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 3208
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->loadGallery()V

    return-void
.end method

.method static synthetic access$70(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3963
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$71(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 3997
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$72(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 3996
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$73(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 3997
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$74(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 4001
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$75(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 3998
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$76(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 4000
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$77(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 3999
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$78(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 3999
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$79(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 3996
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 3192
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$80(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 4037
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$81(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 4003
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$82(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 4155
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$83(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;
    .registers 2

    .prologue
    .line 4614
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    return-object v0
.end method

.method static synthetic access$84(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 4615
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$85(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/io/File;
    .registers 2

    .prologue
    .line 4804
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$86(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 4799
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$87(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 1

    .prologue
    .line 4950
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cancelLoad()V

    return-void
.end method

.method static synthetic access$88(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 4617
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$89(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)I
    .registers 2

    .prologue
    .line 4618
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I

    return v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ProgressBar;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$90(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 4864
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$91(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z
    .registers 2

    .prologue
    .line 4833
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsAllLoadFromCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$92(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Z
    .registers 2

    .prologue
    .line 4619
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gIsShow:Z

    return v0
.end method

.method static synthetic access$93(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Z)V
    .registers 2

    .prologue
    .line 4619
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gIsShow:Z

    return-void
.end method

.method static synthetic access$94(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/util/ConnectionDetector;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    return-object v0
.end method

.method static synthetic access$95(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    .registers 2

    .prologue
    .line 4618
    iput p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I

    return-void
.end method

.method static synthetic access$96(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 4853
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initFileLoaderPIC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$97(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 4793
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initFileLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$98(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->contentQT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private cancelLoad()V
    .registers 3

    .prologue
    .line 4951
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    if-eqz v0, :cond_a

    .line 4952
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->cancel(Z)Z

    .line 4954
    :cond_a
    return-void
.end method

.method private checkAddressBeforePurchasing(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 6
    .param p1, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v3, 0x1

    .line 4501
    const-string v1, ""

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 4503
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4504
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforePurchasingListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/Campaign;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 4507
    return-void
.end method

.method private checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 6
    .param p1, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    const/4 v3, 0x1

    .line 5102
    const-string v1, ""

    sget v2, Lic/buzzebeeslib/R$string;->profile_setting_checking_address:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 5104
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5105
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforeRedeemListener;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CheckAddressBeforeRedeemListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/Campaign;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 5106
    return-void
.end method

.method private doWatchAdd()V
    .registers 12

    .prologue
    const/16 v7, 0x9

    const/4 v10, 0x0

    .line 4624
    :try_start_3
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v5, :cond_13

    .line 4625
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    if-eqz v5, :cond_13

    .line 4626
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_16d

    .line 4644
    :cond_13
    :goto_13
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 4646
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

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

    .line 4648
    .local v2, "lgFileSize":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_4f

    .line 4649
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 4650
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4653
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_4f
    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;

    invoke-direct {v5, p0, v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$33;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;J)V

    iput-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;

    .line 4683
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a7

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v2

    if-nez v5, :cond_a7

    .line 4684
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    .line 4685
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4686
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 4689
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4690
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 4788
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "lgFileSize":J
    :goto_a6
    return-void

    .line 4692
    .restart local v2    # "lgFileSize":J
    :cond_a7
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 4693
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initFileLoader(Ljava/lang/String;)V

    .line 4694
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialog(I)V

    .line 4695
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4696
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a6

    .line 4698
    :cond_d0
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_a6

    .line 4706
    .end local v2    # "lgFileSize":J
    :cond_da
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v5, v7, :cond_ee

    .line 4707
    new-instance v5, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 4708
    .restart local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4711
    .end local v1    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_ee
    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$34;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    iput-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;

    .line 4762
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_162

    .line 4763
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsAllLoadFromCache()Z

    move-result v5

    if-eqz v5, :cond_129

    .line 4764
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v5}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    .line 4765
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4766
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "campaign"

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4767
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a6

    .line 4769
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_129
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v5}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-eqz v5, :cond_157

    .line 4770
    iput v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I

    .line 4771
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentDownloadImageIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v4, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 4772
    .local v4, "strUrl":Ljava/lang/String;
    invoke-direct {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initFileLoaderPIC(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialog(I)V

    .line 4774
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 4775
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a6

    .line 4777
    .end local v4    # "strUrl":Ljava/lang/String;
    :cond_157
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 4782
    :cond_162
    sget v5, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 4631
    :catch_16d
    move-exception v5

    goto/16 :goto_13
.end method

.method private enableButtonUseXX(Z)V
    .registers 5
    .param p1, "isEnable"    # Z

    .prologue
    .line 4602
    sget v1, Lic/buzzebeeslib/R$id;->imgRedeem:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4604
    .local v0, "imgRedeem":Landroid/widget/ImageView;
    if-eqz p1, :cond_18

    .line 4605
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4606
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 4611
    :goto_17
    return-void

    .line 4608
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4609
    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use_gray:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto :goto_17
.end method

.method private getCampaign(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 839
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 840
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsHasAddress()V

    .line 841
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 842
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCampaign|url := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 845
    return-void
.end method

.method private getOutputFile()Ljava/io/File;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 4805
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 4808
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 4809
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 4810
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 4812
    :cond_3a
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

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

    .line 4813
    .local v0, "arrTemp":[Ljava/lang/String;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v2, v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    .line 4814
    .local v2, "file_name":Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_69

    .line 4815
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v0, v4

    .line 4817
    :cond_69
    const-string v4, ".mp4"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_88

    .line 4818
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

    .line 4821
    :cond_88
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4822
    .local v3, "outputFile":Ljava/io/File;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

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

    .line 4825
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
    .line 4865
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 4867
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GalaxyGift"

    invoke-virtual {v3, v4, v5}, Lcom/bitmapfun/util/ImageFetcher;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4868
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_25

    .line 4869
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 4876
    :cond_25
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, p1}, Lcom/bitmapfun/util/ImageFetcher;->gethashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4877
    .local v1, "file_name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4878
    .local v2, "outputFile":Ljava/io/File;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

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

    .line 4881
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
    .line 4800
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 4801
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private goBuyMarketPlace(Lic/buzzebeeslib/bean/Campaign;)V
    .registers 8
    .param p1, "pCampain"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 3127
    if-eqz p1, :cond_ac

    .line 3128
    iget-object v3, p1, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 3132
    :try_start_10
    iget-object v3, p1, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_d3

    move-result-object v2

    .line 3135
    .local v2, "url":Ljava/lang/String;
    :try_start_16
    const-string v3, "<uid>"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3136
    new-instance v0, Lic/buzzebeeslib/util/DeviceHelper;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 3137
    .local v0, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    const-string v3, "<deviceId>"

    invoke-virtual {v0}, Lic/buzzebeeslib/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_36} :catch_d5

    move-result-object v2

    .line 3142
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

    .line 3143
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3145
    :cond_56
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 3146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3151
    :goto_83
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3158
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "goBuyMarketPlace|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3160
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3161
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3174
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_ac
    :goto_ac
    return-void

    .line 3148
    .restart local v2    # "url":Ljava/lang/String;
    :cond_ad
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 3168
    .end local v2    # "url":Ljava/lang/String;
    :catch_d3
    move-exception v3

    goto :goto_ac

    .line 3138
    .restart local v2    # "url":Ljava/lang/String;
    :catch_d5
    move-exception v3

    goto/16 :goto_37
.end method

.method private inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3449
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3451
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3452
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3453
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3454
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3456
    return-object v9
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 4149
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 4150
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4151
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4152
    return-object v0
.end method

.method private initFileLoader(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 4794
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 4795
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 4796
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4797
    return-void
.end method

.method private initFileLoaderPIC(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 4854
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 4855
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 4856
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4857
    return-void
.end method

.method private initialLayout()V
    .registers 44

    .prologue
    .line 958
    sget v40, Lic/buzzebeeslib/R$id;->layoutBadgeAlert:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    .line 962
    sget v40, Lic/buzzebeeslib/R$id;->scrollMain:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ScrollView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->scrollMain:Landroid/widget/ScrollView;

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->scrollMain:Landroid/widget/ScrollView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 965
    sget v40, Lic/buzzebeeslib/R$id;->imgCampaignThumb:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaignThumb:Landroid/widget/ImageView;

    .line 966
    sget v40, Lic/buzzebeeslib/R$id;->imgCampaign:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaign:Landroid/widget/ImageView;

    .line 967
    sget v40, Lic/buzzebeeslib/R$id;->imgRibbon:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    .line 968
    sget v40, Lic/buzzebeeslib/R$id;->tvCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    .line 969
    sget v40, Lic/buzzebeeslib/R$id;->tvHeader:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvHeader:Landroid/widget/TextView;

    .line 970
    sget v40, Lic/buzzebeeslib/R$id;->tvDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDescription:Landroid/widget/TextView;

    .line 971
    sget v40, Lic/buzzebeeslib/R$id;->tvDiscountNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDiscountNumber:Landroid/widget/TextView;

    .line 972
    sget v40, Lic/buzzebeeslib/R$id;->imgPoint:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    .line 973
    sget v40, Lic/buzzebeeslib/R$id;->tvPointNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPointNumber:Landroid/widget/TextView;

    .line 974
    sget v40, Lic/buzzebeeslib/R$id;->tvPriceNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPriceNumber:Landroid/widget/TextView;

    .line 975
    sget v40, Lic/buzzebeeslib/R$id;->tvRemainNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    .line 976
    sget v40, Lic/buzzebeeslib/R$id;->tvTimeNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    .line 977
    sget v40, Lic/buzzebeeslib/R$id;->layoutRight:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    .line 978
    sget v40, Lic/buzzebeeslib/R$id;->layoutButtonBasket:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonBasket:Landroid/widget/RelativeLayout;

    .line 996
    sget v40, Lic/buzzebeeslib/R$id;->layoutTabInfo:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabInfo:Landroid/widget/RelativeLayout;

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabInfo:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    new-instance v41, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1040
    sget v40, Lic/buzzebeeslib/R$id;->layoutTabGallery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabGallery:Landroid/widget/RelativeLayout;

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabGallery:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    new-instance v41, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$3;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$3;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1054
    sget v40, Lic/buzzebeeslib/R$id;->pbImgLike:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ProgressBar;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbImgLike:Landroid/widget/ProgressBar;

    .line 1056
    sget v40, Lic/buzzebeeslib/R$id;->layoutButtonInfo:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    new-instance v41, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$4;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1101
    sget v40, Lic/buzzebeeslib/R$id;->layoutButtonGallery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    new-instance v41, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$5;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1117
    sget v40, Lic/buzzebeeslib/R$id;->tvDelivery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDelivery:Landroid/widget/TextView;

    .line 1118
    sget v40, Lic/buzzebeeslib/R$id;->tvTel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTel:Landroid/widget/TextView;

    .line 1119
    sget v40, Lic/buzzebeeslib/R$id;->tvLocation:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvLocation:Landroid/widget/TextView;

    .line 1120
    sget v40, Lic/buzzebeeslib/R$id;->imgWebSite:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgWebSite:Landroid/widget/ImageView;

    .line 1121
    sget v40, Lic/buzzebeeslib/R$id;->tvWebSite:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvWebSite:Landroid/widget/TextView;

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvWebSite:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1123
    sget v40, Lic/buzzebeeslib/R$id;->lineWebSite:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineWebSite:Landroid/widget/TextView;

    .line 1124
    sget v40, Lic/buzzebeeslib/R$id;->layoutWebSite:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutWebSite:Landroid/widget/RelativeLayout;

    .line 1125
    sget v40, Lic/buzzebeeslib/R$id;->imgFanPage:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgFanpage:Landroid/widget/ImageView;

    .line 1126
    sget v40, Lic/buzzebeeslib/R$id;->lineFanPage:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineFanPage:Landroid/widget/TextView;

    .line 1127
    sget v40, Lic/buzzebeeslib/R$id;->layoutFanPage:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutFanpage:Landroid/widget/RelativeLayout;

    .line 1131
    sget v40, Lic/buzzebeeslib/R$id;->etDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1136
    sget v40, Lic/buzzebeeslib/R$id;->etCondition:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1140
    sget v40, Lic/buzzebeeslib/R$id;->layoutRedeem:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    .line 1141
    sget v40, Lic/buzzebeeslib/R$id;->layoutConditionAlter:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutConditionAlter:Landroid/widget/RelativeLayout;

    .line 1144
    sget v40, Lic/buzzebeeslib/R$id;->tvRedeemConditionAlter:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeemConditionAlter:Landroid/widget/TextView;

    .line 1145
    sget v40, Lic/buzzebeeslib/R$id;->imgRedeem:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRedeem:Landroid/widget/ImageView;

    .line 1146
    sget v40, Lic/buzzebeeslib/R$id;->tvRedeem:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    .line 1147
    sget v40, Lic/buzzebeeslib/R$id;->ListViewGallery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ListView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v40

    sget v41, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_gallery_footer:I

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    .line 1175
    sget v40, Lic/buzzebeeslib/R$id;->pbLoadingCampaign:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ProgressBar;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 1176
    sget v40, Lic/buzzebeeslib/R$id;->tvReview:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvCommentCount:Landroid/widget/TextView;

    .line 1177
    sget v40, Lic/buzzebeeslib/R$id;->imgLike:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgLike:Landroid/widget/ImageView;

    .line 1178
    sget v40, Lic/buzzebeeslib/R$id;->tvLike:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvLike:Landroid/widget/TextView;

    .line 1181
    sget v40, Lic/buzzebeeslib/R$id;->incInfoBuyPoint:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    .line 1183
    sget v40, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint1:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    .line 1184
    sget v40, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint2:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    .line 1185
    sget v40, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint3:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    .line 1186
    sget v40, Lic/buzzebeeslib/R$id;->LayoutInfoBuyPoint4:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    .line 1188
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint11:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint11:Landroid/widget/TextView;

    .line 1189
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint12:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint12:Landroid/widget/TextView;

    .line 1190
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint13:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    .line 1191
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint14:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint14:Landroid/widget/TextView;

    .line 1193
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint21:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint21:Landroid/widget/TextView;

    .line 1194
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint22:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint22:Landroid/widget/TextView;

    .line 1195
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint23:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    .line 1196
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint24:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    .line 1197
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint25:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint25:Landroid/widget/TextView;

    .line 1199
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint31:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    .line 1200
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint32:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    .line 1201
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint33:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    .line 1202
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint34:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    .line 1204
    sget v40, Lic/buzzebeeslib/R$id;->imgInfoBuyPoint41:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    .line 1205
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint42:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    .line 1206
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint43:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    .line 1207
    sget v40, Lic/buzzebeeslib/R$id;->tvInfoBuyPoint44:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint44:Landroid/widget/TextView;

    .line 1209
    sget v40, Lic/buzzebeeslib/R$id;->tvline1:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;

    .line 1210
    sget v40, Lic/buzzebeeslib/R$id;->tvline2:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;

    .line 1211
    sget v40, Lic/buzzebeeslib/R$id;->tvline3:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;

    .line 1212
    sget v40, Lic/buzzebeeslib/R$id;->tvline4:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutConditionAlter:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/DSNSKW_.TTF"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 1240
    .local v5, "font_HEADER":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/kit55p.ttf"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1243
    .local v4, "font":Landroid/graphics/Typeface;
    sget v40, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1246
    .local v21, "tvPageHeader":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1247
    .local v6, "tvCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvHeader:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1248
    .local v12, "tvHeader":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1249
    .local v9, "tvDescription":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvDiscountNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1250
    .local v11, "tvDiscountNumber":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvPointNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1251
    .local v23, "tvPointNumber":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvPriceNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1252
    .local v25, "tvPriceNumber":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvRemainNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 1253
    .local v29, "tvRemainNumber":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTimeNumber:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 1254
    .local v37, "tvTimeNumber":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvDiscountCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1255
    .local v10, "tvDiscountCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvPointCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1256
    .local v22, "tvPointCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvPriceCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1257
    .local v24, "tvPriceCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvRemainCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1258
    .local v28, "tvRemainCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTimeCaption:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v36

    check-cast v36, Landroid/widget/TextView;

    .line 1261
    .local v36, "tvTimeCaption":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvShare:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 1262
    .local v31, "tvShare":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvMap:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1263
    .local v18, "tvMap":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvLike:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1264
    .local v15, "tvLike":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvReview:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 1267
    .local v30, "tvReview":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvRedeem:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1270
    .local v26, "tvRedeem":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvRedeemConditionAlter:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1281
    .local v27, "tvRedeemConditionAlter":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTabInfo:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 1282
    .local v33, "tvTabInfo":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvDeliveryLabel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1283
    .local v8, "tvDeliveryLabel":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvDelivery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1285
    .local v7, "tvDelivery":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTelLabel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 1286
    .local v35, "tvTelLabel":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 1288
    .local v34, "tvTel":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvLocationLabel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1289
    .local v17, "tvLocationLabel":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvLocation:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1292
    .local v16, "tvLocation":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvWebSiteLabel:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 1293
    .local v39, "tvWebSiteLabel":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvWebSite:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1298
    .local v38, "tvWebSite":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvHeaderDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1299
    .local v14, "tvHeaderDescription":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->etDescription:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1304
    .local v3, "etDescription":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvHeaderCondition:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1305
    .local v13, "tvHeaderCondition":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->etCondition:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1308
    .local v2, "etCondition":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvTabGallery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 1311
    .local v32, "tvTabGallery":Landroid/widget/TextView;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1312
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1313
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1314
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1315
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1316
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1317
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1318
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1319
    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1320
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1321
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1322
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1323
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1324
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1325
    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1326
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1327
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1328
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1329
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1330
    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1336
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1337
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1338
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1339
    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1340
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1341
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1342
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1344
    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1345
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1347
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1349
    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1350
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1351
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1352
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint12:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint14:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint22:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint25:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint44:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1369
    sget v40, Lic/buzzebeeslib/R$id;->tvMenuInfo:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1370
    .local v20, "tvMenuInfo":Landroid/widget/TextView;
    sget v40, Lic/buzzebeeslib/R$id;->tvMenuGallery:I

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1371
    .local v19, "tvMenuGallery":Landroid/widget/TextView;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1372
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1373
    return-void
.end method

.method private initialParam()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 829
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 830
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    .line 831
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 834
    const-string v1, "purchase"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Purchasing;

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    .line 835
    const-string v1, "purchase_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramIsUsed:Z

    .line 836
    return-void
.end method

.method private isPlayingAnimation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3697
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowInfo:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3713
    :cond_15
    :goto_15
    return v0

    .line 3701
    :cond_16
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowDesc:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowDesc:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3705
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowCond:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowCond:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3709
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    const-string v2, "HIDING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gStateShowGall:Ljava/lang/String;

    const-string v2, "SHOWING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 3713
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private loadGallery()V
    .registers 5

    .prologue
    .line 3209
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/gallery?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3210
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadGallery)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$GetGalleryListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 3212
    return-void
.end method

.method private outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 3460
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3462
    .local v9, "animation":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 3463
    .local v0, "outToBottom":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3464
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3465
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 3467
    return-object v9
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 4156
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 4157
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4158
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4159
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 4007
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 4008
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 4009
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$28;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4035
    :cond_f
    return-void
.end method

.method private playPoint(I)V
    .registers 3
    .param p1, "points"    # I

    .prologue
    .line 3966
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_f

    .line 3967
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 3968
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$27;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3989
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 3945
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 3946
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 3947
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 3953
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 3950
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 4166
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$31;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4202
    return-void
.end method

.method private qtMarketBzbs()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x41200000

    const/high16 v10, 0x40400000

    .line 5177
    sget v7, Lic/buzzebeeslib/R$id;->contentQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->contentQT:Landroid/widget/RelativeLayout;

    .line 5178
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->contentQT:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5179
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->contentQT:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5181
    sget v7, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 5182
    .local v3, "linCircle":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5183
    .local v6, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v9

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->GetPixelFromDips(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5184
    const/4 v4, 0x4

    .line 5185
    .local v4, "numPage":I
    new-array v7, v4, [Ljava/lang/Integer;

    iput-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->arrImg:[Ljava/lang/Integer;

    .line 5186
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    const/4 v7, 0x4

    if-lt v1, v7, :cond_78

    .line 5191
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Landroid/widget/ImageView;

    .line 5192
    .local v2, "imgCircle":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    :goto_53
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-lt v1, v7, :cond_a2

    .line 5203
    sget v7, Lic/buzzebeeslib/R$id;->vpQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 5204
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 5205
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$QTPagerAdapter;

    iget-object v8, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;[Ljava/lang/Integer;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 5207
    new-instance v7, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$40;

    invoke-direct {v7, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$40;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;[Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 5235
    return-void

    .line 5187
    .end local v2    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_78
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5188
    .local v0, "ResID":I
    iget-object v7, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 5186
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 5193
    .end local v0    # "ResID":I
    .restart local v2    # "imgCircle":[Landroid/widget/ImageView;
    :cond_a2
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v2, v1

    .line 5194
    aget-object v7, v2, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5195
    if-nez v1, :cond_c3

    .line 5196
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5200
    :goto_bb
    aget-object v7, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5192
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 5198
    :cond_c3
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bb
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 793
    const-string v0, "paramCampaignID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    .line 794
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 797
    const-string v0, "gMarketGalleryView"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 798
    const-string v0, "gCurrentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    .line 800
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V

    .line 801
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V

    .line 802
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V

    .line 803
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V

    .line 804
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Gallery()V

    .line 806
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    if-lez v0, :cond_56

    .line 807
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    .line 814
    :cond_4d
    :goto_4d
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 815
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doInfo(Landroid/view/View;)V

    .line 826
    :cond_55
    :goto_55
    return-void

    .line 809
    :cond_56
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v0, :cond_4d

    .line 810
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    goto :goto_4d

    .line 816
    :cond_6a
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    .line 818
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_55

    .line 820
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7d

    .line 821
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doGallery(Landroid/view/View;)V

    goto :goto_55

    .line 823
    :cond_7d
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doInfo(Landroid/view/View;)V

    goto :goto_55
.end method

.method private setUI_Campaign(Z)V
    .registers 12
    .param p1, "isFromServer"    # Z

    .prologue
    .line 1376
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v0, :cond_1fb

    .line 1377
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgLike:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_like_icon_gray_2x:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1381
    :goto_11
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvLike:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget v1, v1, Lic/buzzebeeslib/bean/Campaign;->PeopleLike:I

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvCommentCount:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget v1, v1, Lic/buzzebeeslib/bean/Campaign;->Buzz:I

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1384
    if-eqz p1, :cond_247

    .line 1386
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    if-eqz v0, :cond_208

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_208

    .line 1388
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeemConditionAlter:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1389
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutConditionAlter:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1390
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1391
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1426
    :goto_5c
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvHeader:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1428
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDiscountNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatter:Ljava/text/NumberFormat;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->Discount:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v3, 0x5

    invoke-static {v4, v5, v3}, Lic/buzzebeeslib/util/BBUtil;->roundMyData(DI)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPointNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPriceNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25f

    .line 1433
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_257

    .line 1434
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    :cond_ee
    :goto_ee
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v0, v0, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v6, v0

    .line 1451
    .local v6, "dblRemaining":D
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->isFromNoti:Z

    if-eqz v0, :cond_fe

    .line 1452
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget v0, v0, Lic/buzzebeeslib/bean/Campaign;->ItemRemain:I

    int-to-double v6, v0

    .line 1455
    :cond_fe
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2ba

    .line 1456
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_2a2

    .line 1457
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1488
    :goto_11f
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_327

    .line 1489
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->market_days:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1499
    :goto_15e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v0, v0, Lic/buzzebeeslib/bean/Campaign;->Qty:J

    long-to-double v8, v0

    .line 1501
    .local v8, "intRemain":D
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_33b

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayRemain:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_33b

    .line 1502
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1503
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_ribbon_dayremain:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1514
    :goto_191
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    if-eqz v0, :cond_383

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_383

    .line 1515
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1516
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1522
    :goto_1b2
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gSDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1d2

    .line 1523
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_393

    .line 1524
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1525
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_campaign_row_right_bug:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 1535
    :goto_1c9
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1544
    :cond_1d2
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlThumb()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaignThumb:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1545
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaign:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1546
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaign:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1548
    return-void

    .line 1379
    .end local v6    # "dblRemaining":D
    .end local v8    # "intRemain":D
    :cond_1fb
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgLike:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_like_icon_2x:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_11

    .line 1393
    :cond_208
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeemConditionAlter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutConditionAlter:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1404
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsRequirePoints:Z

    if-eqz v0, :cond_22a

    .line 1406
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5c

    .line 1408
    :cond_22a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23e

    .line 1409
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5c

    .line 1411
    :cond_23e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5c

    .line 1422
    :cond_247
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5c

    .line 1436
    :cond_257
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ee

    .line 1438
    :cond_25f
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29a

    .line 1439
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_292

    .line 1440
    iget v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDpi:I

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_ee

    .line 1441
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ee

    .line 1444
    :cond_292
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ee

    .line 1447
    :cond_29a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_ee

    .line 1460
    .restart local v6    # "dblRemaining":D
    :cond_2a2
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "#ff0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11f

    .line 1463
    :cond_2ba
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f1

    .line 1465
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    if-eqz v0, :cond_2e5

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyID:Ljava/lang/String;

    sget-object v1, Lic/buzzebeeslib/LibConst;->SPONSOR_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 1473
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    :goto_2d8
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11f

    .line 1475
    :cond_2e5
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2d8

    .line 1479
    :cond_2f1
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-lez v0, :cond_30f

    .line 1480
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1481
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11f

    .line 1483
    :cond_30f
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->market_soldout:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    const-string v1, "#ff0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_11f

    .line 1492
    :cond_327
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    const-string v1, "Time Over"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    const-string v1, "#ff0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15e

    .line 1504
    .restart local v8    # "intRemain":D
    :cond_33b
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_35a

    const-wide/high16 v0, 0x4024000000000000L

    cmpg-double v0, v8, v0

    if-gez v0, :cond_35a

    .line 1505
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1506
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_ribbon_itemremain:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_191

    .line 1507
    :cond_35a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget v0, v0, Lic/buzzebeeslib/bean/Campaign;->DayProceed:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_37a

    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_37a

    .line 1508
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1509
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_ribbon_new:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_191

    .line 1511
    :cond_37a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_191

    .line 1518
    :cond_383
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1b2

    .line 1527
    :cond_393
    sget v0, Lic/buzzebeeslib/util/ThemesUtil;->gTheme:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a6

    .line 1528
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1529
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_campaign_row_right_bug_smsg:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1c9

    .line 1532
    :cond_3a6
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindViewDrawable(Landroid/view/View;)V

    .line 1533
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_back_border_campaign_row_right_bug:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_1c9
.end method

.method private setUI_Condition()V
    .registers 8

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v6, 0x0

    .line 1608
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    if-eqz v0, :cond_109

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1609
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1618
    :goto_1d
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v0, :cond_139

    .line 1619
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRedeem:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    .line 1623
    :goto_2e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRedeem:Landroid/widget/ImageView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1629
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 1630
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_cmd_draws:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetIsShowShoppingBasket(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    .line 1644
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonBasket:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1649
    :goto_5b
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    .line 1650
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    :cond_76
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v0, v0, Lic/buzzebeeslib/bean/Campaign;->IsRequirePoints:Z

    if-eqz v0, :cond_3b1

    .line 1659
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 1661
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1663
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v4, v3, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1664
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1666
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1667
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1671
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$6;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2127
    :cond_103
    :goto_103
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->scrollMain:Landroid/widget/ScrollView;

    invoke-virtual {v0, v6}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 2128
    return-void

    .line 1611
    :cond_109
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    if-eqz v0, :cond_12e

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 1612
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1614
    :cond_12e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1d

    .line 1621
    :cond_139
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRedeem:Landroid/widget/ImageView;

    sget v1, Lic/buzzebeeslib/R$drawable;->bz_use_gray:I

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/BBUtil;->setImageResource(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_2e

    .line 1631
    :cond_146
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 1632
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_cmd_free:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    .line 1633
    :cond_15f
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    .line 1634
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_cmd_get:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    .line 1635
    :cond_178
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 1636
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_cmd_buy:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    .line 1637
    :cond_191
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 1638
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->campaign_detail_ad_botton_post_watchad:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    .line 1639
    :cond_1aa
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1640
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    const-string v1, "Subscribe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    .line 1646
    :cond_1bf
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonBasket:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_5b

    .line 1707
    :cond_1c6
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_262

    .line 1709
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v4, v3, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1712
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1721
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$7;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$7;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_103

    .line 1757
    :cond_262
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 1759
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v4, v3, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1762
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_3:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_4:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_2:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1770
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1771
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1772
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1773
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1774
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$8;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$8;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_103

    .line 1817
    :cond_315
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1819
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint13:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserRequirePoints:J

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1821
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint23:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v4, v3, Lic/buzzebeeslib/bean/Campaign;->UserPackagePoints:J

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line2_2:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1822
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint24:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserPackagePrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1826
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint42:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line4_1:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1827
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint43:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->UserSummaryPrices:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1831
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgInfoBuyPoint41:Landroid/widget/ImageView;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$9;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_103

    .line 1871
    :cond_3b1
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 1873
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1875
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutInfoBuyPoint4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1879
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1880
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1881
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvline4:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1883
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint31:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1884
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1885
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1886
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint34:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1888
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint32:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_3:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvInfoBuyPoint33:Landroid/widget/TextView;

    sget v1, Lic/buzzebeeslib/R$string;->mk_detail_info_buy_point_line3_4:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_103
.end method

.method private setUI_Description()V
    .registers 3

    .prologue
    .line 1596
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1597
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    :goto_19
    return-void

    .line 1599
    :cond_1a
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1600
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1602
    :cond_3e
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_19
.end method

.method private setUI_Gallery()V
    .registers 6

    .prologue
    const/16 v4, 0xb

    .line 2132
    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 2134
    .local v1, "marketCampaignGalleryAdapter":Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$CampaignGalleryAdapter;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    if-eqz v2, :cond_3e

    .line 2135
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    if-eqz v2, :cond_80

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_80

    .line 2136
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gSDK_INT:I

    if-lt v2, v4, :cond_59

    .line 2138
    :try_start_1e
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_2d

    .line 2139
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_3f

    .line 2168
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d0

    .line 2170
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2177
    :cond_3e
    :goto_3e
    return-void

    .line 2141
    :catch_3f
    move-exception v0

    .line 2142
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setUI_Gallery|error := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 2146
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_59
    :try_start_59
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_65} :catch_66

    goto :goto_2d

    .line 2147
    :catch_66
    move-exception v0

    .line 2148
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setUI_Gallery|error := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 2154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_80
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gSDK_INT:I

    if-lt v2, v4, :cond_a6

    .line 2156
    :try_start_84
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8b} :catch_8c

    goto :goto_2d

    .line 2157
    :catch_8c
    move-exception v0

    .line 2158
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setUI_Gallery|error := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 2162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a6
    :try_start_a6
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$id;->layoutRoot:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b3} :catch_b5

    goto/16 :goto_2d

    .line 2163
    :catch_b5
    move-exception v0

    .line 2164
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setUI_Gallery|error := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 2172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d0
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3e
.end method

.method private setUI_Info()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1552
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1553
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDelivery:Landroid/widget/TextView;

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_delivery_by_post:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1558
    :goto_16
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    if-eqz v1, :cond_9d

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 1559
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTel:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyTel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    :goto_31
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Location:Ljava/lang/String;

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Location:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 1565
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvLocation:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1571
    :goto_4a
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    if-eqz v1, :cond_d9

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 1572
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgWebSite:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1573
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutWebSite:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1574
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineWebSite:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1575
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvWebSite:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1583
    :goto_72
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    if-eqz v1, :cond_f2

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f2

    .line 1584
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgFanpage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1585
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutFanpage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1586
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineFanPage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1593
    :goto_93
    return-void

    .line 1555
    :cond_94
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDelivery:Landroid/widget/TextView;

    sget v2, Lic/buzzebeeslib/R$string;->mk_detail_info_tab_delivery_at_shop:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_16

    .line 1561
    :cond_9d
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTel:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31

    .line 1567
    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyAddress:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyCity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1568
    .local v0, "strAddress":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvLocation:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4a

    .line 1577
    .end local v0    # "strAddress":Ljava/lang/String;
    :cond_d9
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgWebSite:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1578
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutWebSite:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1579
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineWebSite:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1580
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvWebSite:Landroid/widget/TextView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyWebsite:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 1588
    :cond_f2
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgFanpage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1589
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutFanpage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1590
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineFanPage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_93
.end method

.method private showCustominput()V
    .registers 7

    .prologue
    .line 4406
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v3, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    .line 4408
    .local v2, "url":Ljava/lang/String;
    const-string v3, "{campaign_id}"

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4409
    const-string v3, "{token}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4410
    const-string v3, "{return_url}"

    const-string v4, "bzbs_return_url"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4411
    const-string v3, "{cancel_url}"

    const-string v4, "bzbs_cancel_url"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4412
    const-string v3, "{locale}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4413
    const-string v3, "{user_id}"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 4415
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showCustominput|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4417
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewCustomInputActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4419
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

    .line 4420
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4422
    :cond_8a
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 4423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_b0} :catch_f0

    move-result-object v2

    .line 4431
    :goto_b1
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showCustominput|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4434
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4436
    return-void

    .line 4425
    :cond_d0
    :try_start_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 4427
    :catch_f0
    move-exception v0

    .line 4428
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

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
    .registers 12

    .prologue
    const/4 v10, 0x1

    const-wide v6, 0x3feccccccccccccdL

    const-wide v8, 0x3fe6666666666666L

    .line 2450
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_107

    .line 2452
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2454
    .local v2, "dialogSerial":Landroid/app/Dialog;
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2455
    sget v4, Lic/buzzebeeslib/R$layout;->bz_dialog_new_show_buy_point:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2456
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2460
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-eq v4, v5, :cond_40

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_108

    .line 2461
    :cond_40
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2462
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

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    .line 2474
    :goto_65
    sget v4, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2475
    .local v1, "btnOK":Landroid/widget/Button;
    sget v4, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2477
    .local v0, "btnClose":Landroid/widget/Button;
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2478
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2480
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet1:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2481
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet2:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2482
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet3:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2483
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet4:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2484
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet5:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2485
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet6:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2486
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet7:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2487
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet9:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2488
    sget v4, Lic/buzzebeeslib/R$id;->tvDealsGet8:I

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2490
    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$12;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$12;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2497
    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$13;

    invoke-direct {v4, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$13;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2504
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2508
    .end local v0    # "btnClose":Landroid/widget/Button;
    .end local v1    # "btnOK":Landroid/widget/Button;
    .end local v2    # "dialogSerial":Landroid/app/Dialog;
    .end local v3    # "window":Landroid/view/Window;
    :cond_107
    return-void

    .line 2463
    .restart local v2    # "dialogSerial":Landroid/app/Dialog;
    :cond_108
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    if-ne v4, v5, :cond_13e

    .line 2464
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2465
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

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65

    .line 2466
    .end local v3    # "window":Landroid/view/Window;
    :cond_13e
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v10, :cond_171

    .line 2467
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2468
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

    goto/16 :goto_65

    .line 2470
    .end local v3    # "window":Landroid/view/Window;
    :cond_171
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2471
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

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_65
.end method

.method private showDialogConditionDealsGet()V
    .registers 23

    .prologue
    .line 2198
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 2200
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2202
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2203
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_condition:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2204
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1ac

    .line 2209
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2210
    .local v19, "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2224
    :goto_6a
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2225
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2226
    .local v15, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2227
    .local v16, "tvCondition1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2228
    .local v17, "tvCondition3":Landroid/widget/TextView;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2229
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2230
    .local v9, "btnOK":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2231
    .local v8, "btnClose":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2232
    .local v18, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v14, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2233
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2234
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2237
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/DSNSKW_.TTF"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 2238
    .local v13, "font_header":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 2240
    .local v12, "font":Landroid/graphics/Typeface;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2241
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2242
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2243
    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2245
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2246
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2247
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v2, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14c

    .line 2251
    sget v2, Lic/buzzebeeslib/R$string;->dialog_new_serial_label_button_registration:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2256
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2257
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2258
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_259

    .line 2261
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2267
    :goto_194
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$10;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2278
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$11;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2319
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2323
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnOK":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "font":Landroid/graphics/Typeface;
    .end local v13    # "font_header":Landroid/graphics/Typeface;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v15    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v16    # "tvCondition1":Landroid/widget/TextView;
    .end local v17    # "tvCondition3":Landroid/widget/TextView;
    .end local v18    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v19    # "window":Landroid/view/Window;
    :cond_1ab
    return-void

    .line 2211
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_1ac
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1ef

    .line 2212
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2213
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2214
    .end local v19    # "window":Landroid/view/Window;
    :cond_1ef
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_225

    .line 2215
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2216
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2218
    .end local v19    # "window":Landroid/view/Window;
    :cond_225
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2219
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2263
    .restart local v4    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v8    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "btnOK":Landroid/widget/Button;
    .restart local v10    # "currentDateandTime":Ljava/lang/String;
    .restart local v12    # "font":Landroid/graphics/Typeface;
    .restart local v13    # "font_header":Landroid/graphics/Typeface;
    .restart local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v15    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v16    # "tvCondition1":Landroid/widget/TextView;
    .restart local v17    # "tvCondition3":Landroid/widget/TextView;
    .restart local v18    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_259
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_194
.end method

.method private showDialogConditionDraws()V
    .registers 23

    .prologue
    .line 2512
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_18a

    .line 2514
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2516
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2517
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_condition:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2518
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2522
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18b

    .line 2523
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2524
    .local v19, "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2537
    :goto_6a
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2538
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2539
    .local v15, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 2540
    .local v18, "tvShowTimeRedeem":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2541
    .local v16, "tvCondition1":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 2542
    .local v17, "tvCondition3":Landroid/widget/TextView;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2543
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2544
    .local v9, "btnOK":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2548
    .local v8, "btnClose":Landroid/widget/Button;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/DSNSKW_.TTF"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    .line 2549
    .local v13, "font_header":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/kit55p.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 2551
    .local v12, "font":Landroid/graphics/Typeface;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2552
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2553
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2554
    invoke-virtual {v8, v12}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2556
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2557
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2558
    sget v2, Lic/buzzebeeslib/R$id;->tvCondition3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2564
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v14, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2565
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2566
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2572
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2573
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2574
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<br"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 2577
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2584
    :goto_173
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$14;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2595
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$15;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2614
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2618
    .end local v4    # "imgCampaign":Landroid/widget/ImageView;
    .end local v8    # "btnClose":Landroid/widget/Button;
    .end local v9    # "btnOK":Landroid/widget/Button;
    .end local v10    # "currentDateandTime":Ljava/lang/String;
    .end local v11    # "dialogSerial":Landroid/app/Dialog;
    .end local v12    # "font":Landroid/graphics/Typeface;
    .end local v13    # "font_header":Landroid/graphics/Typeface;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v15    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v16    # "tvCondition1":Landroid/widget/TextView;
    .end local v17    # "tvCondition3":Landroid/widget/TextView;
    .end local v18    # "tvShowTimeRedeem":Landroid/widget/TextView;
    .end local v19    # "window":Landroid/view/Window;
    :cond_18a
    return-void

    .line 2525
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_18b
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1ce

    .line 2526
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2527
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2528
    .end local v19    # "window":Landroid/view/Window;
    :cond_1ce
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_204

    .line 2529
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2530
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2532
    .end local v19    # "window":Landroid/view/Window;
    :cond_204
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    .line 2533
    .restart local v19    # "window":Landroid/view/Window;
    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v6, 0x3feccccccccccccdL

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-double v6, v3

    const-wide v20, 0x3fe6666666666666L

    mul-double v6, v6, v20

    double-to-int v3, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    goto/16 :goto_6a

    .line 2579
    .restart local v4    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v8    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "btnOK":Landroid/widget/Button;
    .restart local v10    # "currentDateandTime":Ljava/lang/String;
    .restart local v12    # "font":Landroid/graphics/Typeface;
    .restart local v13    # "font_header":Landroid/graphics/Typeface;
    .restart local v14    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v15    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v16    # "tvCondition1":Landroid/widget/TextView;
    .restart local v17    # "tvCondition3":Landroid/widget/TextView;
    .restart local v18    # "tvShowTimeRedeem":Landroid/widget/TextView;
    :cond_238
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_173
.end method

.method private showDialogDealsGet()V
    .registers 21

    .prologue
    .line 2811
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1a2

    .line 2812
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2813
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2814
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_deals_get:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2815
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2819
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a3

    .line 2820
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2821
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

    .line 2839
    :goto_6a
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2840
    .local v15, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v13, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2841
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2842
    .local v10, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    .line 2845
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2846
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2848
    .local v14, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnOK:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 2849
    .local v9, "btnUsed":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2851
    .local v8, "btnClose":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2852
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2853
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2854
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2856
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2857
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2858
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2859
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet4:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2860
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet6:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2861
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet7:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2862
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet9:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2863
    sget v2, Lic/buzzebeeslib/R$id;->tvDealsGet8:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2869
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2870
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2873
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$17;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$17;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2887
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$18;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v9, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2903
    invoke-virtual {v11}, Landroid/app/Dialog;->dismiss()V

    .line 2904
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2905
    .local v16, "uri":Landroid/net/Uri;
    new-instance v12, Landroid/content/Intent;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-direct {v12, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2906
    .local v12, "intent":Landroid/content/Intent;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 2907
    invoke-virtual {v9}, Landroid/widget/Button;->performClick()Z

    .line 2909
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
    :cond_1a2
    return-void

    .line 2822
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_1a3
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e6

    .line 2823
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2824
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

    .line 2825
    .end local v17    # "window":Landroid/view/Window;
    :cond_1e6
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21c

    .line 2826
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2827
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

    .line 2829
    .end local v17    # "window":Landroid/view/Window;
    :cond_21c
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2830
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

.method private showDialogDraws()V
    .registers 21

    .prologue
    .line 2699
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_185

    .line 2700
    new-instance v11, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2701
    .local v11, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2702
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_draws:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2703
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2707
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_186

    .line 2708
    :cond_38
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2709
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

    .line 2727
    :goto_6a
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 2728
    .local v16, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v12, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2729
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 2730
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    .line 2738
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2739
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2748
    .local v14, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws5:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2751
    .local v15, "tvSerial5":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2753
    .local v8, "btnClose":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2754
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2756
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2758
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws1:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2759
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws2:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2760
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws3:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2761
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws4:I

    invoke-virtual {v11, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2770
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2771
    .local v13, "strPreText":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-wide v6, v5, Lic/buzzebeeslib/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 2773
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

    .line 2776
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$16;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$16;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2805
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 2808
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

    .line 2710
    .restart local v11    # "dialogSerial":Landroid/app/Dialog;
    :cond_186
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c9

    .line 2711
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2712
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

    .line 2713
    .end local v17    # "window":Landroid/view/Window;
    :cond_1c9
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1ff

    .line 2714
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2715
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

    .line 2717
    .end local v17    # "window":Landroid/view/Window;
    :cond_1ff
    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    .line 2718
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
    .line 3055
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 3056
    new-instance v8, Landroid/app/Dialog;

    invoke-direct {v8, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 3058
    .local v8, "dialogSerial":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3059
    sget v0, Lic/buzzebeeslib/R$layout;->bz_dialog_new_error:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 3060
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3068
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_36

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c7

    .line 3069
    :cond_36
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 3070
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

    .line 3082
    :goto_65
    sget v0, Lic/buzzebeeslib/R$id;->LayoutHeader:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 3083
    .local v6, "LayoutHeader":Landroid/widget/RelativeLayout;
    sget v0, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 3084
    .local v2, "imgCampaign":Landroid/widget/ImageView;
    sget v0, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 3085
    .local v9, "tvCampaignDesc":Landroid/widget/TextView;
    sget v0, Lic/buzzebeeslib/R$id;->tvError:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3086
    .local v10, "tvError":Landroid/widget/TextView;
    sget v0, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 3088
    .local v7, "btnClose":Landroid/widget/Button;
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3089
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3090
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3092
    if-eqz p2, :cond_16c

    .line 3093
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3101
    :goto_a2
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v1}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 3102
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3103
    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3105
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$20;

    invoke-direct {v0, p0, v8}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$20;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3116
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 3119
    .end local v2    # "imgCampaign":Landroid/widget/ImageView;
    .end local v6    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .end local v7    # "btnClose":Landroid/widget/Button;
    .end local v8    # "dialogSerial":Landroid/app/Dialog;
    .end local v9    # "tvCampaignDesc":Landroid/widget/TextView;
    .end local v10    # "tvError":Landroid/widget/TextView;
    .end local v11    # "window":Landroid/view/Window;
    :cond_c6
    return-void

    .line 3071
    .restart local v8    # "dialogSerial":Landroid/app/Dialog;
    :cond_c7
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_107

    .line 3072
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 3073
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

    .line 3074
    .end local v11    # "window":Landroid/view/Window;
    :cond_107
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13b

    .line 3075
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 3076
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

    .line 3078
    .end local v11    # "window":Landroid/view/Window;
    :cond_13b
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 3079
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

    .line 3095
    .restart local v2    # "imgCampaign":Landroid/widget/ImageView;
    .restart local v6    # "LayoutHeader":Landroid/widget/RelativeLayout;
    .restart local v7    # "btnClose":Landroid/widget/Button;
    .restart local v9    # "tvCampaignDesc":Landroid/widget/TextView;
    .restart local v10    # "tvError":Landroid/widget/TextView;
    :cond_16c
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_a2
.end method

.method private showDialogSentByPost()V
    .registers 19

    .prologue
    .line 2912
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_141

    .line 2914
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_13

    .line 2915
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2918
    :cond_13
    new-instance v10, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2919
    .local v10, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 2920
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_sent_by_post:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 2921
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2924
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-eq v2, v3, :cond_45

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    if-ne v2, v3, :cond_142

    .line 2925
    :cond_45
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2926
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

    .line 2939
    :goto_75
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2940
    .local v13, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2941
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 2942
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    .line 2945
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 2946
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 2948
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 2950
    .local v8, "btnClose":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2951
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2954
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2955
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2956
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2957
    sget v2, Lic/buzzebeeslib/R$id;->tvDraws4:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2963
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v3}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlSmall()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 2964
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2966
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$19;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$19;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2979
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 2981
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

    .line 2927
    .restart local v10    # "dialogSerial":Landroid/app/Dialog;
    :cond_142
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_183

    .line 2928
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2929
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

    .line 2930
    .end local v14    # "window":Landroid/view/Window;
    :cond_183
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b7

    .line 2931
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2932
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

    .line 2934
    .end local v14    # "window":Landroid/view/Window;
    :cond_1b7
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 2935
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
    .line 4315
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_13d

    .line 4316
    new-instance v10, Landroid/app/Dialog;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 4317
    .local v10, "dialogSerial":Landroid/app/Dialog;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4318
    sget v2, Lic/buzzebeeslib/R$layout;->bz_dialog_new_winner:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 4319
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4323
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x3

    if-eq v2, v5, :cond_38

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x4

    if-ne v2, v5, :cond_13e

    .line 4324
    :cond_38
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 4325
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

    .line 4345
    :goto_69
    sget v2, Lic/buzzebeeslib/R$id;->imgCampaign:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 4346
    .local v4, "imgCampaign":Landroid/widget/ImageView;
    sget v2, Lic/buzzebeeslib/R$id;->tvCampaignDesc:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 4347
    .local v12, "tvCampaignDesc":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4348
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 4349
    .local v14, "tvWinner2":Landroid/widget/TextView;
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 4351
    sget v2, Lic/buzzebeeslib/R$id;->btnClose:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 4357
    .local v8, "btnClose":Landroid/widget/Button;
    sget v2, Lic/buzzebeeslib/R$id;->tvShowTimeRedeem:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 4358
    .local v13, "tvShowTimeRedeem":Landroid/widget/TextView;
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM yyyy HH:mm"

    invoke-direct {v11, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4359
    .local v11, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 4360
    .local v9, "currentDateandTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget v5, Lic/buzzebeeslib/R$string;->dialog_new_serial_show_redeemed_on:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

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

    .line 4363
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4365
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4367
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner1:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4368
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner2:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4369
    sget v2, Lic/buzzebeeslib/R$id;->tvWinner3:I

    invoke-virtual {v10, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4375
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v3

    .line 4376
    .local v3, "img_url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v5, 0x0

    sget v6, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 4377
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4380
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4383
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$32;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$32;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4398
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 4401
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

    .line 4326
    .restart local v10    # "dialogSerial":Landroid/app/Dialog;
    :cond_13e
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x2

    if-ne v2, v5, :cond_180

    .line 4327
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 4328
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

    .line 4329
    .end local v15    # "window":Landroid/view/Window;
    :cond_180
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1b4

    .line 4330
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 4331
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

    .line 4333
    .end local v15    # "window":Landroid/view/Window;
    :cond_1b4
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 4334
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

    .line 2180
    const-string v4, ""

    sget v5, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    iput-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 2181
    const/4 v3, 0x0

    .line 2182
    .local v3, "url":Ljava/lang/String;
    if-eqz p1, :cond_7c

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7c

    .line 2184
    new-instance v2, Lic/buzzebeeslib/util/DeviceHelper;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lic/buzzebeeslib/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2185
    .local v2, "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    .local v0, "carrier":Ljava/lang/String;
    invoke-virtual {v2}, Lic/buzzebeeslib/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 2188
    .local v1, "contact_number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/campaign/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/redeem?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 2190
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v1    # "contact_number":Ljava/lang/String;
    .end local v2    # "deviceHelper":Lic/buzzebeeslib/util/DeviceHelper;
    :cond_7c
    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OK redeem url="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    const/4 v4, 0x0

    new-instance v5, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDealsGetListener;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDealsGetListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-static {v3, v4, v5}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 2194
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 3193
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$21;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$21;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3200
    return-void
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 5311
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 5313
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
    .line 4960
    invoke-static {}, Lic/buzzebeeslib/util/BBUtil;->IsSamsungMobile()Z

    move-result v9

    if-nez v9, :cond_2b

    .line 4962
    const-string v3, "ic.buzzebees"

    .line 4964
    .local v3, "appPackageName":Ljava/lang/String;
    :try_start_8
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const-string v11, "market://details?id=ic.buzzebees"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_18} :catch_19

    .line 5099
    .end local v3    # "appPackageName":Ljava/lang/String;
    :cond_18
    :goto_18
    return-void

    .line 4965
    .restart local v3    # "appPackageName":Ljava/lang/String;
    :catch_19
    move-exception v2

    .line 4966
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const-string v11, "http://play.google.com/store/apps/details?id=ic.buzzebees"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_18

    .line 4973
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "appPackageName":Ljava/lang/String;
    :cond_2b
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    if-nez v9, :cond_18

    .line 4981
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v9, :cond_18

    .line 4982
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "5"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 4984
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doWatchAdd()V

    goto :goto_18

    .line 4986
    :cond_43
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v9, v9, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v9, :cond_18

    .line 4987
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 4988
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v6

    .line 4989
    .local v6, "lgPoints":J
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_8a

    long-to-double v10, v6

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v9, v10, v12

    if-gez v9, :cond_8a

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8a

    .line 4990
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogBuyPoint()V

    goto :goto_18

    .line 5020
    :cond_8a
    const/4 v0, 0x0

    .line 5021
    .local v0, "IsGotoProfile":Z
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 5022
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ef

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ef

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ef

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ef

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ef

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    .line 5023
    :cond_ef
    const/4 v0, 0x1

    .line 5026
    :cond_f0
    if-eqz v0, :cond_12e

    .line 5027
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5028
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    sget v9, Lic/buzzebeeslib/R$string;->purchasing_deal_free_command_4:I

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lic/buzzebeeslib/R$string;->dialog_msg_address:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const-string v10, "Yes"

    new-instance v11, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$38;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$38;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 5036
    const-string v10, "No"

    new-instance v11, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$39;

    invoke-direct {v11, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$39;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5041
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5042
    .local v1, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_18

    .line 5045
    .end local v1    # "alert":Landroid/app/AlertDialog;
    .end local v4    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_12e
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_235

    .line 5046
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v9}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14b

    .line 5047
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->checkAddressBeforeRedeem(Lic/buzzebeeslib/bean/Campaign;)V

    goto/16 :goto_18

    .line 5049
    :cond_14b
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f1

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string v10, "api"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f1

    .line 5051
    const-string v9, ""

    sget v10, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {p0, v9, v10, v11, v12}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v9

    iput-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 5052
    const-string v9, "OAT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ApiPointType= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5054
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v8, v9, Lic/buzzebeeslib/bean/Campaign;->Website:Ljava/lang/String;

    .line 5055
    .local v8, "url":Ljava/lang/String;
    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 5056
    .local v5, "params":Lcom/loopj/android/http/RequestParams;
    const-string v9, "token"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    const-string v9, "OAT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5058
    const-string v9, "OAT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "token= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->PointType:Ljava/lang/String;

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e7

    .line 5060
    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostSubmitListener;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostSubmitListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-static {v8, v5, v9}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_18

    .line 5062
    :cond_1e7
    new-instance v9, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDealsGetListener;

    invoke-direct {v9, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostDealsGetListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-static {v8, v5, v9}, Lic/buzzebeeslib/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    goto/16 :goto_18

    .line 5065
    .end local v5    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v8    # "url":Ljava/lang/String;
    :cond_1f1
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20e

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string v10, "web"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20e

    .line 5066
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_18

    .line 5067
    :cond_20e
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21f

    .line 5068
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_18

    .line 5072
    :cond_21f
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    .line 5073
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDraws()V

    goto/16 :goto_18

    .line 5075
    :cond_230
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDealsGet()V

    goto/16 :goto_18

    .line 5080
    :cond_235
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "3"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_246

    .line 5081
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->doBuy(Landroid/view/View;)V

    goto/16 :goto_18

    .line 5083
    :cond_246
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v9, v9, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_257

    .line 5084
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDraws()V

    goto/16 :goto_18

    .line 5086
    :cond_257
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogConditionDealsGet()V

    goto/16 :goto_18
.end method

.method public doActionPurchasing(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4439
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    .line 4441
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    if-eqz v0, :cond_70

    .line 4443
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 4444
    const-string v3, ""

    sget v4, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 4446
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4447
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OK redeem url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4449
    .local v1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostWinnerListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-static {v2, v1, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 4498
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 4482
    :cond_71
    iget-object v3, v0, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 4483
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->checkAddressBeforePurchasing(Lic/buzzebeeslib/bean/Campaign;)V

    goto :goto_70

    .line 4485
    :cond_7d
    iget v3, v0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-lez v3, :cond_e4

    iget v3, v0, Lic/buzzebeeslib/bean/Campaign;->UseCount:I

    iget v4, v0, Lic/buzzebeeslib/bean/Campaign;->RedeemCount:I

    if-ne v3, v4, :cond_e4

    .line 4486
    const-string v3, ""

    sget v4, Lic/buzzebeeslib/R$string;->please_wait:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 4488
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4489
    .restart local v2    # "url":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OK redeem url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4491
    .restart local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-static {v2, v1, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_70

    .line 4493
    .end local v1    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/InputItem;>;"
    .end local v2    # "url":Ljava/lang/String;
    :cond_e4
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogDealsGet()V

    goto :goto_70
.end method

.method public doBuy(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3123
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->goBuyMarketPlace(Lic/buzzebeeslib/bean/Campaign;)V

    .line 3124
    return-void
.end method

.method public doBuyPoint()V
    .registers 7

    .prologue
    .line 4585
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4586
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "payment/buypoint.aspx?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&campaignId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4588
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

    .line 4589
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5e} :catch_7e

    move-result-object v2

    .line 4595
    :cond_5f
    :goto_5f
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "doBuyPoint|url := "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    const-string v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4598
    iget v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v1, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4599
    return-void

    .line 4591
    :catch_7e
    move-exception v0

    .line 4592
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

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

.method public doGallery(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3571
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationGall()V

    .line 3572
    return-void
.end method

.method public doGotoFanPage(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3418
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 3419
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://www.facebook.com/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3420
    .local v1, "url":Ljava/lang/String;
    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 3421
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3423
    :cond_42
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3424
    .local v0, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3426
    .end local v0    # "openUrlIntent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_50
    return-void
.end method

.method public doGotoLikeFanPage(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3429
    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 3432
    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fb://page/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3434
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3435
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_31
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_31} :catch_32

    .line 3446
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_31
    :goto_31
    return-void

    .line 3436
    :catch_32
    move-exception v0

    .line 3438
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "https://www.facebook.com/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v6, v6, Lic/buzzebeeslib/bean/Campaign;->FanPageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3439
    .local v4, "url":Ljava/lang/String;
    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 3440
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3442
    :cond_65
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3443
    .local v2, "openUrlIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_31
.end method

.method public doInfo(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3471
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationInfo()V

    .line 3472
    return-void
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3791
    new-instance v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$26;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$26;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3826
    return-void
.end method

.method public doMarketPlaceLocation(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3177
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/PlaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PAGE_MODE_ACTIVITY"

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3181
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3182
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3190
    return-void
.end method

.method public doMarketPlaceReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3203
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/MarketPlaceReviewListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3205
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 3206
    return-void
.end method

.method public doShareCampaign(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    .line 3398
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3399
    .local v3, "params":Landroid/os/Bundle;
    const-string v1, "app_id"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3400
    const-string v1, "to"

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    const-string v1, "name"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    const-string v1, "caption"

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3403
    const-string v1, "picture"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BZBS_BLOB:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "campaigns/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    const-string v1, "link"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "og/campaign/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "?appId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "402705486466922"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v8, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    .line 3407
    .local v8, "strDetail":Ljava/lang/String;
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 3408
    .local v7, "arrDetail":[Ljava/lang/String;
    array-length v1, v7

    if-ne v1, v5, :cond_96

    .line 3409
    const/4 v1, 0x0

    aget-object v8, v7, v1

    .line 3411
    :cond_96
    const-string v1, "description"

    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3413
    new-instance v0, Lic/buzzebeeslib/util/fb/FacebookDialog;

    invoke-direct {v0}, Lic/buzzebeeslib/util/fb/FacebookDialog;-><init>()V

    .line 3414
    .local v0, "objFacebookDialog":Lic/buzzebeeslib/util/fb/FacebookDialog;
    const-string v2, "feed"

    new-instance v4, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v1}, Lic/buzzebeeslib/util/ListenerUtil$FacebookDialogListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lic/buzzebeeslib/util/fb/FacebookDialog;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    return-void
.end method

.method public doShoppingBasket(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 5299
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "payment/ShoppingCart.aspx?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 5301
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doShoppingBasket|url := "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5303
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/WebViewBuyPointActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5305
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5306
    iget v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_SHOPPING_BASKET:I

    invoke-virtual {p0, v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5307
    return-void
.end method

.method public doTabGallery(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3683
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationGall()V

    .line 3684
    return-void
.end method

.method public doTabInfo(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3671
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->PlayAnimationInfo()V

    .line 3672
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 557
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 561
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v1, :cond_1b

    .line 562
    const-string v1, "bzbs_return_url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "bzbs_return_url":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 564
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showRedeem(Ljava/lang/String;)V

    .line 602
    .end local v0    # "bzbs_return_url":Ljava/lang/String;
    :cond_1a
    :goto_1a
    return-void

    .line 568
    :cond_1b
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v1, :cond_1a

    .line 592
    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->RC_WEBVIEW_SHOPPING_BASKET:I

    if-ne p1, v1, :cond_1a

    .line 593
    const-string v1, "bzbs_buy_return_url"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 343
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 345
    if-eqz p1, :cond_18a

    .line 346
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v14, "public void onCreate(Bundle savedInstanceState != null) {"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_e
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->requestWindowFeature(I)Z

    .line 351
    invoke-static/range {p0 .. p0}, Lic/buzzebeeslib/util/ThemesUtil;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 352
    sget v13, Lic/buzzebeeslib/R$layout;->bz_market_place_detail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setContentView(I)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "fonts/DSNSKW_.TTF"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontHeader:Landroid/graphics/Typeface;

    .line 357
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "fonts/kit55p.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 359
    new-instance v13, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 382
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 385
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v14, "UA-42649771-1"

    invoke-virtual {v13, v14}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 389
    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    .line 391
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gSDK_INT:I

    .line 393
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initialParam()V

    .line 394
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->initialLayout()V

    .line 395
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsHasAddress()V

    .line 397
    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    .line 398
    .local v11, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 400
    new-instance v2, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "cache_market"

    invoke-direct {v2, v13, v14}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 401
    .local v2, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x3e800000

    invoke-virtual {v2, v13, v14}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 402
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 403
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 404
    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenHeight:I

    .line 405
    iget v13, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenWidth:I

    .line 407
    move-object/from16 v0, p0

    iget v12, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenWidth:I

    .line 408
    .local v12, "width":I
    move-object/from16 v0, p0

    iget v8, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenHeight:I

    .line 410
    .local v8, "height":I
    if-le v8, v12, :cond_195

    .end local v8    # "height":I
    :goto_ca
    div-int/lit8 v10, v8, 0x2

    .line 411
    .local v10, "longest":I
    new-instance v13, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14, v10}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v14, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v13, v14}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v14

    invoke-virtual {v13, v14, v2}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 417
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenWidth:I

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageWidth:I

    .line 418
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenWidth:I

    mul-int/lit8 v13, v13, 0x2

    div-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageHeight:I

    .line 421
    if-nez p1, :cond_287

    .line 423
    const-string v3, ""

    .line 425
    .local v3, "cache_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    if-lez v13, :cond_198

    .line 426
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 433
    :cond_11f
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v3, v13}, Lic/buzzebeeslib/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "catch_market":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "catch_market "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_204

    .line 439
    :try_start_145
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 440
    .local v9, "jsonRoot":Lorg/json/JSONObject;
    new-instance v4, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v4, v9}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 441
    .local v4, "campaign":Lic/buzzebeeslib/bean/Campaign;
    move-object/from16 v0, p0

    iput-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 442
    new-instance v13, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_15f
    .catch Lorg/json/JSONException; {:try_start_145 .. :try_end_15f} :catch_1aa

    .line 458
    .end local v4    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v9    # "jsonRoot":Lorg/json/JSONObject;
    :goto_15f
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    if-lez v13, :cond_1af

    .line 459
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    .end local v3    # "cache_name":Ljava/lang/String;
    .end local v5    # "catch_market":Ljava/lang/String;
    :goto_189
    return-void

    .line 348
    .end local v2    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v10    # "longest":I
    .end local v11    # "metrics":Landroid/util/DisplayMetrics;
    .end local v12    # "width":I
    :cond_18a
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v14, "public void onCreate(Bundle savedInstanceState == null) {"

    invoke-static {v13, v14}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .restart local v2    # "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "height":I
    .restart local v11    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v12    # "width":I
    :cond_195
    move v8, v12

    .line 410
    goto/16 :goto_ca

    .line 428
    .end local v8    # "height":I
    .restart local v3    # "cache_name":Ljava/lang/String;
    .restart local v10    # "longest":I
    :cond_198
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_11f

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_11f

    .line 451
    .restart local v5    # "catch_market":Ljava/lang/String;
    :catch_1aa
    move-exception v7

    .line 452
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15f

    .line 462
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_1af
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_1fc

    .line 463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V

    .line 464
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V

    .line 465
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V

    .line 466
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V

    .line 467
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->loadGallery()V

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

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

    .line 469
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    goto :goto_189

    .line 471
    :cond_1fc
    const-string v13, "Invalid campaign data!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    goto :goto_189

    .line 476
    :cond_204
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    if-lez v13, :cond_230

    .line 477
    move-object/from16 v0, p0

    iget v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_189

    .line 480
    :cond_230
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v13, :cond_27e

    .line 481
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Campaign(Z)V

    .line 482
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Info()V

    .line 483
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Description()V

    .line 484
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setUI_Condition()V

    .line 485
    invoke-direct/range {p0 .. p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->loadGallery()V

    .line 486
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v14, "campaign"

    const-string v15, "view"

    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

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

    .line 487
    move-object/from16 v0, p0

    iget-object v13, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v13, v13, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v13}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V

    goto/16 :goto_189

    .line 489
    :cond_27e
    const-string v13, "Invalid campaign data!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_189

    .line 516
    .end local v3    # "cache_name":Ljava/lang/String;
    .end local v5    # "catch_market":Ljava/lang/String;
    :cond_287
    invoke-direct/range {p0 .. p1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_189
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 4887
    const/4 v0, 0x0

    .line 4888
    .local v0, "_progressDialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_86

    .line 4947
    :goto_7
    return-object v0

    .line 4890
    :pswitch_8
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 4891
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 4892
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4893
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 4894
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4902
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$35;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$35;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4910
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 4911
    goto :goto_7

    .line 4913
    :pswitch_3e
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    .line 4914
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 4915
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file_again:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 4916
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 4917
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4918
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    const/4 v2, -0x1

    sget v3, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_again:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$36;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$36;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4936
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$37;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$37;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4944
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 4888
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

    .line 665
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 666
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 677
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 679
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 680
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 681
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    .line 682
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 683
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbLoadingCampaign:Landroid/widget/ProgressBar;

    .line 684
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramPurchase:Lic/buzzebeeslib/bean/Purchasing;

    .line 685
    iput-boolean v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramIsUsed:Z

    .line 689
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDelivery:Landroid/widget/TextView;

    .line 690
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTel:Landroid/widget/TextView;

    .line 691
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvLocation:Landroid/widget/TextView;

    .line 693
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgWebSite:Landroid/widget/ImageView;

    .line 694
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutWebSite:Landroid/widget/RelativeLayout;

    .line 695
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvWebSite:Landroid/widget/TextView;

    .line 696
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineWebSite:Landroid/widget/TextView;

    .line 698
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgFanpage:Landroid/widget/ImageView;

    .line 699
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutFanpage:Landroid/widget/RelativeLayout;

    .line 700
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->lineFanPage:Landroid/widget/TextView;

    .line 702
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etDescription:Landroid/widget/TextView;

    .line 704
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->etCondition:Landroid/widget/TextView;

    .line 706
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatter:Ljava/text/NumberFormat;

    .line 707
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 708
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mHandler:Landroid/os/Handler;

    .line 710
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    .line 712
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvLike:Landroid/widget/TextView;

    .line 713
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgLike:Landroid/widget/ImageView;

    .line 714
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gTvCommentCount:Landroid/widget/TextView;

    .line 716
    const/4 v0, 0x1

    iput v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    .line 720
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaignThumb:Landroid/widget/ImageView;

    .line 721
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgCampaign:Landroid/widget/ImageView;

    .line 722
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRibbon:Landroid/widget/ImageView;

    .line 723
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvCaption:Landroid/widget/TextView;

    .line 724
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvHeader:Landroid/widget/TextView;

    .line 725
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDescription:Landroid/widget/TextView;

    .line 726
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvDiscountNumber:Landroid/widget/TextView;

    .line 727
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgPoint:Landroid/widget/ImageView;

    .line 728
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPointNumber:Landroid/widget/TextView;

    .line 729
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvPriceNumber:Landroid/widget/TextView;

    .line 730
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRemainNumber:Landroid/widget/TextView;

    .line 731
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvTimeNumber:Landroid/widget/TextView;

    .line 732
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRight:Landroid/widget/RelativeLayout;

    .line 733
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonBasket:Landroid/widget/RelativeLayout;

    .line 735
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenWidth:I

    .line 736
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gScreenHeight:I

    .line 738
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabInfo:Landroid/widget/RelativeLayout;

    .line 741
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutTabGallery:Landroid/widget/RelativeLayout;

    .line 743
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;

    .line 746
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;

    .line 748
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gincInfoBuyPoint:Landroid/view/View;

    .line 749
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutRedeem:Landroid/widget/RelativeLayout;

    .line 750
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutConditionAlter:Landroid/widget/RelativeLayout;

    .line 752
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeemConditionAlter:Landroid/widget/TextView;

    .line 753
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->tvRedeem:Landroid/widget/TextView;

    .line 754
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->imgRedeem:Landroid/widget/ImageView;

    .line 756
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageWidth:I

    .line 757
    iput v3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImageHeight:I

    .line 759
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gListCampaignGallery:Landroid/widget/ListView;

    .line 760
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->footerListView:Landroid/view/View;

    .line 763
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 765
    iput-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->pbImgLike:Landroid/widget/ProgressBar;

    .line 766
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 768
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 524
    const/4 v4, 0x4

    if-ne p1, v4, :cond_33

    .line 525
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "from_noti"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 527
    .local v1, "is_from_noti":Z
    if-eqz v1, :cond_1f

    .line 533
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.privilege"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 545
    .end local v1    # "is_from_noti":Z
    :goto_1e
    return v3

    .line 537
    .restart local v1    # "is_from_noti":Z
    :cond_1f
    const-string v4, "content://someURI"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 538
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .local v0, "intent":Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 540
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->finish()V

    goto :goto_1e

    .line 545
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
    .line 637
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 638
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 640
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 649
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 659
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 660
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 786
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 787
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 607
    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v1, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 609
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 619
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 620
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 621
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gDpi:I

    .line 623
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lic/buzzebeeslib/LibUserLogin;->GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 624
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lic/buzzebeeslib/LibUserLogin;->SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z

    .line 629
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->qtMarketBzbs()V

    .line 632
    :cond_39
    invoke-direct {p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->IsHasAddress()V

    .line 633
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 772
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 773
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 777
    const-string v0, "paramCampaignID"

    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaignID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 778
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 780
    const-string v0, "gMarketGalleryView"

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gMarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 781
    const-string v0, "gCurrentTab"

    iget v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gCurrentTab:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 551
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 552
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 653
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 654
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    return-void
.end method
