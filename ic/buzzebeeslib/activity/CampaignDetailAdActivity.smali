.class public Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Lic/buzzebeeslib/control/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;,
        Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;,
        Lic/buzzebeeslib/activity/CampaignDetailAdActivity$QTPagerAdapter;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final LOGCAT:Ljava/lang/String; = "campaign.ad"


# instance fields
.field private TAG:Ljava/lang/String;

.field private _fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

.field private _progressDialogDownload:Landroid/app/ProgressDialog;

.field private _progressDialogRetry:Landroid/app/ProgressDialog;

.field private _progressHandler:Landroid/os/Handler;

.field arrImg:[Ljava/lang/Integer;

.field private btnWatch:Landroid/widget/Button;

.field private btnWatchLoad:Landroid/widget/Button;

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private contentQT:Landroid/widget/RelativeLayout;

.field destFile:Ljava/io/File;

.field private formatter:Ljava/text/NumberFormat;

.field private formatterHasDigi:Ljava/text/NumberFormat;

.field private gCurrentDownloadImageIndex:I

.field private gHandler:Landroid/os/Handler;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gIsShow:Z

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutPoints:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private lastDownload:J

.field private mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;

.field onComplete:Landroid/content/BroadcastReceiver;

.field onNotificationClick:Landroid/content/BroadcastReceiver;

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:I

.field private pbLoadingAds:Landroid/widget/ProgressBar;

.field preferenceManager:Landroid/content/SharedPreferences;

.field private progress_bar_video:Landroid/widget/ProgressBar;

.field request_:Lic/buzzebeeslib/control/download/DownloadRequest;

.field resume_:Z

.field final strPref_Download_ID:Ljava/lang/String;

.field private tvPercentLoader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 93
    const-class v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->formatter:Ljava/text/NumberFormat;

    .line 109
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    .line 115
    iput-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    .line 116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->lastDownload:J

    .line 118
    const-string v0, "PREF_DOWNLOAD_ID"

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->strPref_Download_ID:Ljava/lang/String;

    .line 557
    iput v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I

    .line 558
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gIsShow:Z

    .line 1259
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    .line 1346
    iput-boolean v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    .line 1475
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$2;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->onComplete:Landroid/content/BroadcastReceiver;

    .line 1486
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$3;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$3;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->onNotificationClick:Landroid/content/BroadcastReceiver;

    .line 1570
    iput-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 82
    return-void
.end method

.method private IsAllLoadFromCache()Z
    .registers 6

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, "blnNotFind":Z
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 919
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_24

    .line 928
    .end local v1    # "i":I
    :cond_20
    if-eqz v0, :cond_40

    .line 929
    const/4 v3, 0x0

    .line 931
    :goto_23
    return v3

    .line 920
    .restart local v1    # "i":I
    :cond_24
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v2, v3, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 921
    .local v2, "strUrl":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, v2}, Lcom/bitmapfun/util/ImageFetcher;->isHasBitmapFromDiskCache(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 924
    const/4 v0, 0x1

    .line 919
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 931
    .end local v1    # "i":I
    .end local v2    # "strUrl":Ljava/lang/String;
    :cond_40
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private IsHasAddress()V
    .registers 5

    .prologue
    .line 411
    const-string v0, ""

    .line 412
    .local v0, "uid":Ljava/lang/String;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/profile/me?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetProfileDataListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 416
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 1656
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

    .line 1657
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 1659
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadge:Landroid/widget/TextView;

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

    .line 1660
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1661
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1663
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 1664
    sget v0, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 1666
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$20;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1741
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$21;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$21;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1765
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1768
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 1769
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1770
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1771
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1773
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 1774
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1775
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1776
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1777
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1778
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/Button;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 1

    .prologue
    .line 1545
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 1

    .prologue
    .line 1506
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->processLikeAction()V

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/AsyncFileLoader;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)I
    .registers 2

    .prologue
    .line 557
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I

    return v0
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 947
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Z
    .registers 2

    .prologue
    .line 916
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->IsAllLoadFromCache()Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gIsShow:Z

    return v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Z)V
    .registers 2

    .prologue
    .line 558
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gIsShow:Z

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/control/download/DownloadRequest;Z)V
    .registers 3

    .prologue
    .line 1348
    invoke-direct {p0, p1, p2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/util/ConnectionDetector;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;I)V
    .registers 2

    .prologue
    .line 557
    iput p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I

    return-void
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 936
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoaderPIC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 1

    .prologue
    .line 1032
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cancelLoad()V

    return-void
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/control/download/DownloadManager;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1569
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 1569
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$29(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1570
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1571
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$31(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1572
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$32(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1573
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$33(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1574
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$34(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1575
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$35(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$36(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 1608
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$37(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 1607
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$38(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1608
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$39(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1612
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1259
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$40(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 1609
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$41(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 1611
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$42(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1609
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadge:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$43(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 1611
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gTvBadgePoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 1610
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$45(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 1610
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$46(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 1607
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$47(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 1655
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$48(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1614
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$49(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1787
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1796
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$50(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->contentQT:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Ljava/text/NumberFormat;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->formatterHasDigi:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 1

    .prologue
    .line 454
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialLayout()V

    return-void
.end method

.method private cancelLoad()V
    .registers 3

    .prologue
    .line 1033
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    if-eqz v0, :cond_a

    .line 1034
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/util/AsyncFileLoader;->cancel(Z)Z

    .line 1036
    :cond_a
    return-void
.end method

.method private getCampaign(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 1046
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->pbLoadingAds:I

    invoke-virtual {p0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->pbLoadingAds:Landroid/widget/ProgressBar;

    .line 1047
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->pbLoadingAds:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1049
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&format=json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "url":Ljava/lang/String;
    const-string v1, "campaign.ad"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCampaign|url := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1052
    return-void
.end method

.method private getOutputFile()Ljava/io/File;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 885
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 886
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 888
    .local v2, "downloadCache":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/AdVideo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 893
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 895
    :cond_3e
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "arrTemp":[Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v3, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    .line 897
    .local v3, "file_name":Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_6d

    .line 898
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v0, v5

    .line 900
    :cond_6d
    const-string v5, ".mp4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 904
    :cond_8c
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 905
    .local v4, "outputFile":Ljava/io/File;
    const-string v5, "campaign.ad"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vdo|outputFile.getAbsolutePath() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v0    # "arrTemp":[Ljava/lang/String;
    .end local v1    # "directory":Ljava/io/File;
    .end local v2    # "downloadCache":Ljava/io/File;
    .end local v3    # "file_name":Ljava/lang/String;
    .end local v4    # "outputFile":Ljava/io/File;
    :goto_a9
    return-object v4

    :cond_aa
    const/4 v4, 0x0

    goto :goto_a9
.end method

.method private getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p1, "strSrc"    # Ljava/lang/String;

    .prologue
    .line 948
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v3, v3, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 949
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/bitmapfun/util/ImageFetcher;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 950
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_29

    .line 951
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 958
    :cond_29
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v3, p1}, Lcom/bitmapfun/util/ImageFetcher;->gethashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 959
    .local v1, "file_name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 960
    .local v2, "outputFile":Ljava/io/File;
    const-string v3, "campaign.ad"

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

    .line 963
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "file_name":Ljava/lang/String;
    .end local v2    # "outputFile":Ljava/io/File;
    :goto_4c
    return-object v2

    :cond_4d
    const/4 v2, 0x0

    goto :goto_4c
.end method

.method private getPathOutputFile()Ljava/lang/String;
    .registers 3

    .prologue
    .line 880
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 881
    .local v0, "outputFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1781
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1782
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1783
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1784
    return-object v0
.end method

.method private initDownloadManager()V
    .registers 3

    .prologue
    .line 1295
    new-instance v0, Lic/buzzebeeslib/control/download/DownloadManager$Builder;

    invoke-direct {v0}, Lic/buzzebeeslib/control/download/DownloadManager$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lic/buzzebeeslib/control/download/DownloadManager$Builder;->setContext(Landroid/content/Context;)Lic/buzzebeeslib/control/download/DownloadManager$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/download/DownloadManager$Builder;->setMaxThread(I)Lic/buzzebeeslib/control/download/DownloadManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/control/download/DownloadManager$Builder;->build()Lic/buzzebeeslib/control/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    .line 1296
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    invoke-virtual {v0, p0}, Lic/buzzebeeslib/control/download/DownloadManager;->addDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V

    .line 1297
    return-void
.end method

.method private initFileLoader(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 874
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFile()Ljava/io/File;

    move-result-object v0

    .line 875
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 876
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 877
    return-void
.end method

.method private initFileLoaderPIC(Ljava/lang/String;)V
    .registers 5
    .param p1, "srcURL"    # Ljava/lang/String;

    .prologue
    .line 937
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFilePIC(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 938
    .local v0, "outputFile":Ljava/io/File;
    new-instance v1, Lic/buzzebeeslib/util/AsyncFileLoader;

    invoke-direct {v1, p1, v0}, Lic/buzzebeeslib/util/AsyncFileLoader;-><init>(Ljava/lang/String;Ljava/io/File;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    .line 939
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_fileLoader:Lic/buzzebeeslib/util/AsyncFileLoader;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lic/buzzebeeslib/util/AsyncFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 940
    return-void
.end method

.method private initialLayout()V
    .registers 21

    .prologue
    .line 455
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->imgCamp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 456
    .local v3, "imgCamp":Landroid/widget/ImageView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtDetail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 457
    .local v14, "txtDetail":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtDetail2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 458
    .local v15, "txtDetail2":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->tvLike:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 459
    .local v18, "txtLike":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtComment:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 460
    .local v11, "txtComment":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatch:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;

    .line 461
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatchLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    .line 462
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtHeadDetail:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 463
    .local v17, "txtHeadDetail":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 464
    .local v13, "txtDescription":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtHeadCondition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 465
    .local v16, "txtHeadCondition":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->txtCondition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 466
    .local v12, "txtCondition":Landroid/widget/TextView;
    sget v1, Lic/buzzebeeslib/R$id;->tvPercentLoader:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->tvPercentLoader:Landroid/widget/TextView;

    .line 467
    sget v1, Lic/buzzebeeslib/R$id;->progress_bar_video:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->progress_bar_video:Landroid/widget/ProgressBar;

    .line 469
    const-wide/16 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lic/buzzebeeslib/util/BBUtil;->dp_to_px(DLandroid/content/Context;)I

    move-result v19

    .line 470
    .local v19, "width_padding":I
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 471
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 472
    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenHeight:I

    .line 473
    iget v1, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenWidth:I

    .line 474
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenWidth:I

    sub-int v1, v1, v19

    mul-int/lit16 v1, v1, 0x190

    div-int/lit16 v8, v1, 0x258

    .line 475
    .local v8, "height":I
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v9, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v9, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 481
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->pbLoadingImg:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 482
    .local v4, "pbLoadingImg":Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    sget v5, Lic/buzzebeeslib/R$drawable;->bz_loading_adbuzz:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Detail:Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    if-eqz v1, :cond_133

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_133

    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->CustomCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_133
    const-string v1, "img"

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v2}, Lic/buzzebeeslib/bean/Campaign;->FullImageUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget v1, Lic/buzzebeeslib/R$idCampaignDetailAd;->tvPageHeader:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 511
    .local v10, "tvPageHeader":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v10, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 526
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v14, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v15, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 528
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v11, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/Button;Landroid/content/Context;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 533
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v12, v1}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->tvPercentLoader:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/FontUtil;->SetFontDefault(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 537
    return-void
.end method

.method private initialParam()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 365
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 367
    const-string v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    .line 369
    iget v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    if-lez v1, :cond_3e

    .line 370
    iget v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 371
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    :goto_3d
    return-void

    .line 373
    :cond_3e
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v1, v1, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v1}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 374
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v2, "campaign"

    const-string v3, "view"

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialLayout()V

    goto :goto_3d
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1788
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1789
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1790
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1791
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 3
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 1618
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_f

    .line 1619
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 1620
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$19;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1653
    :cond_f
    return-void
.end method

.method private playPoint(I)V
    .registers 3
    .param p1, "points"    # I

    .prologue
    .line 1578
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_f

    .line 1579
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 1580
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;

    invoke-direct {v0, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$18;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;I)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1601
    :cond_f
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 1557
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 1558
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 1559
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1565
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 1562
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method private processLikeAction()V
    .registers 2

    .prologue
    .line 1507
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$17;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1543
    return-void
.end method

.method private qtMarketBzbs()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v9, 0x41200000

    const/high16 v10, 0x40400000

    .line 1808
    sget v7, Lic/buzzebeeslib/R$id;->contentQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->contentQT:Landroid/widget/RelativeLayout;

    .line 1809
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->contentQT:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1810
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->contentQT:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    sget v7, Lic/buzzebeeslib/R$id;->linCircle:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1813
    .local v3, "linCircle":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v9}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1814
    .local v6, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v7

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v8

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v9

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->GetPixelFromDips(F)I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1815
    const/4 v4, 0x4

    .line 1816
    .local v4, "numPage":I
    new-array v7, v4, [Ljava/lang/Integer;

    iput-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->arrImg:[Ljava/lang/Integer;

    .line 1817
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_48
    const/4 v7, 0x4

    if-lt v1, v7, :cond_78

    .line 1822
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v2, v7, [Landroid/widget/ImageView;

    .line 1823
    .local v2, "imgCircle":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    :goto_53
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->arrImg:[Ljava/lang/Integer;

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    if-lt v1, v7, :cond_a2

    .line 1834
    sget v7, Lic/buzzebeeslib/R$id;->vpQT:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 1835
    .local v5, "pager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v11}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1836
    new-instance v7, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$QTPagerAdapter;

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->arrImg:[Ljava/lang/Integer;

    invoke-direct {v7, p0, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$QTPagerAdapter;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;[Ljava/lang/Integer;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1838
    new-instance v7, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$23;

    invoke-direct {v7, p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$23;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;[Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1866
    return-void

    .line 1818
    .end local v2    # "imgCircle":[Landroid/widget/ImageView;
    .end local v5    # "pager":Landroid/support/v4/view/ViewPager;
    :cond_78
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getResources()Landroid/content/res/Resources;

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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1819
    .local v0, "ResID":I
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->arrImg:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 1824
    .end local v0    # "ResID":I
    .restart local v2    # "imgCircle":[Landroid/widget/ImageView;
    :cond_a2
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v7, v2, v1

    .line 1825
    aget-object v7, v2, v1

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1826
    if-nez v1, :cond_c3

    .line 1827
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1831
    :goto_bb
    aget-object v7, v2, v1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1823
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 1829
    :cond_c3
    aget-object v7, v2, v1

    sget v8, Lic/buzzebeeslib/R$drawable;->rounded_circle:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_bb
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 395
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 397
    const-string v0, "paramCampaign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/Campaign;

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 398
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialLayout()V

    .line 399
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_51

    .line 400
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 401
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "campaign"

    const-string v2, "view"

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    :cond_50
    :goto_50
    return-void

    .line 403
    :cond_51
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 404
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "campaign"

    const-string v2, "view"

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 405
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialLayout()V

    goto :goto_50
.end method

.method private static setupFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "destUri"    # Ljava/lang/String;

    .prologue
    .line 1493
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v0, "outFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1495
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1497
    :cond_16
    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1797
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$22;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$22;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1804
    return-void
.end method

.method private updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V
    .registers 13
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;
    .param p2, "resumes"    # Z

    .prologue
    const/16 v9, 0x8

    const-wide/16 v7, 0x3e8

    .line 1350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v4

    div-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "k/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v4

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "k-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1351
    .local v2, "info":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mHandler : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const/4 v0, 0x0

    .line 1354
    .local v0, "_currentByte":I
    const/4 v1, 0x0

    .line 1356
    .local v1, "_totalByte":I
    if-nez p2, :cond_8b

    .line 1357
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v3

    div-long/2addr v3, v7

    long-to-int v0, v3

    .line 1358
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v3

    div-long/2addr v3, v7

    long-to-int v1, v3

    .line 1364
    :goto_57
    if-gtz v1, :cond_a6

    .line 1365
    const/4 v1, 0x0

    .line 1366
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->tvPercentLoader:Landroid/widget/TextView;

    const-string v4, "0%"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    :goto_61
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_pause"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 1378
    :cond_79
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    const-string v4, "RESUME"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1385
    :cond_80
    :goto_80
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;

    invoke-direct {v4, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$16;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Lic/buzzebeeslib/control/download/DownloadRequest;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1428
    return-void

    .line 1360
    :cond_8b
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadSize()J

    move-result-wide v3

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->destFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v0, v3

    .line 1361
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v3

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->destFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v1, v3

    goto :goto_57

    .line 1368
    :cond_a6
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getTotalSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_b9

    .line 1369
    const/4 v1, 0x0

    .line 1370
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->tvPercentLoader:Landroid/widget/TextView;

    const-string v4, "0%"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_61

    .line 1372
    :cond_b9
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->tvPercentLoader:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v1

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->progress_bar_video:Landroid/widget/ProgressBar;

    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_61

    .line 1379
    :cond_ea
    invoke-virtual {p1}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDownloadStatus()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status_complete"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 1380
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatch:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1381
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->btnWatchLoad:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1382
    sget v3, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_80
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 1931
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1933
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public doLike(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1141
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;

    invoke-direct {v0, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1166
    return-void
.end method

.method public doShowReview(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1040
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lic/buzzebeeslib/activity/MarketReviewList2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1041
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1042
    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    return-void
.end method

.method public doWatchAdd(Landroid/view/View;)V
    .registers 16
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 564
    sget-object v10, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v11, "com.samsung.privilege"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 565
    invoke-static {}, Lic/buzzebeeslib/util/BBUtil;->IsSamsungMobile()Z

    move-result v10

    if-nez v10, :cond_35

    .line 566
    const-string v2, "ic.buzzebees"

    .line 568
    .local v2, "appPackageName":Ljava/lang/String;
    :try_start_12
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    const-string v12, "market://details?id=ic.buzzebees"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_22} :catch_23

    .line 868
    .end local v2    # "appPackageName":Ljava/lang/String;
    :goto_22
    return-void

    .line 569
    .restart local v2    # "appPackageName":Ljava/lang/String;
    :catch_23
    move-exception v1

    .line 570
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    const-string v12, "http://play.google.com/store/apps/details?id=ic.buzzebees"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    .line 578
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v2    # "appPackageName":Ljava/lang/String;
    :cond_35
    :try_start_35
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v10, :cond_6f

    .line 579
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    if-eqz v10, :cond_6f

    .line 580
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    if-eqz v10, :cond_6f

    .line 581
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v12, v12, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v12, v12, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v12, v12, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_6f} :catch_36f

    .line 598
    :cond_6f
    :goto_6f
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v11, "video"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21f

    .line 600
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    invoke-static {v10}, Lic/buzzebeeslib/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 602
    .local v5, "lgFileSize":J
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-le v10, v11, :cond_ae

    .line 603
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 604
    .local v7, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 639
    .end local v7    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_ae
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1b8

    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1b8

    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getOutputFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v5

    if-nez v10, :cond_1b8

    .line 640
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v10}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_199

    .line 641
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_136

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_136

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_136

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_136

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_136

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17a

    .line 642
    :cond_136
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    sget v10, Lic/buzzebeeslib/R$string;->dialog_title_address:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->dialog_msg_address:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;

    invoke-direct {v12, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$4;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 649
    sget v11, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$5;

    invoke-direct {v12, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$5;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 655
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_22

    .line 657
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_17a
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 658
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 659
    const-string v10, "campaign"

    iget-object v11, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 660
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 663
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_199
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .restart local v4    # "intent":Landroid/content/Intent;
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getPathOutputFile()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 665
    const-string v10, "campaign"

    iget-object v11, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 669
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1b8
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v10}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v10

    if-eqz v10, :cond_214

    .line 674
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 675
    .local v9, "wManager":Landroid/net/wifi/WifiManager;
    const-wide/32 v10, 0xa00000

    cmp-long v10, v5, v10

    if-lez v10, :cond_20f

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-nez v10, :cond_20f

    .line 676
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    sget v10, Lic/buzzebeeslib/R$string;->dialog_message_alert_wifi:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;

    invoke-direct {v12, p0, v9, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$6;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/net/wifi/WifiManager;Landroid/view/View;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 683
    sget v11, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$7;

    invoke-direct {v12, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$7;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Landroid/view/View;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 691
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 692
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_22

    .line 694
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_20f
    invoke-virtual {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startDownload(Landroid/view/View;)V

    goto/16 :goto_22

    .line 698
    .end local v9    # "wManager":Landroid/net/wifi/WifiManager;
    :cond_214
    sget v10, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 706
    .end local v5    # "lgFileSize":J
    :cond_21f
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-le v10, v11, :cond_235

    .line 707
    new-instance v10, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .line 708
    .restart local v7    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 711
    .end local v7    # "policy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_235
    new-instance v10, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;

    invoke-direct {v10, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$8;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    iput-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;

    .line 814
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v10}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v10

    if-eqz v10, :cond_364

    .line 815
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->IsAllLoadFromCache()Z

    move-result v10

    if-eqz v10, :cond_327

    .line 817
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    const-string v11, "CampaignDetailAdBuzzActivity"

    invoke-static {v10, v11}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Delivered:Ljava/lang/String;

    invoke-static {v10}, Lic/buzzebeeslib/util/BBUtil;->CtypeBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_310

    .line 821
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2b5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2b5

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lic/buzzebeeslib/LibUserLogin;->GetAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f9

    .line 822
    :cond_2b5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    sget v10, Lic/buzzebeeslib/R$string;->dialog_title_address:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->dialog_msg_address:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    sget v11, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$9;

    invoke-direct {v12, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$9;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 829
    sget v11, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {p0, v11}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$10;

    invoke-direct {v12, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$10;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 834
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 835
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_22

    .line 837
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2f9
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 838
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "campaign"

    iget-object v11, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 842
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_310
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 843
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "campaign"

    iget-object v11, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 844
    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_22

    .line 847
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_327
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {v10}, Lic/buzzebeeslib/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v10

    if-eqz v10, :cond_359

    .line 848
    const/4 v10, 0x0

    iput v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I

    .line 849
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v10, v10, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    iget v11, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gCurrentDownloadImageIndex:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v8, v10, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 850
    .local v8, "strUrl":Ljava/lang/String;
    invoke-direct {p0, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initFileLoaderPIC(Ljava/lang/String;)V

    .line 851
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showDialog(I)V

    .line 852
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 853
    iget-object v10, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_22

    .line 855
    .end local v8    # "strUrl":Ljava/lang/String;
    :cond_359
    sget v10, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 862
    :cond_364
    sget v10, Lic/buzzebeeslib/R$string;->message_error_connection:I

    invoke-virtual {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 585
    :catch_36f
    move-exception v10

    goto/16 :goto_6f
.end method

.method public getDownloadManager()Lic/buzzebeeslib/control/download/DownloadManager;
    .registers 2

    .prologue
    .line 1288
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    if-nez v0, :cond_a

    .line 1289
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1291
    :cond_a
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onComplete(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 1468
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onComplete() request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1470
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1471
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1472
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1473
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->requestWindowFeature(I)Z

    .line 221
    sget v6, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->setContentView(I)V

    .line 223
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 230
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v7, "UA-42649771-1"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 234
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gHandler:Landroid/os/Handler;

    .line 235
    new-instance v6, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 243
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 244
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 249
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 250
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 251
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenHeight:I

    .line 252
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenWidth:I

    .line 254
    iget v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenWidth:I

    .line 255
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->gScreenHeight:I

    .line 257
    .local v2, "height":I
    if-le v2, v5, :cond_c5

    .end local v2    # "height":I
    :goto_7f
    div-int/lit8 v3, v2, 0x2

    .line 258
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 259
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 260
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 261
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 265
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->preferenceManager:Landroid/content/SharedPreferences;

    .line 267
    new-instance v6, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v6

    invoke-static {v6}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 270
    if-nez p1, :cond_c7

    .line 271
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initialParam()V

    .line 276
    :goto_c1
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->initDownloadManager()V

    .line 277
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_c5
    move v2, v5

    .line 257
    goto :goto_7f

    .line 273
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    :cond_c7
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_c1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "_progressDialog":Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_86

    .line 1029
    :goto_7
    return-object v0

    .line 972
    :pswitch_8
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 973
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 974
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 975
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 976
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 984
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$11;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$11;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 992
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogDownload:Landroid/app/ProgressDialog;

    .line 993
    goto :goto_7

    .line 995
    :pswitch_3e
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    .line 996
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$drawable;->bz_icon:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 997
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_download_file_again:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 998
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 999
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1000
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    const/4 v2, -0x1

    sget v3, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_again:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$12;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1018
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    sget v2, Lic/buzzebeeslib/R$string;->campaign_detail_ad_btn_cancel:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$13;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$13;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v1, v5, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1026
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->_progressDialogRetry:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 970
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_8
        :pswitch_3e
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 345
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 346
    const-string v0, "buzzebees.market"

    const-string v1, "public void onDestroy() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 350
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 357
    :try_start_12
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->request_:Lic/buzzebeeslib/control/download/DownloadRequest;

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/download/DownloadManager;->delete(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    .line 362
    :goto_19
    return-void

    .line 358
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method public onError(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 1459
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onError() request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1461
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1462
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1463
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1464
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 314
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 315
    const-string v0, "buzzebees.market"

    const-string v1, "public void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 317
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 327
    return-void
.end method

.method public onPause(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 1450
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onPause() request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1452
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1453
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1454
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1455
    return-void
.end method

.method public onProgress(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 1441
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onProgress() request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1443
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1444
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1445
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1446
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 340
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestart() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 391
    const-string v0, "buzzebees.market"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 281
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 282
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 292
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 293
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    if-lez v0, :cond_51

    .line 294
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 295
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "campaign"

    const-string v2, "view"

    iget v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaignID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    :goto_2e
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->GetIsPlayMarketBzBsTutorial(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 302
    sget-object v0, Lic/buzzebeeslib/LibConst;->PACKAGE_PARENT:Ljava/lang/String;

    const-string v1, "com.samsung.privilege"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 303
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/LibUserLogin;->SetIsPlayMarketBzBsTutorial(Landroid/content/Context;Z)Z

    .line 304
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->qtMarketBzbs()V

    .line 308
    :cond_4d
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->IsHasAddress()V

    .line 310
    return-void

    .line 297
    :cond_51
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v0, v0, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v0}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getCampaign(I)V

    .line 298
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    const-string v1, "campaign"

    const-string v2, "view"

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 382
    const-string v0, "buzzebees.market"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 386
    return-void
.end method

.method public onStart(Lic/buzzebeeslib/control/download/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Lic/buzzebeeslib/control/download/DownloadRequest;

    .prologue
    .line 1432
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onStart() request="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1434
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1435
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1436
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1437
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 331
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 332
    const-string v0, "buzzebees.market"

    const-string v1, "public void onStop() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public startDownload(Landroid/view/View;)V
    .registers 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 1306
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "arrTemp":[Ljava/lang/String;
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v3, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    .line 1308
    .local v3, "file_name":Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_30

    .line 1309
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v1, v5

    .line 1311
    :cond_30
    const-string v5, ".mp4"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".mp4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1315
    :cond_4f
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->progress_bar_video:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1316
    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatchLoad:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatch:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    sget v5, Lic/buzzebeeslib/R$id;->contentLoader:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    sget v5, Lic/buzzebeeslib/R$idCampaignDetailAd;->btnWatchLoad:I

    invoke-virtual {p0, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$15;

    invoke-direct {v6, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$15;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v5, v5, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    iget-object v0, v5, Lic/buzzebeeslib/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    .line 1328
    .local v0, "SrcDownload":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/LibConst;->ANDROID_DATA_PATH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AdVideo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1329
    .local v2, "destUri":Ljava/lang/String;
    new-instance v4, Lic/buzzebeeslib/control/download/DownloadRequest;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lic/buzzebeeslib/control/download/DownloadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    .local v4, "request":Lic/buzzebeeslib/control/download/DownloadRequest;
    iput-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->request_:Lic/buzzebeeslib/control/download/DownloadRequest;

    .line 1331
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    invoke-virtual {v5, v4}, Lic/buzzebeeslib/control/download/DownloadManager;->enqueue(Lic/buzzebeeslib/control/download/DownloadRequest;)V

    .line 1332
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mDownloadManager:Lic/buzzebeeslib/control/download/DownloadManager;

    invoke-virtual {v5, p0}, Lic/buzzebeeslib/control/download/DownloadManager;->addDownloadListener(Lic/buzzebeeslib/control/download/DownloadListener;)V

    .line 1333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lic/buzzebeeslib/control/download/DownloadRequest;->getDestUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->setupFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->destFile:Ljava/io/File;

    .line 1335
    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->destFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_109

    .line 1336
    iput-boolean v9, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    .line 1337
    iget-boolean v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    invoke-direct {p0, v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V

    .line 1343
    :goto_108
    return-void

    .line 1339
    :cond_109
    const/4 v5, 0x1

    iput-boolean v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    .line 1340
    iget-boolean v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->resume_:Z

    invoke-direct {p0, v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->updateItemView(Lic/buzzebeeslib/control/download/DownloadRequest;Z)V

    goto :goto_108
.end method
