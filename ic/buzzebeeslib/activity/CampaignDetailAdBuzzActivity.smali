.class public Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;,
        Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;,
        Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$PostSubmitListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_market"

.field private static final LOGCAT:Ljava/lang/String; = "campaign.adbuzz"


# instance fields
.field private RC_UPDATE_PROFILE:I

.field private TAG:Ljava/lang/String;

.field private cd:Lic/buzzebeeslib/util/ConnectionDetector;

.field private chkSubmit:Z

.field private controller:Lic/buzzebeeslib/control/VideoControllerView;

.field private gCountDownTimer:Landroid/os/CountDownTimer;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFontDefault:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gImageHeight:I

.field private gImageWidth:I

.field private gImgNext_01:Landroid/widget/ImageView;

.field private gImgPrev_01:Landroid/widget/ImageView;

.field private gScreenHeight:I

.field private gScreenWidth:I

.field gVideoLayout:Landroid/view/View;

.field private gView_pager:Lic/buzzebeeslib/control/CustomPager;

.field private incorrectTime:I

.field private isOnComplete:Z

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private nextPosition:I

.field private paramCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private paramCampaignID:I

.field private player:Landroid/media/MediaPlayer;

.field private videoSurface:Landroid/view/SurfaceView;

.field private videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 106
    iput v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    .line 107
    iput v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->incorrectTime:I

    .line 108
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->chkSubmit:Z

    .line 109
    const-class v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->TAG:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    .line 112
    const/16 v0, 0xa

    iput v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->RC_UPDATE_PROFILE:I

    .line 78
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Lic/buzzebeeslib/bean/Campaign;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-void
.end method

.method static synthetic access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$10(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/CustomPager;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->cancelTimer()V

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 1

    .prologue
    .line 443
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->countDownTimer()V

    return-void
.end method

.method static synthetic access$15(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/graphics/Typeface;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$16(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    return v0
.end method

.method static synthetic access$17(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->chkSubmit:Z

    return v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->incorrectTime:I

    return v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V

    return-void
.end method

.method static synthetic access$20(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V
    .registers 2

    .prologue
    .line 108
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->chkSubmit:Z

    return-void
.end method

.method static synthetic access$21(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Z)V
    .registers 2

    .prologue
    .line 110
    iput-boolean p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    return-void
.end method

.method static synthetic access$22(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lcom/bitmapfun/util/ImageFetcher;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$23(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/view/SurfaceView;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic access$24(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/view/SurfaceView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$25(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/media/MediaPlayer;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$26(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Lic/buzzebeeslib/control/VideoControllerView;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    return-void
.end method

.method static synthetic access$27(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/control/VideoControllerView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    return-object v0
.end method

.method static synthetic access$28(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1981
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->RC_UPDATE_PROFILE:I

    return v0
.end method

.method static synthetic access$8(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V
    .registers 2

    .prologue
    .line 106
    iput p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;I)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->incorrectTime:I

    return-void
.end method

.method private cancelTimer()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_9

    .line 462
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 464
    :cond_9
    return-void
.end method

.method private countDownTimer()V
    .registers 7

    .prologue
    .line 444
    new-instance v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;JJ)V

    .line 457
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 444
    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gCountDownTimer:Landroid/os/CountDownTimer;

    .line 458
    return-void
.end method

.method private getCampaign(I)V
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 224
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

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

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

    .line 225
    .local v0, "url":Ljava/lang/String;
    const-string v1, "campaign.adbuzz"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCampaign|url := "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 227
    return-void
.end method

.method private initialLayout()V
    .registers 8

    .prologue
    .line 306
    sget v4, Lic/buzzebeeslib/R$id;->view_pager:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/control/CustomPager;

    iput-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    .line 307
    sget v4, Lic/buzzebeeslib/R$id;->prev_01:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;

    .line 308
    sget v4, Lic/buzzebeeslib/R$id;->next_01:I

    invoke-virtual {p0, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;

    .line 310
    const/4 v3, 0x0

    .line 311
    .local v3, "intLast":I
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_3b

    .line 312
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 314
    :cond_3b
    if-gtz v3, :cond_44

    .line 317
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    :cond_44
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    new-instance v5, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "adBuzzItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/AdBuzzItem;>;"
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 387
    new-instance v5, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    invoke-direct {v5, v4}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_7a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7b
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_ee

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9e

    .line 400
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/AdBuzzItem;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lic/buzzebeeslib/bean/AdBuzzItem;->IsLastItem:Z

    .line 402
    :cond_9e
    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    invoke-direct {v1, p0, p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 403
    .local v1, "adapter":Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v4, v1}, Lic/buzzebeeslib/control/CustomPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 404
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lic/buzzebeeslib/control/CustomPager;->setOffscreenPageLimit(I)V

    .line 421
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgNext_01:Landroid/widget/ImageView;

    new-instance v5, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImgPrev_01:Landroid/widget/ImageView;

    new-instance v5, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$3;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$3;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    return-void

    .line 390
    .end local v1    # "adapter":Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    .end local v2    # "i":I
    :cond_c6
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c7
    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7a

    .line 391
    new-instance v5, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraAd:Lic/buzzebeeslib/bean/CampaignExtraAd;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraAdItem;

    invoke-direct {v5, v4}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraAdItem;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v2, v2, 0x1

    goto :goto_c7

    .line 396
    :cond_ee
    new-instance v5, Lic/buzzebeeslib/bean/AdBuzzItem;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra:Lic/buzzebeeslib/bean/CampaignExtra;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtra;->campaignExtraSurvey:Lic/buzzebeeslib/bean/CampaignExtraSurvey;

    iget-object v4, v4, Lic/buzzebeeslib/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;

    invoke-direct {v5, v4}, Lic/buzzebeeslib/bean/AdBuzzItem;-><init>(Lic/buzzebeeslib/bean/CampaignExtraSurveyPage;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7b
.end method

.method private initialParam()V
    .registers 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lic/buzzebeeslib/bean/Campaign;

    iput-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 208
    const-string v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaignID:I

    .line 210
    iget v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaignID:I

    if-lez v1, :cond_29

    .line 211
    iget v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaignID:I

    invoke-direct {p0, v1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getCampaign(I)V

    .line 220
    :goto_28
    return-void

    .line 213
    :cond_29
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V

    goto :goto_28
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 484
    const-string v2, "campaign.adbuzz"

    const-string v3, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "onSaveInstanceState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 486
    const-string v2, "paramCampaign"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lic/buzzebeeslib/bean/Campaign;

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 487
    const-string v2, "isOnComplete"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    .line 492
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_80

    .line 493
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getCampaign(I)V

    .line 498
    :goto_3e
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 500
    sget v2, Lic/buzzebeeslib/R$string;->dialog_alert_survey_resume:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->no:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$5;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$5;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 505
    sget v3, Lic/buzzebeeslib/R$string;->yes:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$6;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$6;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 515
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 517
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7f
    return-void

    .line 495
    :cond_80
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialLayout()V

    goto :goto_3e
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1982
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$8;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$8;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1989
    return-void
.end method


# virtual methods
.method public canPause()Z
    .registers 2

    .prologue
    .line 2047
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 2052
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 2057
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 2042
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 2017
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2018
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 2020
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 2008
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2009
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 2011
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 2062
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2033
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 2034
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 2036
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    const/4 v2, -0x1

    if-ne p2, v2, :cond_15

    iget v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->RC_UPDATE_PROFILE:I

    if-ne p1, v2, :cond_15

    .line 197
    :try_start_a
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    invoke-virtual {v2}, Lic/buzzebeeslib/control/CustomPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    .line 198
    .local v0, "adapter":Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->actionSubmit()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    .line 203
    .end local v0    # "adapter":Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    :cond_15
    :goto_15
    return-void

    .line 199
    :catch_16
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error while auto submit data!"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 2083
    const-string v3, "PONG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "public void onCompletion(MediaPlayer mp) {"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    if-nez v3, :cond_37

    .line 2086
    iput-boolean v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    .line 2088
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsConditionPass:Z

    if-eqz v3, :cond_38

    .line 2090
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2092
    iget v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    .line 2093
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gView_pager:Lic/buzzebeeslib/control/CustomPager;

    iget v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->nextPosition:I

    invoke-virtual {v3, v4, v6}, Lic/buzzebeeslib/control/CustomPager;->setCurrentItem(IZ)V

    .line 2116
    :cond_37
    :goto_37
    return-void

    .line 2096
    :cond_38
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v3, v7}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2098
    const-string v2, ""

    .line 2099
    .local v2, "txtAlert":Ljava/lang/String;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2100
    sget v3, Lic/buzzebeeslib/R$string;->no_network_connection_toast:I

    invoke-virtual {p0, v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2104
    :goto_51
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2105
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    new-instance v5, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$9;

    invoke-direct {v5, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$9;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2111
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2112
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_37

    .line 2102
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_71
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v2, v3, Lic/buzzebeeslib/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto :goto_51
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->requestWindowFeature(I)Z

    .line 126
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 127
    sget v6, Lic/buzzebeeslib/R$layout;->bz_campaign_detail_ad_buzz:I

    invoke-virtual {p0, v6}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->setContentView(I)V

    .line 131
    sget v6, Lic/buzzebeeslib/R$anim;->bz_animation_enter:I

    sget v7, Lic/buzzebeeslib/R$anim;->bz_animation_leave:I

    invoke-virtual {p0, v6, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->overridePendingTransition(II)V

    .line 132
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lic/buzzebeeslib/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 134
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/kit55p.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gFontDefault:Landroid/graphics/Typeface;

    .line 136
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gHandler:Landroid/os/Handler;

    .line 138
    new-instance v6, Lic/buzzebeeslib/util/ConnectionDetector;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lic/buzzebeeslib/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->cd:Lic/buzzebeeslib/util/ConnectionDetector;

    .line 142
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 145
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v7, "UA-42649771-1"

    invoke-virtual {v6, v7}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v6

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 149
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenWidth:I

    .line 153
    iget v6, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenHeight:I

    .line 154
    iget v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenWidth:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImageWidth:I

    .line 155
    iget v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImageWidth:I

    mul-int/lit16 v6, v6, 0xc8

    div-int/lit16 v6, v6, 0x12c

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gImageHeight:I

    .line 158
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {p0, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x3e800000

    invoke-virtual {v0, v6, v7}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 162
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 164
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenHeight:I

    .line 165
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenWidth:I

    .line 167
    iget v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenWidth:I

    .line 168
    .local v5, "width":I
    iget v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gScreenHeight:I

    .line 170
    .local v2, "height":I
    if-le v2, v5, :cond_e7

    .end local v2    # "height":I
    :goto_af
    div-int/lit8 v3, v2, 0x2

    .line 171
    .local v3, "longest":I
    new-instance v6, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 172
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e9

    .line 173
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 182
    :cond_d2
    :goto_d2
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 183
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 185
    if-nez p1, :cond_12d

    .line 186
    invoke-direct {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->initialParam()V

    .line 190
    :goto_e6
    return-void

    .end local v3    # "longest":I
    .restart local v2    # "height":I
    :cond_e7
    move v2, v5

    .line 170
    goto :goto_af

    .line 174
    .end local v2    # "height":I
    .restart local v3    # "longest":I
    :cond_e9
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x3

    if-ne v6, v7, :cond_100

    .line 175
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto :goto_d2

    .line 176
    :cond_100
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    const/4 v7, 0x2

    if-ne v6, v7, :cond_117

    .line 177
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto :goto_d2

    .line 178
    :cond_117
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0xf

    if-ne v6, v8, :cond_d2

    .line 179
    iget-object v6, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v7, Lic/buzzebeeslib/R$drawable;->bz_empty_photo:I

    invoke-virtual {v6, v7}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    goto :goto_d2

    .line 188
    :cond_12d
    invoke-direct {p0, p1}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_e6
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 2120
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 2121
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2122
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2123
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    .line 2125
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 2072
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 2073
    const-string v0, "campaign.adbuzz"

    const-string v1, "private void onPause() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1b

    .line 2075
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2076
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2077
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    .line 2079
    :cond_1b
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2130
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    if-eqz v0, :cond_16

    .line 2131
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    invoke-virtual {v0, p0}, Lic/buzzebeeslib/control/VideoControllerView;->setMediaPlayer(Lic/buzzebeeslib/control/VideoControllerView$MediaPlayerControl;)V

    .line 2132
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    sget v0, Lic/buzzebeeslib/R$id;->videoSurfaceContainer:I

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lic/buzzebeeslib/control/VideoControllerView;->setAnchorView(Landroid/view/ViewGroup;)V

    .line 2134
    :cond_16
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1f

    .line 2135
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2137
    :cond_1f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 480
    const-string v0, "campaign.adbuzz"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1747
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1748
    const-string v2, "campaign.adbuzz"

    const-string v3, "private void onResume() {"

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    if-eqz v2, :cond_89

    .line 1750
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->gVideoLayout:Landroid/view/View;

    sget v3, Lic/buzzebeeslib/R$id;->videoSurface:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    .line 1751
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1752
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->videoSurface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1753
    .local v1, "videoHolder":Landroid/view/SurfaceHolder;
    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1754
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1755
    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1757
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    .line 1758
    new-instance v2, Lic/buzzebeeslib/control/VideoControllerView;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/control/VideoControllerView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    .line 1760
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$7;

    invoke-direct {v3, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$7;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/control/VideoControllerView;->setOnRqExitListener(Lic/buzzebeeslib/control/VideoControllerView$OnRqExitListener;)V

    .line 1768
    :try_start_49
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1769
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 1776
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uri vdo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->campaignExtra_video_download_uri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1778
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1779
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1780
    iget-object v2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_89} :catch_8a
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_89} :catch_94
    .catch Ljava/lang/IllegalStateException; {:try_start_49 .. :try_end_89} :catch_9e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_89} :catch_a8

    .line 1835
    .end local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :cond_89
    :goto_89
    return-void

    .line 1782
    .restart local v1    # "videoHolder":Landroid/view/SurfaceHolder;
    :catch_8a
    move-exception v0

    .line 1783
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IllegalArgumentException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    .line 1784
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_89

    .line 1785
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_94
    move-exception v0

    .line 1786
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SecurityException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_89

    .line 1788
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_9e
    move-exception v0

    .line 1789
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "IllegalStateException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    .line 1790
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_89

    .line 1791
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_a8
    move-exception v0

    .line 1792
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IOException"

    invoke-direct {p0, v2}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_89
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 469
    const-string v0, "campaign.adbuzz"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    const-string v0, "paramCampaign"

    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 474
    const-string v0, "isOnComplete"

    iget-boolean v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isOnComplete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2141
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    if-eqz v0, :cond_9

    .line 2142
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->controller:Lic/buzzebeeslib/control/VideoControllerView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/VideoControllerView;->show()V

    .line 2144
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 2001
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2002
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 2004
    :cond_9
    return-void
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 2026
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2027
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2029
    :cond_9
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 1993
    const-string v0, "PONG"

    const-string v1, "public void start() {"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_10

    .line 1995
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1997
    :cond_10
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 2149
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_9

    .line 2150
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 2152
    :cond_9
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2157
    :try_start_0
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_e

    .line 2158
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 2159
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2165
    :cond_e
    :goto_e
    return-void

    .line 2161
    :catch_f
    move-exception v0

    .line 2162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->TAG:Ljava/lang/String;

    const-string v2, "surfaceCreated"

    invoke-static {v1, v2}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 2170
    return-void
.end method

.method public toggleFullScreen()V
    .registers 1

    .prologue
    .line 2068
    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .registers 6
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 2176
    const-string v0, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 2177
    .local v0, "EMAIL_PATTERN":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 2178
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2179
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    return v3
.end method
