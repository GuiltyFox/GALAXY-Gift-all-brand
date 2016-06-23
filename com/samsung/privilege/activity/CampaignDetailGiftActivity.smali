.class public Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ImageAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$ArrayListFragment;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;,
        Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private OPTION_PAGER_TYPE:I

.field private RC_BEAM:I

.field private RC_LOGIN_LIKE:I

.field private RC_LOGIN_REDEEM:I

.field private RC_SURVEY:I

.field private RC_WEBVIEW_BOOKING:I

.field private RC_WEBVIEW_BUY_POINT:I

.field private RC_WEBVIEW_CUSTOMINPUT:I

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private doRedeeming:Z

.field private gCurrentImagePosition:I

.field private gCurrentLat:D

.field private gCurrentLon:D

.field private gDialog:Landroid/app/ProgressDialog;

.field private gFoundLocation:Z

.field private gLastTokenBzBs:Ljava/lang/String;

.field private gLayoutPagerNav:Landroid/widget/LinearLayout;

.field private gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

.field private gTimerPager:Ljava/util/Timer;

.field private gps:Lcom/bzbs/util/GPSTracker;

.field private isContinueUrl:Z

.field protected lm:Landroid/location/LocationManager;

.field protected locationListener:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$MyLocationListener;

.field private mCampaignImageAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

.field private mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutManagerImage:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLayoutManagerRelated:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

.field private mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

.field private networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

.field private paramCampaign:Lcom/bzbs/bean/Campaign;

.field private paramCampaignID:I

.field private paramFromList:Z

.field private paramNFCTag:Lcom/bzbs/bean/NFCTag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    const-class v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 115
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->OPTION_PAGER_TYPE:I

    .line 137
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_BEAM:I

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    .line 139
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BUY_POINT:I

    .line 140
    const/16 v0, 0x28

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BOOKING:I

    .line 142
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_LOGIN_REDEEM:I

    .line 143
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_LOGIN_LIKE:I

    .line 144
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_SURVEY:I

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLastTokenBzBs:Ljava/lang/String;

    .line 1933
    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentImagePosition:I

    .line 2462
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2463
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->isContinueUrl:Z

    .line 2988
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gFoundLocation:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/facebook/CallbackManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;I)Ljava/util/ArrayList;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # I

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->appendCampaignHistory(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialPoint()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonCampaign(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->OPTION_PAGER_TYPE:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerImage:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gFoundLocation:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gFoundLocation:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # D

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)D
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;D)D
    .registers 4
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # D

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/bzbs/bean/NFCTag;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->refreshLayoutLanguage()V

    return-void
.end method

.method private appendCampaignHistory(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "campaign_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "campaign_history"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 481
    .local v1, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_17

    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :goto_16
    return-object v1

    .line 485
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .restart local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_16

    .line 489
    .end local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_24
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .restart local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method private checkCacheAndLoadNew(ILcom/bzbs/bean/NFCTag;)V
    .registers 11
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/bzbs/bean/NFCTag;

    .prologue
    const v7, 0x7f1000c6

    const/4 v6, 0x0

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "campaign_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 812
    .local v0, "catch_data":Ljava/lang/String;
    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 814
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2c
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonCampaign(Ljava/lang/String;ZZZ)V

    .line 816
    const v3, 0x7f1000c3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 817
    .local v1, "layoutRootPoint":Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 819
    const v3, 0x7f1000c6

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 820
    .local v2, "scrollRoot":Landroid/widget/ScrollView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->setVisibility(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_49} :catch_5a

    .line 825
    .end local v1    # "layoutRootPoint":Landroid/widget/RelativeLayout;
    .end local v2    # "scrollRoot":Landroid/widget/ScrollView;
    :goto_49
    invoke-direct {p0, p1, p2, v6, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 830
    :goto_4c
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 831
    .restart local v2    # "scrollRoot":Landroid/widget/ScrollView;
    invoke-virtual {v2, v6, v6}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 832
    return-void

    .line 827
    .end local v2    # "scrollRoot":Landroid/widget/ScrollView;
    :cond_56
    invoke-direct {p0, p1, p2, v6, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_4c

    .line 821
    :catch_5a
    move-exception v3

    goto :goto_49
.end method

.method private checkRedeemError(Z)Ljava/lang/String;
    .registers 16
    .param p1, "isCheckNFC"    # Z

    .prologue
    const v13, 0x7f09023f

    const v9, 0x7f09023e

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x6

    .line 1361
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v8

    if-ne v8, v11, :cond_50

    .line 1369
    :cond_13
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v8, v12, :cond_1f

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_d2

    .line 1370
    :cond_1f
    iget-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramFromList:Z

    if-ne v8, v11, :cond_bc

    .line 1372
    :try_start_23
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-lt v8, v9, :cond_92

    .line 1373
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "nfc"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NfcManager;

    .line 1374
    .local v4, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v4}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1376
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_7c

    .line 1377
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1378
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_5e

    .line 1380
    const v8, 0x7f09023e

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4e} :catch_a8

    move-result-object v8

    .line 1512
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "manager":Landroid/nfc/NfcManager;
    :goto_4f
    return-object v8

    .line 1364
    :cond_50
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v8

    if-nez v8, :cond_13

    .line 1365
    const v8, 0x7f0900d5

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1382
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_5e
    const v8, 0x7f09023d

    :try_start_61
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1385
    :cond_66
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_74

    .line 1387
    const v8, 0x7f090245

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1389
    :cond_74
    const v8, 0x7f090240

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1393
    :cond_7c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_8a

    .line 1395
    const v8, 0x7f090246

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1397
    :cond_8a
    const v8, 0x7f09023f

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1401
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_92
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_a0

    .line 1403
    const v8, 0x7f09023e

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1405
    :cond_a0
    const v8, 0x7f09023f

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_a6} :catch_a8

    move-result-object v8

    goto :goto_4f

    .line 1408
    :catch_a8
    move-exception v3

    .line 1409
    .local v3, "ex":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_b7

    .line 1411
    const v8, 0x7f090246

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1413
    :cond_b7
    invoke-virtual {p0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1417
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_bc
    if-ne p1, v11, :cond_d2

    .line 1418
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-ne v8, v10, :cond_c9

    .line 1420
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4f

    .line 1422
    :cond_c9
    const v8, 0x7f09023d

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4f

    .line 1428
    :cond_d2
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_e4

    .line 1429
    if-ne p1, v11, :cond_e4

    .line 1431
    const v8, 0x7f090246

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4f

    .line 1436
    :cond_e4
    if-nez p1, :cond_12c

    .line 1437
    :try_start_e6
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    if-nez v8, :cond_f6

    .line 1438
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v8, :cond_f6

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_f4} :catch_13e

    if-ne v8, v12, :cond_126

    .line 1458
    :cond_f6
    :goto_f6
    :try_start_f6
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-wide v8, v8, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_11a

    .line 1459
    new-instance v5, Ljava/util/Date;

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-wide v8, v8, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v10, 0x6270

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1460
    .local v5, "nextRedeemDate":Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 1474
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_117} :catch_18c

    move-result v8

    if-eqz v8, :cond_148

    .line 1487
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v5    # "nextRedeemDate":Ljava/util/Date;
    :cond_11a
    :goto_11a
    :try_start_11a
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-boolean v8, v8, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v8, :cond_19f

    .line 1488
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_124} :catch_196

    goto/16 :goto_4f

    .line 1441
    :cond_126
    :try_start_126
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;

    goto/16 :goto_4f

    .line 1445
    :cond_12c
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eqz v8, :cond_f6

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMedia:I

    if-eq v8, v12, :cond_f6

    .line 1448
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ConditionAlert:Ljava/lang/String;
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13c} :catch_13e

    goto/16 :goto_4f

    .line 1451
    :catch_13e
    move-exception v3

    .line 1452
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "(Exception|checkRedeemError|paramCampaign.RedeemMedia)"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f6

    .line 1477
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v1    # "currentDate":Ljava/util/Date;
    .restart local v5    # "nextRedeemDate":Ljava/util/Date;
    :cond_148
    const v8, 0x7f0900b9

    :try_start_14b
    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1478
    .local v7, "str_nextredeemdate":Ljava/lang/String;
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "dd MMM yyyy HH:mm"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/util/LanguageSetting;->GetLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-wide v10, v10, Lcom/bzbs/bean/Campaign;->NextRedeemDate:J

    const-wide/16 v12, 0x6270

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1479
    .local v6, "strNextRedeemDate":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_189} :catch_18c

    move-result-object v8

    goto/16 :goto_4f

    .line 1482
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v5    # "nextRedeemDate":Ljava/util/Date;
    .end local v6    # "strNextRedeemDate":Ljava/lang/String;
    .end local v7    # "str_nextredeemdate":Ljava/lang/String;
    :catch_18c
    move-exception v3

    .line 1483
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "(Exception|checkRedeemError|paramCampaign.NextRedeemDate > 0)"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11a

    .line 1490
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_196
    move-exception v2

    .line 1491
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "(Exception|checkRedeemError|paramCampaign.IsConditionPass == false)"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_19f
    :try_start_19f
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lez v8, :cond_1c1

    .line 1496
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->RedeemCount:I

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v9, v9, Lcom/bzbs/bean/Campaign;->RedeemMostPerPerson:I

    if-lt v8, v9, :cond_1c1

    .line 1497
    const v8, 0x7f0900d1

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1b5} :catch_1b8

    move-result-object v8

    goto/16 :goto_4f

    .line 1500
    :catch_1b8
    move-exception v3

    .line 1501
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "(Exception|checkRedeemError|paramCampaign.RedeemCount >= paramCampaign.RedeemMostPerPerson)"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1c1
    :try_start_1c1
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v8, v8, Lcom/bzbs/bean/Campaign;->ItemCountSold:I

    iget-object v9, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget v9, v9, Lcom/bzbs/bean/Campaign;->Quantity:I

    if-lt v8, v9, :cond_1dd

    .line 1506
    const v8, 0x7f0900d8

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1d1} :catch_1d4

    move-result-object v8

    goto/16 :goto_4f

    .line 1508
    :catch_1d4
    move-exception v3

    .line 1509
    .restart local v3    # "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "(Exception|checkRedeemError|paramCampaign.ItemCountSold >= paramCampaign.Quantity)"

    invoke-static {v8, v9}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_1dd
    const-string/jumbo v8, ""

    goto/16 :goto_4f
.end method

.method private getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V
    .registers 18
    .param p1, "id"    # I
    .param p2, "pNFCTag"    # Lcom/bzbs/bean/NFCTag;
    .param p3, "auto_redeem"    # Z
    .param p4, "auto_like"    # Z

    .prologue
    .line 835
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 836
    .local v4, "pbLoading":Landroid/widget/ProgressBar;
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 838
    const-string/jumbo v11, ""

    .line 840
    .local v11, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 841
    .local v10, "tokenBzBs":Ljava/lang/String;
    if-eqz v10, :cond_8a

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&format=json&type=full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 847
    :goto_4f
    new-instance v9, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v9}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 848
    .local v9, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCampaign="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 850
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;JLandroid/widget/ProgressBar;ZZILcom/bzbs/bean/NFCTag;)V

    invoke-virtual {v9, v12, v11, v0}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 915
    return-void

    .line 844
    .end local v2    # "startTime":J
    .end local v9    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaign/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?device_locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&format=json&type=full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4f
.end method

.method private getCampaignHistory()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "campaign_history"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 468
    .local v1, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_10

    .line 474
    .end local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_f
    return-object v1

    .line 471
    .restart local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_f

    .line 473
    :catch_16
    move-exception v0

    .line 474
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_f
.end method

.method private getLocation()V
    .registers 3

    .prologue
    .line 2996
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void getLocation() {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 3091
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$30;->start()V

    .line 3092
    return-void
.end method

.method private getPoints()V
    .registers 7

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 777
    .local v1, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v1, :cond_57

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/profile/me/updated_points?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, "url":Ljava/lang/String;
    sget-object v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPoints="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 781
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 808
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "url":Ljava/lang/String;
    :cond_57
    return-void
.end method

.method private goBack()V
    .registers 5

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaignHistory()Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    .local v0, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_40

    .line 456
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    const-string/jumbo v2, "campaign_history"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 463
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_40
    return-void
.end method

.method private goBooking(Lcom/bzbs/bean/Campaign;)V
    .registers 7
    .param p1, "pCampaign"    # Lcom/bzbs/bean/Campaign;

    .prologue
    .line 2718
    if-eqz p1, :cond_a9

    .line 2719
    iget-object v3, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    if-eqz v3, :cond_a9

    iget-object v3, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 2721
    :try_start_11
    iget-object v2, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_d2

    .line 2724
    .local v2, "url":Ljava/lang/String;
    :try_start_13
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2725
    .local v0, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v3, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2726
    const-string/jumbo v3, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_35} :catch_d4

    move-result-object v2

    .line 2731
    .end local v0    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_36
    :try_start_36
    const-string/jumbo v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 2732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2734
    :cond_5c
    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 2735
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2740
    :goto_8c
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/WebViewBookingActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2741
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2742
    const-string/jumbo v3, "enable_webview_back"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2743
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BOOKING:I

    invoke-virtual {p0, v1, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2749
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :cond_a9
    :goto_a9
    return-void

    .line 2737
    .restart local v2    # "url":Ljava/lang/String;
    :cond_aa
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_d0} :catch_d2

    move-result-object v2

    goto :goto_8c

    .line 2744
    .end local v2    # "url":Ljava/lang/String;
    :catch_d2
    move-exception v3

    goto :goto_a9

    .line 2727
    .restart local v2    # "url":Ljava/lang/String;
    :catch_d4
    move-exception v3

    goto/16 :goto_36
.end method

.method private goBuyMarketPlace(Lcom/bzbs/bean/Campaign;)V
    .registers 14
    .param p1, "pCampaign"    # Lcom/bzbs/bean/Campaign;

    .prologue
    .line 2912
    if-eqz p1, :cond_3e

    .line 2913
    iget-object v8, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    if-eqz v8, :cond_3e

    iget-object v8, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 2915
    :try_start_11
    iget-object v7, p1, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 2917
    .local v7, "url":Ljava/lang/String;
    const-string/jumbo v8, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    const-string/jumbo v8, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 2918
    :cond_25
    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2919
    .local v3, "arrTemp":[Ljava/lang/String;
    array-length v8, v3

    const/4 v9, 0x2

    if-lt v8, v9, :cond_8b

    .line 2920
    const/4 v8, 0x1

    aget-object v1, v3, v8
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_33} :catch_89

    .line 2923
    .local v1, "android_ns":Ljava/lang/String;
    :try_start_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2924
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_33 .. :try_end_3e} :catch_64

    .line 2961
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :cond_3e
    :goto_3e
    return-void

    .line 2925
    .restart local v1    # "android_ns":Ljava/lang/String;
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :catch_3f
    move-exception v5

    .line 2926
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_40
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_63
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_63} :catch_89

    goto :goto_3e

    .line 2928
    .end local v5    # "ex":Ljava/lang/Exception;
    :catch_64
    move-exception v2

    .line 2929
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    :try_start_65
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3e

    .line 2956
    .end local v1    # "android_ns":Ljava/lang/String;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "arrTemp":[Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :catch_89
    move-exception v8

    goto :goto_3e

    .line 2932
    .restart local v3    # "arrTemp":[Ljava/lang/String;
    .restart local v7    # "url":Ljava/lang/String;
    :cond_8b
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_9a} :catch_89

    goto :goto_3e

    .line 2936
    .end local v3    # "arrTemp":[Ljava/lang/String;
    :cond_9b
    :try_start_9b
    new-instance v4, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2937
    .local v4, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v8, "<deviceId>"

    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2938
    const-string/jumbo v8, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_bd} :catch_154

    move-result-object v7

    .line 2943
    .end local v4    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_be
    :try_start_be
    const-string/jumbo v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e4

    const-string/jumbo v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_e4

    .line 2944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2946
    :cond_e4
    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 2947
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2952
    :goto_114
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/samsung/privilege/activity/WebViewBuyPointActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2953
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v8, "url"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2954
    iget v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BUY_POINT:I

    invoke-virtual {p0, v6, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3e

    .line 2949
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_12c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "?token="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "&return_url=bzbs_buy_return_url&header=false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_152} :catch_89

    move-result-object v7

    goto :goto_114

    .line 2939
    :catch_154
    move-exception v8

    goto/16 :goto_be
.end method

.method private goGetPoint(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pCampaign"    # Lcom/bzbs/bean/Campaign;

    .prologue
    .line 2832
    const-string/jumbo v6, ""

    const v7, 0x7f09026f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 2835
    :try_start_12
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2836
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_3d

    .line 2837
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 2838
    .local v1, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2839
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_84

    .line 2845
    .end local v1    # "fontDefault":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_3d
    :goto_3d
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2846
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v6, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2849
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v6, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "goGetPoint="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2851
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;

    invoke-direct {v7, p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    invoke-virtual {v0, v6, p1, v3, v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2909
    return-void

    .line 2841
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "startTime":J
    :catch_84
    move-exception v6

    goto :goto_3d
.end method

.method private goRedeemCampaign(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
    .registers 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pCampaign"    # Lcom/bzbs/bean/Campaign;

    .prologue
    .line 2752
    const-string/jumbo v6, ""

    const v7, 0x7f09026f

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 2755
    :try_start_12
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2756
    .local v2, "mMessageView":Landroid/widget/TextView;
    if-eqz v2, :cond_3d

    .line 2757
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 2758
    .local v1, "fontDefault":Landroid/graphics/Typeface;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2759
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3d} :catch_84

    .line 2765
    .end local v1    # "fontDefault":Landroid/graphics/Typeface;
    .end local v2    # "mMessageView":Landroid/widget/TextView;
    :cond_3d
    :goto_3d
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2766
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v6, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/lib/survey/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2768
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2769
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v6, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doRedeem="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 2771
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;

    invoke-direct {v7, p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    invoke-virtual {v0, v6, p1, v3, v7}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2829
    return-void

    .line 2761
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "startTime":J
    :catch_84
    move-exception v6

    goto :goto_3d
.end method

.method private initialLayout()V
    .registers 15

    .prologue
    .line 639
    const v10, 0x7f1000c3

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 640
    .local v4, "layoutRootPoint":Landroid/widget/RelativeLayout;
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 642
    const v10, 0x7f1000c6

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 643
    .local v6, "scrollRoot":Landroid/widget/ScrollView;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 645
    const v10, 0x7f1000cd

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 646
    .local v5, "layoutRootRedeem":Landroid/widget/LinearLayout;
    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 648
    const v10, 0x7f1000d0

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 649
    .local v3, "layoutRootError":Landroid/widget/LinearLayout;
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    const v10, 0x7f1000d7

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    iput-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    .line 657
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 658
    new-instance v10, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, p0, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerImage:Landroid/support/v7/widget/LinearLayoutManager;

    .line 659
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerImage:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 661
    const v10, 0x7f1000f7

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView;

    iput-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    .line 662
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 663
    new-instance v10, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, p0, v11, v12}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerRelated:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 664
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerRelated:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 666
    new-instance v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;

    invoke-direct {v10, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    new-instance v11, Lcom/bzbs/event/RecyclerItemClickListener;

    .line 679
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;

    invoke-direct {v13, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-direct {v11, v12, v13}, Lcom/bzbs/event/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lcom/bzbs/event/RecyclerItemClickListener$OnItemClickListener;)V

    .line 678
    invoke-virtual {v10, v11}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 710
    const v10, 0x7f1000ea

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 711
    .local v0, "layoutBranchesSeeMore":Landroid/widget/RelativeLayout;
    const v10, 0x7f1000eb

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 712
    .local v7, "textBranchesSeeMore":Landroid/widget/TextView;
    new-instance v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;

    invoke-direct {v10, p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    const v10, 0x7f1000f2

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 727
    .local v1, "layoutConditionsSeeMore":Landroid/widget/RelativeLayout;
    const v10, 0x7f1000f3

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 728
    .local v8, "textConditionsSeeMore":Landroid/widget/TextView;
    new-instance v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;

    invoke-direct {v10, p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 742
    const v10, 0x7f1000fa

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 743
    .local v2, "layoutDescriptionSeeMore":Landroid/widget/RelativeLayout;
    const v10, 0x7f1000fb

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 744
    .local v9, "textDescriptionSeeMore":Landroid/widget/TextView;
    new-instance v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;

    invoke-direct {v10, p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iget v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    if-lez v10, :cond_fd

    .line 759
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v10, :cond_f6

    .line 760
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramFromList:Z

    .line 761
    iget v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v10, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->checkCacheAndLoadNew(ILcom/bzbs/bean/NFCTag;)V

    .line 773
    :cond_f5
    :goto_f5
    return-void

    .line 763
    :cond_f6
    iget v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->checkCacheAndLoadNew(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_f5

    .line 766
    :cond_fd
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "campaign"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/bzbs/bean/Campaign;

    iput-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 767
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    if-eqz v10, :cond_f5

    .line 770
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v10}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->checkCacheAndLoadNew(ILcom/bzbs/bean/NFCTag;)V

    goto :goto_f5
.end method

.method private initialParam()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 624
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "campaign_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    .line 626
    const-string/jumbo v1, "nfc_tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 628
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramFromList:Z

    .line 630
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    if-lez v1, :cond_3e

    .line 631
    const-string/jumbo v1, "campaign"

    const-string/jumbo v2, "view"

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    :goto_3d
    return-void

    .line 633
    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "campaign"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Campaign;

    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 634
    const-string/jumbo v1, "campaign"

    const-string/jumbo v2, "view"

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3d
.end method

.method private initialPoint()V
    .registers 10

    .prologue
    const v8, 0x7f090273

    .line 920
    const v6, 0x7f1000c4

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 921
    .local v4, "textHeaderPoints":Landroid/widget/TextView;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "###,###,###"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 922
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v2

    .line 923
    .local v2, "points":J
    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, "strPoints":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_a5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a5

    .line 927
    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-ltz v6, :cond_6f

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <font color=\'#3ba9f6\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090275

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 937
    :goto_6e
    return-void

    .line 932
    :cond_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <font color=\'#3ba9f6\'>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090274

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 935
    :cond_a5
    const v6, 0x7f090279

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method private initialRating(D)V
    .registers 12
    .param p1, "rating"    # D

    .prologue
    .line 940
    const v5, 0x7f1000dc

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 941
    .local v0, "imageRating1":Landroid/widget/ImageView;
    const v5, 0x7f1000dd

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 942
    .local v1, "imageRating2":Landroid/widget/ImageView;
    const v5, 0x7f1000de

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 943
    .local v2, "imageRating3":Landroid/widget/ImageView;
    const v5, 0x7f1000df

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 944
    .local v3, "imageRating4":Landroid/widget/ImageView;
    const v5, 0x7f1000e0

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 946
    .local v4, "imageRating5":Landroid/widget/ImageView;
    const-wide/high16 v6, 0x4014000000000000L

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_52

    .line 947
    const v5, 0x7f0202b8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 948
    const v5, 0x7f0202b8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 949
    const v5, 0x7f0202b8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 950
    const v5, 0x7f0202b8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 951
    const v5, 0x7f0202b8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 988
    :cond_51
    :goto_51
    return-void

    .line 952
    :cond_52
    const-wide/high16 v6, 0x4010000000000000L

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_78

    .line 953
    const v5, 0x7f0202b8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
    const v5, 0x7f0202b8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    const v5, 0x7f0202b8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 956
    const v5, 0x7f0202b8

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 958
    const-wide/high16 v6, 0x4010000000000000L

    sub-double v6, p1, v6

    invoke-direct {p0, v4, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRatingHalf(Landroid/widget/ImageView;D)V

    goto :goto_51

    .line 959
    :cond_78
    const-wide/high16 v6, 0x4008000000000000L

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_9e

    .line 960
    const v5, 0x7f0202b8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 961
    const v5, 0x7f0202b8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    const v5, 0x7f0202b8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 964
    const-wide/high16 v6, 0x4008000000000000L

    sub-double v6, p1, v6

    invoke-direct {p0, v3, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRatingHalf(Landroid/widget/ImageView;D)V

    .line 965
    const v5, 0x7f0202ac

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 966
    :cond_9e
    const-wide/high16 v6, 0x4000000000000000L

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_c4

    .line 967
    const v5, 0x7f0202b8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 968
    const v5, 0x7f0202b8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 970
    const-wide/high16 v6, 0x4000000000000000L

    sub-double v6, p1, v6

    invoke-direct {p0, v2, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRatingHalf(Landroid/widget/ImageView;D)V

    .line 971
    const v5, 0x7f0202ac

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 972
    const v5, 0x7f0202ac

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_51

    .line 973
    :cond_c4
    const-wide/high16 v6, 0x3ff0000000000000L

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_eb

    .line 974
    const v5, 0x7f0202b8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 976
    const-wide/high16 v6, 0x3ff0000000000000L

    sub-double v6, p1, v6

    invoke-direct {p0, v1, v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRatingHalf(Landroid/widget/ImageView;D)V

    .line 977
    const v5, 0x7f0202ac

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 978
    const v5, 0x7f0202ac

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 979
    const v5, 0x7f0202ac

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51

    .line 980
    :cond_eb
    const-wide/16 v6, 0x0

    cmpl-double v5, p1, v6

    if-ltz v5, :cond_51

    .line 982
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRatingHalf(Landroid/widget/ImageView;D)V

    .line 983
    const v5, 0x7f0202ac

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 984
    const v5, 0x7f0202ac

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 985
    const v5, 0x7f0202ac

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 986
    const v5, 0x7f0202ac

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_51
.end method

.method private initialRatingHalf(Landroid/widget/ImageView;D)V
    .registers 6
    .param p1, "imageRating"    # Landroid/widget/ImageView;
    .param p2, "rating"    # D

    .prologue
    .line 991
    const-wide/high16 v0, 0x3ff0000000000000L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_d

    .line 992
    const v0, 0x7f0202b8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    :cond_c
    :goto_c
    return-void

    .line 993
    :cond_d
    const-wide v0, 0x3feccccccccccccdL

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1d

    .line 994
    const v0, 0x7f0202b5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 995
    :cond_1d
    const-wide v0, 0x3fe999999999999aL

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_2d

    .line 996
    const v0, 0x7f0202b4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 997
    :cond_2d
    const-wide v0, 0x3fe6666666666666L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_3d

    .line 998
    const v0, 0x7f0202b3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 999
    :cond_3d
    const-wide v0, 0x3fe3333333333333L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_4d

    .line 1000
    const v0, 0x7f0202b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1001
    :cond_4d
    const-wide/high16 v0, 0x3fe0000000000000L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_5a

    .line 1002
    const v0, 0x7f0202b1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1003
    :cond_5a
    const-wide v0, 0x3fd999999999999aL

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_6a

    .line 1004
    const v0, 0x7f0202b0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1005
    :cond_6a
    const-wide v0, 0x3fd3333333333333L

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_7a

    .line 1006
    const v0, 0x7f0202af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1007
    :cond_7a
    const-wide v0, 0x3fc999999999999aL

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_8a

    .line 1008
    const v0, 0x7f0202ae

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    .line 1009
    :cond_8a
    const-wide v0, 0x3fb999999999999aL

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_9b

    .line 1010
    const v0, 0x7f0202ad

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    .line 1011
    :cond_9b
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_c

    .line 1012
    const v0, 0x7f0202ac

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c
.end method

.method private processJsonCampaign(Ljava/lang/String;ZZZ)V
    .registers 39
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "isFromCache"    # Z
    .param p3, "auto_redeem"    # Z
    .param p4, "auto_like"    # Z

    .prologue
    .line 1018
    :try_start_0
    new-instance v29, Lcom/bzbs/bean/Campaign;

    new-instance v30, Lorg/json/JSONObject;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v29 .. v30}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 1025
    if-nez p2, :cond_4f

    .line 1026
    const-string/jumbo v29, "Gift Campaign Details"

    const-string/jumbo v30, "View Campaign"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "|"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v29 .. v31}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_542

    .line 1032
    :cond_4f
    :goto_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    if-eqz v29, :cond_49e

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialPoint()V

    .line 1037
    const v29, 0x7f1000c3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 1038
    .local v11, "layoutRootPoint":Landroid/widget/RelativeLayout;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1040
    const v29, 0x7f1000d8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1042
    .local v21, "textPrivilegeAgency":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    const v29, 0x7f1000e3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1046
    .local v22, "textPrivilegeName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/bzbs/bean/Campaign;->Rating:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialRating(D)V

    .line 1050
    const v29, 0x7f1000e1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 1052
    .local v25, "textReviewCount":Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/bzbs/bean/Campaign;->Buzz:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/bzbs/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    const v29, 0x7f1000d9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1055
    .local v10, "imageLike":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_49f

    .line 1056
    const v29, 0x7f020298

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1061
    :goto_129
    const v29, 0x7f1000db

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 1063
    .local v20, "textLikeCount":Landroid/widget/TextView;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "<font color=\'#3ba9f6\'>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f090323

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "</font> ("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/bzbs/bean/Campaign;->PeopleLike:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/bzbs/util/BBUtil;->formatK(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, ")"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    const v29, 0x7f1000e2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1068
    .local v26, "textShare":Landroid/widget/TextView;
    const v29, 0x7f1000e5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1070
    .local v24, "textProgressLeft":Landroid/widget/TextView;
    new-instance v9, Ljava/text/DecimalFormat;

    const-string/jumbo v29, "###,###,###"

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v9, "formatterHasDigi":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1072
    .local v14, "strPoint":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0900f1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1073
    .local v15, "strPointUnit":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    const-wide/high16 v32, 0x3ff0000000000000L

    cmpg-double v29, v30, v32

    if-gtz v29, :cond_214

    .line 1074
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0900f0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1076
    :cond_214
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    const v29, 0x7f1000e6

    :try_start_235
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1080
    .local v23, "textProgress":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->ExpireDate:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/bzbs/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CurrentDate:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/bzbs/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    sub-long v4, v30, v32

    .line 1081
    .local v4, "RemainingDate":J
    const-wide/16 v30, 0x0

    cmp-long v29, v4, v30

    if-lez v29, :cond_4a9

    .line 1082
    const-wide/32 v30, 0x15180

    div-long v6, v4, v30

    .line 1083
    .local v6, "RemainingDay":J
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f0900e3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const v30, 0x7f0900e4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2b6
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_2b6} :catch_4bd

    .line 1100
    .end local v4    # "RemainingDate":J
    .end local v6    # "RemainingDay":J
    .end local v23    # "textProgress":Landroid/widget/TextView;
    :goto_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_4d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, ""

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4d5

    .line 1101
    const v29, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1104
    .local v16, "textBranchesCaption":Landroid/widget/TextView;
    const v29, 0x7f1000e9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1106
    .local v17, "textBranchesDetail":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "<br>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4c0

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :goto_31f
    new-instance v29, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1125
    const v29, 0x7f1000ee

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    const v29, 0x7f1000ec

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    const v29, 0x7f1000ed

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    const v29, 0x7f1000e7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    .end local v16    # "textBranchesCaption":Landroid/widget/TextView;
    .end local v17    # "textBranchesDetail":Landroid/widget/TextView;
    :goto_371
    const v29, 0x7f1000f8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1139
    .local v19, "textDescriptionCaption":Landroid/widget/TextView;
    const v29, 0x7f1000f9

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1141
    .local v18, "textDescription":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "<br>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4e7

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1147
    :goto_3b7
    new-instance v29, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1162
    const v29, 0x7f1000f0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 1165
    .local v27, "textTermsConditionsCaption":Landroid/widget/TextView;
    const v29, 0x7f1000f1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 1167
    .local v28, "textTermsConditionsDetail":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "<br>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_4fc

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    :goto_40b
    new-instance v29, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/TextView;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 1187
    :try_start_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    move-object/from16 v29, v0

    sget v30, Lcom/bzbs/data/AppSetting;->CAT_WINNER:I

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_50d

    .line 1188
    const v29, 0x7f1000ef

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V
    :try_end_441
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_441} :catch_51f

    .line 1198
    :goto_441
    :try_start_441
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setUI_Pager()V

    .line 1199
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setUI_Nav()V
    :try_end_447
    .catch Ljava/lang/Exception; {:try_start_441 .. :try_end_447} :catch_522

    .line 1204
    :goto_447
    const v29, 0x7f1000c6

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    .line 1205
    .local v13, "scrollRoot":Landroid/widget/ScrollView;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 1212
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setUI_Redeem(Z)V

    .line 1214
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setUI_CampaignRelated()V

    .line 1216
    if-nez p2, :cond_49e

    .line 1217
    const/16 v29, 0x1

    move/from16 v0, p3

    move/from16 v1, v29

    if-ne v0, v1, :cond_485

    .line 1218
    const v29, 0x7f1000cd

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1219
    .local v12, "layoutRootRedeem":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v29

    if-nez v29, :cond_485

    .line 1220
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeemAction()V

    .line 1224
    .end local v12    # "layoutRootRedeem":Landroid/widget/LinearLayout;
    :cond_485
    const/16 v29, 0x1

    move/from16 v0, p4

    move/from16 v1, v29

    if-ne v0, v1, :cond_49e

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/bzbs/bean/Campaign;->IsLike:Z

    move/from16 v29, v0

    if-nez v29, :cond_49e

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doLikeAction()V

    .line 1231
    .end local v9    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v10    # "imageLike":Landroid/widget/ImageView;
    .end local v11    # "layoutRootPoint":Landroid/widget/RelativeLayout;
    .end local v13    # "scrollRoot":Landroid/widget/ScrollView;
    .end local v14    # "strPoint":Ljava/lang/String;
    .end local v15    # "strPointUnit":Ljava/lang/String;
    .end local v18    # "textDescription":Landroid/widget/TextView;
    .end local v19    # "textDescriptionCaption":Landroid/widget/TextView;
    .end local v20    # "textLikeCount":Landroid/widget/TextView;
    .end local v21    # "textPrivilegeAgency":Landroid/widget/TextView;
    .end local v22    # "textPrivilegeName":Landroid/widget/TextView;
    .end local v24    # "textProgressLeft":Landroid/widget/TextView;
    .end local v25    # "textReviewCount":Landroid/widget/TextView;
    .end local v26    # "textShare":Landroid/widget/TextView;
    .end local v27    # "textTermsConditionsCaption":Landroid/widget/TextView;
    .end local v28    # "textTermsConditionsDetail":Landroid/widget/TextView;
    :cond_49e
    return-void

    .line 1058
    .restart local v10    # "imageLike":Landroid/widget/ImageView;
    .restart local v11    # "layoutRootPoint":Landroid/widget/RelativeLayout;
    .restart local v21    # "textPrivilegeAgency":Landroid/widget/TextView;
    .restart local v22    # "textPrivilegeName":Landroid/widget/TextView;
    .restart local v25    # "textReviewCount":Landroid/widget/TextView;
    :cond_49f
    const v29, 0x7f020299

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_129

    .line 1085
    .restart local v4    # "RemainingDate":J
    .restart local v9    # "formatterHasDigi":Ljava/text/NumberFormat;
    .restart local v14    # "strPoint":Ljava/lang/String;
    .restart local v15    # "strPointUnit":Ljava/lang/String;
    .restart local v20    # "textLikeCount":Landroid/widget/TextView;
    .restart local v23    # "textProgress":Landroid/widget/TextView;
    .restart local v24    # "textProgressLeft":Landroid/widget/TextView;
    .restart local v26    # "textShare":Landroid/widget/TextView;
    :cond_4a9
    const v29, 0x7f0900e5

    :try_start_4ac
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4bb
    .catch Ljava/lang/Exception; {:try_start_4ac .. :try_end_4bb} :catch_4bd

    goto/16 :goto_2b6

    .line 1095
    .end local v4    # "RemainingDate":J
    .end local v23    # "textProgress":Landroid/widget/TextView;
    :catch_4bd
    move-exception v29

    goto/16 :goto_2b6

    .line 1109
    .restart local v16    # "textBranchesCaption":Landroid/widget/TextView;
    .restart local v17    # "textBranchesDetail":Landroid/widget/TextView;
    :cond_4c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Location:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31f

    .line 1131
    .end local v16    # "textBranchesCaption":Landroid/widget/TextView;
    .end local v17    # "textBranchesDetail":Landroid/widget/TextView;
    :cond_4d5
    const v29, 0x7f1000e7

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x8

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_371

    .line 1144
    .restart local v18    # "textDescription":Landroid/widget/TextView;
    .restart local v19    # "textDescriptionCaption":Landroid/widget/TextView;
    :cond_4e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Detail:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3b7

    .line 1170
    .restart local v27    # "textTermsConditionsCaption":Landroid/widget/TextView;
    .restart local v28    # "textTermsConditionsDetail":Landroid/widget/TextView;
    :cond_4fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_40b

    .line 1190
    :cond_50d
    const v29, 0x7f1000ef

    :try_start_510
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setVisibility(I)V
    :try_end_51d
    .catch Ljava/lang/Exception; {:try_start_510 .. :try_end_51d} :catch_51f

    goto/16 :goto_441

    .line 1192
    :catch_51f
    move-exception v29

    goto/16 :goto_441

    .line 1200
    :catch_522
    move-exception v8

    .line 1201
    .local v8, "e":Ljava/lang/Exception;
    sget-object v29, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "ERROR:setUI_Pager();,setUI_Nav();,"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_447

    .line 1028
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v10    # "imageLike":Landroid/widget/ImageView;
    .end local v11    # "layoutRootPoint":Landroid/widget/RelativeLayout;
    .end local v14    # "strPoint":Ljava/lang/String;
    .end local v15    # "strPointUnit":Ljava/lang/String;
    .end local v18    # "textDescription":Landroid/widget/TextView;
    .end local v19    # "textDescriptionCaption":Landroid/widget/TextView;
    .end local v20    # "textLikeCount":Landroid/widget/TextView;
    .end local v21    # "textPrivilegeAgency":Landroid/widget/TextView;
    .end local v22    # "textPrivilegeName":Landroid/widget/TextView;
    .end local v24    # "textProgressLeft":Landroid/widget/TextView;
    .end local v25    # "textReviewCount":Landroid/widget/TextView;
    .end local v26    # "textShare":Landroid/widget/TextView;
    .end local v27    # "textTermsConditionsCaption":Landroid/widget/TextView;
    .end local v28    # "textTermsConditionsDetail":Landroid/widget/TextView;
    :catch_542
    move-exception v29

    goto/16 :goto_4f
.end method

.method private processJsonRedeem(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "isShowSerial"    # Z
    .param p3, "isGotoWebsite"    # Z

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2715
    return-void
.end method

.method private refreshLayoutLanguage()V
    .registers 4

    .prologue
    const v2, 0x7f090332

    .line 603
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090333

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ed

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    const v0, 0x7f1000f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ef

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const v0, 0x7f1000f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    const v0, 0x7f1000f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900e1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const v0, 0x7f1000f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ee

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    const v0, 0x7f1000fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    return-void
.end method

.method private setRedeemButtonColor(Z)V
    .registers 4
    .param p1, "isRedeeming"    # Z

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2460
    return-void
.end method

.method private setUI_CampaignRelated()V
    .registers 9

    .prologue
    const v7, 0x7f1000f4

    const/16 v6, 0x8

    .line 1901
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1902
    const v4, 0x7f100105

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1905
    :cond_1b
    const v4, 0x7f1000fe

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cache_campaign_gift_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->CategoryID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1908
    .local v1, "catch_data":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a4

    .line 1910
    :try_start_4f
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1912
    .local v0, "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_76

    .line 1913
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 1914
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1919
    :cond_76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8e

    .line 1920
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-direct {v4, p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 1921
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1931
    .end local v0    # "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    .end local v3    # "i":I
    :goto_8a
    return-void

    .line 1912
    .restart local v0    # "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    .restart local v3    # "i":I
    :cond_8b
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 1923
    :cond_8e
    const v4, 0x7f1000f4

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_9a} :catch_9b

    goto :goto_8a

    .line 1925
    .end local v0    # "arrayCampaign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/Campaign;>;"
    .end local v3    # "i":I
    :catch_9b
    move-exception v2

    .line 1926
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8a

    .line 1929
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_a4
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8a
.end method

.method private setUI_Nav()V
    .registers 11

    .prologue
    const v9, 0x7f1000d3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1854
    const v4, 0x7f1000d2

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    .line 1856
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1857
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1859
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    if-eqz v4, :cond_74

    .line 1860
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_74

    .line 1861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_65

    .line 1862
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1863
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040020

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1865
    .local v3, "viewNavRow":Landroid/view/View;
    const v4, 0x7f1000fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1866
    .local v1, "imageNav":Landroid/widget/ImageView;
    if-nez v0, :cond_5d

    .line 1867
    const v4, 0x7f0202a5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1870
    :cond_5d
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1861
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1873
    .end local v1    # "imageNav":Landroid/widget/ImageView;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewNavRow":Landroid/view/View;
    :cond_65
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v8, :cond_84

    .line 1874
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1886
    .end local v0    # "i":I
    :cond_74
    :goto_74
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_94

    .line 1887
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1891
    :goto_83
    return-void

    .line 1876
    .restart local v0    # "i":I
    :cond_84
    iget v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->OPTION_PAGER_TYPE:I

    if-ne v4, v8, :cond_8e

    .line 1877
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_74

    .line 1879
    :cond_8e
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_74

    .line 1889
    .end local v0    # "i":I
    :cond_94
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_83
.end method

.method private setUI_Pager()V
    .registers 14

    .prologue
    const v12, 0x7f1000d7

    const/4 v11, 0x4

    const/4 v10, 0x0

    const v9, 0x7f1000d6

    const-wide/16 v2, 0x1388

    .line 1516
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    .line 1518
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_98

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->OPTION_PAGER_TYPE:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_98

    .line 1519
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_76

    .line 1527
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1528
    new-instance v6, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v6, v0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 1529
    .local v6, "adapter":Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1530
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 1552
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1570
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1604
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    if-nez v0, :cond_76

    .line 1605
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    .line 1606
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1607
    .local v1, "taskSlideImage":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1611
    .end local v1    # "taskSlideImage":Ljava/util/TimerTask;
    .end local v6    # "adapter":Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageSlideAdapter;
    :cond_76
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 1612
    .local v7, "pagerImageCampaign":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v7, v10}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1613
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "pagerImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    .line 1616
    .local v8, "rvImageCampaign":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v8, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1617
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "rvImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    .end local v7    # "pagerImageCampaign":Landroid/support/v4/view/ViewPager;
    .end local v8    # "rvImageCampaign":Landroid/support/v7/widget/RecyclerView;
    :cond_98
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    if-eqz v0, :cond_105

    iget v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->OPTION_PAGER_TYPE:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_105

    .line 1621
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e3

    .line 1622
    new-instance v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignImageAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 1623
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignImageAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1625
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 1639
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    if-nez v0, :cond_e3

    .line 1640
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    .line 1641
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 1642
    .restart local v1    # "taskSlideImage":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1646
    .end local v1    # "taskSlideImage":Ljava/util/TimerTask;
    :cond_e3
    invoke-virtual {p0, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    .line 1647
    .restart local v7    # "pagerImageCampaign":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v7, v11}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1648
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pagerImageCampaign.setVisibility(View.INVISIBLE);"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-virtual {p0, v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    .line 1651
    .restart local v8    # "rvImageCampaign":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v8, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1652
    sget-object v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rvImageCampaign.setVisibility(View.VISIBLE);"

    invoke-static {v0, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    .end local v7    # "pagerImageCampaign":Landroid/support/v4/view/ViewPager;
    .end local v8    # "rvImageCampaign":Landroid/support/v7/widget/RecyclerView;
    :cond_105
    return-void
.end method

.method private setUI_Redeem(Z)V
    .registers 24
    .param p1, "isFromCache"    # Z

    .prologue
    .line 1234
    const v18, 0x7f1000cd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1235
    .local v5, "layoutRootRedeem":Landroid/widget/LinearLayout;
    const v18, 0x7f1000ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1236
    .local v16, "textRedeemTitle":Landroid/widget/TextView;
    const v18, 0x7f1000cf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1237
    .local v14, "textRedeemRemark":Landroid/widget/TextView;
    const v18, 0x7f1000d0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1238
    .local v3, "layoutRootError":Landroid/widget/LinearLayout;
    const v18, 0x7f1000d1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1240
    .local v12, "textRedeemError":Landroid/widget/TextView;
    const v18, 0x7f1000c7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1241
    .local v6, "layoutRootRedeemTemp":Landroid/widget/LinearLayout;
    const v18, 0x7f1000c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1242
    .local v17, "textRedeemTitleTemp":Landroid/widget/TextView;
    const v18, 0x7f1000c9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1243
    .local v15, "textRedeemRemarkTemp":Landroid/widget/TextView;
    const v18, 0x7f1000ca

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1244
    .local v4, "layoutRootErrorTemp":Landroid/widget/LinearLayout;
    const v18, 0x7f1000cb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1254
    .local v13, "textRedeemErrorTemp":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17f

    .line 1255
    const v18, 0x7f0900ce

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    :goto_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_df

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_df

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    :cond_df
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_193

    .line 1276
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1277
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1336
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13f

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->CustomCaption:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "N/A"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13f

    .line 1338
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1339
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1343
    :cond_13f
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1347
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v18

    if-nez v18, :cond_52b

    .line 1348
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1353
    :goto_171
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v18

    if-nez v18, :cond_534

    .line 1354
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1358
    :goto_17e
    return-void

    .line 1257
    :cond_17f
    const v18, 0x7f0900db

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a9

    .line 1279
    :cond_193
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v9

    .line 1285
    .local v9, "strRedeemError":Ljava/lang/String;
    if-eqz v9, :cond_1bd

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1bd

    .line 1286
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1287
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_f5

    .line 1290
    :cond_1bd
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1291
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1293
    const v18, 0x7f0900c9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1294
    .local v11, "str_point_type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "5"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "6"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e8

    .line 1295
    :cond_200
    const v18, 0x7f0900c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1302
    :cond_20b
    :goto_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_40e

    .line 1303
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v18, "###,###,###.##"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v2, "formatterHasDigi":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/bzbs/util/BBUtil;->CTypeDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1306
    .local v7, "strPoint":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900f1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1307
    .local v8, "strPointUnit":Ljava/lang/String;
    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28e

    .line 1308
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900f0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1311
    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v18, v0

    if-nez v18, :cond_30e

    .line 1312
    :cond_2b1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1297
    .end local v2    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v7    # "strPoint":Ljava/lang/String;
    .end local v8    # "strPointUnit":Ljava/lang/String;
    :cond_2e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "get"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20b

    .line 1298
    const v18, 0x7f0900c8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_20b

    .line 1314
    .restart local v2    # "formatterHasDigi":Ljava/text/NumberFormat;
    .restart local v7    # "strPoint":Ljava/lang/String;
    .restart local v8    # "strPointUnit":Ljava/lang/String;
    :cond_30e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v18, v0

    const/16 v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_36f

    .line 1315
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900dc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1317
    :cond_36f
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0900dd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900de

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900df

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1318
    .local v10, "strWarning":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1322
    .end local v2    # "formatterHasDigi":Ljava/text/NumberFormat;
    .end local v7    # "strPoint":Ljava/lang/String;
    .end local v8    # "strPointUnit":Ljava/lang/String;
    .end local v10    # "strWarning":Ljava/lang/String;
    :cond_40e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_431

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v18, v0

    if-nez v18, :cond_46b

    .line 1323
    :cond_431
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " 0 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900f0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1325
    :cond_46b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v18, v0

    const/16 v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4ac

    .line 1326
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900dc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1328
    :cond_4ac
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f0900dd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/bzbs/bean/Campaign;->MinutesValidAfterUsed:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900de

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const v19, 0x7f0900df

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1329
    .restart local v10    # "strWarning":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f5

    .line 1350
    .end local v9    # "strRedeemError":Ljava/lang/String;
    .end local v10    # "strWarning":Ljava/lang/String;
    .end local v11    # "str_point_type":Ljava/lang/String;
    :cond_52b
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_171

    .line 1356
    :cond_534
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_17e
.end method

.method private showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2964
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2966
    .local v1, "dialogInfo":Landroid/app/Dialog;
    const v3, 0x7f040106

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 2967
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2969
    const v3, 0x7f100152

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2972
    .local v2, "tvMessage":Landroid/widget/TextView;
    const v3, 0x7f10024b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2974
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2976
    new-instance v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;

    invoke-direct {v3, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2984
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2985
    return-void
.end method

.method private showRedeem(Ljava/lang/String;)V
    .registers 12
    .param p1, "pCustomInput"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 270
    const-string/jumbo v7, ""

    const v8, 0x7f09026f

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8, v9, v9}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 282
    if-eqz p1, :cond_a2

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a2

    .line 283
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 284
    .local v2, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "carrier":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/redeem?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 292
    .local v3, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v7, "token"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v7, "carrier"

    invoke-virtual {v3, v7, v0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 296
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    sget-object v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "doRedeem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 298
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;

    invoke-direct {v8, p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V

    invoke-virtual {v1, v7, v6, v3, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 358
    .end local v0    # "carrier":Ljava/lang/String;
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v3    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v4    # "startTime":J
    .end local v6    # "url":Ljava/lang/String;
    :cond_a2
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 621
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2111
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2112
    .local v2, "is_from_noti":Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 2113
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2114
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2115
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_22
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaignHistory()Ljava/util/ArrayList;

    move-result-object v0

    .line 2119
    .local v0, "histories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_62

    .line 2120
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2121
    .restart local v1    # "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2122
    const-string/jumbo v4, "campaign_id"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2123
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2124
    const-string/jumbo v3, "campaign_history"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2125
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2128
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_62
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->finish()V

    .line 2129
    return-void
.end method

.method public doConfirmCondition(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2392
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x1030010

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2394
    .local v1, "dialog":Landroid/app/Dialog;
    const v5, 0x7f0400fc

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 2396
    const v5, 0x7f100152

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2398
    .local v4, "tvMessage":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 2399
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2404
    :goto_2f
    const v5, 0x7f100533

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2405
    .local v3, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2412
    const v5, 0x7f100535

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2413
    .local v2, "layoutCancel":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2419
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2420
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2421
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2423
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2424
    return-void

    .line 2401
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "layoutCancel":Landroid/widget/RelativeLayout;
    .end local v3    # "layoutOk":Landroid/widget/RelativeLayout;
    :cond_68
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Condition:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method public doLike(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2157
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2158
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2159
    const v2, 0x7f09024b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 2173
    :goto_19
    return-void

    .line 2163
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2164
    const v2, 0x7f0900d5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2166
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2167
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_42

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2168
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doLikeAction()V

    goto :goto_19

    .line 2170
    :cond_42
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v4, "Gift Campaign Details"

    const-string/jumbo v5, "like"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doLikeAction()V
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 2176
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2177
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_ba

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ba

    .line 2178
    const v7, 0x7f1000da

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 2179
    .local v3, "pbLoadingLike":Landroid/widget/ProgressBar;
    const v7, 0x7f1000d9

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2180
    .local v1, "imageLike":Landroid/widget/ImageView;
    const v7, 0x7f1000db

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2181
    .local v4, "textLikeCount":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-boolean v7, v7, Lcom/bzbs/bean/Campaign;->IsLike:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_bb

    .line 2183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/likes?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2184
    .local v6, "url":Ljava/lang/String;
    sget-object v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(UNLIKE)url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2187
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2188
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2189
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;

    invoke-direct {v9, p0, v1, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v7, v6, v8, v9}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;[Lcz/msebera/android/httpclient/Header;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2293
    :goto_91
    const-string/jumbo v7, "Gift Campaign Details"

    const-string/jumbo v8, "Click Like"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v1    # "imageLike":Landroid/widget/ImageView;
    .end local v3    # "pbLoadingLike":Landroid/widget/ProgressBar;
    .end local v4    # "textLikeCount":Landroid/widget/TextView;
    .end local v6    # "url":Ljava/lang/String;
    :cond_ba
    return-void

    .line 2232
    .restart local v1    # "imageLike":Landroid/widget/ImageView;
    .restart local v3    # "pbLoadingLike":Landroid/widget/ProgressBar;
    .restart local v4    # "textLikeCount":Landroid/widget/TextView;
    :cond_bb
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v8, v8, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/likes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2233
    .restart local v6    # "url":Ljava/lang/String;
    sget-object v7, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(LIKE)url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 2236
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v7, "token"

    invoke-virtual {v2, v7, v5}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2239
    .restart local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2240
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2241
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;

    invoke-direct {v8, p0, v1, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    invoke-virtual {v0, v7, v6, v2, v8}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_91
.end method

.method public doRedeem(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2427
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2428
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 2429
    const v2, 0x7f09024b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 2445
    :goto_19
    return-void

    .line 2433
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2434
    const v2, 0x7f0900d5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2436
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2437
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_6b

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 2438
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeemAction()V

    .line 2440
    const-string/jumbo v2, "Gift Campaign Details"

    const-string/jumbo v3, "Click Get Privilege"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v5, v5, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 2442
    :cond_6b
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v4, "Gift Campaign Details"

    const-string/jumbo v5, "redeem"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public doRedeemAction()V
    .registers 15

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 2465
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-boolean v10, v10, Lcom/bzbs/bean/Campaign;->IsConditionPass:Z

    if-nez v10, :cond_1b

    .line 2466
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goBuyMarketPlace(Lcom/bzbs/bean/Campaign;)V

    .line 2601
    :goto_1a
    return-void

    .line 2475
    :cond_1b
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "5"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 2476
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2477
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "campaign"

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-virtual {v11}, Lcom/bzbs/bean/Campaign;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2478
    iget v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_SURVEY:I

    invoke-virtual {p0, v6, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1a

    .line 2483
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_45
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-boolean v10, v10, Lcom/bzbs/bean/Campaign;->Delivered:Z

    if-ne v10, v12, :cond_9b

    .line 2485
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetIsCompleteProfileShopping(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_9b

    .line 2486
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2487
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v10, 0x7f09015e

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090143

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090334

    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;

    invoke-direct {v12, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f090325

    .line 2495
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;

    invoke-direct {v12, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2500
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2501
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1a

    .line 2506
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_9b
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    if-ne v10, v12, :cond_a9

    .line 2507
    sget-object v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "if (doRedeeming == true) {"

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2509
    :cond_a9
    iput-boolean v12, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2510
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    .line 2511
    invoke-direct {p0, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->checkRedeemError(Z)Ljava/lang/String;

    move-result-object v7

    .line 2513
    .local v7, "strRedeemError":Ljava/lang/String;
    if-eqz v7, :cond_c8

    const-string/jumbo v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c8

    .line 2514
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    invoke-direct {p0, v10, v7}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 2516
    :cond_c8
    new-instance v3, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 2518
    .local v3, "cd":Lcom/bzbs/util/ConnectionDetector;
    invoke-virtual {v3}, Lcom/bzbs/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v10

    if-nez v10, :cond_e6

    .line 2519
    const-string/jumbo v10, "No internet connection!"

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V

    .line 2520
    iput-boolean v13, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2521
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    goto/16 :goto_1a

    .line 2523
    :cond_e6
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2525
    .local v8, "token":Ljava/lang/String;
    if-eqz v8, :cond_35a

    const-string/jumbo v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_35a

    .line 2527
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    if-eqz v10, :cond_11e

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->CustomInput:Ljava/lang/String;

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11e

    .line 2528
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v12, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    invoke-static {p0, v10, v11, v12}, Lcom/bzbs/util/DialogUtil;->showDialogContinueUrl(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V

    .line 2529
    iput-boolean v13, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2530
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    goto/16 :goto_1a

    .line 2531
    :cond_11e
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "7"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1db

    .line 2532
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v9, v10, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    .line 2533
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_194

    .line 2534
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2540
    :goto_15f
    :try_start_15f
    const-string/jumbo v10, "{campaign_id}"

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v11, v11, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v11}, Lcom/bzbs/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_174} :catch_1bc

    move-result-object v9

    .line 2545
    :goto_175
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2546
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "url"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2547
    iget v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    invoke-virtual {p0, v6, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2549
    iput-boolean v13, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2550
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    goto/16 :goto_1a

    .line 2536
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_194
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&return_url=bzbs_return_url&cancel_url=bzbs_cancel_url"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_15f

    .line 2541
    :catch_1bc
    move-exception v5

    .line 2542
    .local v5, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception|replaceurl|1 := "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_175

    .line 2552
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v9    # "url":Ljava/lang/String;
    :cond_1db
    iput-boolean v13, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->isContinueUrl:Z

    .line 2554
    new-instance v4, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2555
    .local v4, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2559
    .local v2, "carrier":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "api/campaign/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v11, v11, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/redeem?token="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&carrier="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2560
    .restart local v9    # "url":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v10, :cond_29c

    .line 2561
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-boolean v10, v10, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v10, :cond_2c9

    .line 2562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&nfc=write_back"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2566
    :goto_240
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-boolean v10, v10, Lcom/bzbs/bean/NFCTag;->ReDeem_WriteBack:Z

    if-eqz v10, :cond_2df

    .line 2567
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&redeem_media=nfc_write_back"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2571
    :goto_25a
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v10, v10, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    if-eqz v10, :cond_29c

    .line 2572
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&location_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v11, v11, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v11, v11, Lcom/bzbs/bean/NFCResult;->location_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&info1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v11, v11, Lcom/bzbs/bean/NFCTag;->objNFCResult:Lcom/bzbs/bean/NFCResult;

    iget-object v11, v11, Lcom/bzbs/bean/NFCResult;->nfc_info:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2576
    :cond_29c
    sget-object v10, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(doBuy)url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f5

    .line 2579
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goBuyMarketPlace(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2564
    :cond_2c9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&nfc=read"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_240

    .line 2569
    :cond_2df
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "&redeem_media=nfc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_25a

    .line 2580
    :cond_2f5
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_332

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v11, "api"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_332

    .line 2583
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->PointType:Ljava/lang/String;

    const-string/jumbo v11, "get"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_327

    .line 2584
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v10, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goGetPoint(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2586
    :cond_327
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v10, v11}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goRedeemCampaign(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2588
    :cond_332
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v11, "8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_353

    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v10, v10, Lcom/bzbs/bean/Campaign;->InterfaceDisplay:Ljava/lang/String;

    const-string/jumbo v11, "web"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_353

    .line 2589
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goBuyMarketPlace(Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2591
    :cond_353
    iget-object v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-direct {p0, v9, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goRedeemCampaign(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V

    goto/16 :goto_1a

    .line 2595
    .end local v2    # "carrier":Ljava/lang/String;
    .end local v4    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v9    # "url":Ljava/lang/String;
    :cond_35a
    iput-boolean v13, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    .line 2596
    iget-boolean v10, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z

    invoke-direct {p0, v10}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V

    goto/16 :goto_1a
.end method

.method public doReview(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2144
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2145
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 2154
    :goto_10
    return-void

    .line 2147
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2148
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_2e

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2149
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    invoke-static {p0, v1, v2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogReviewGift(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/bean/Campaign;)V

    goto :goto_10

    .line 2151
    :cond_2e
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Review"

    const-string/jumbo v4, "review"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public doShare(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2298
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2299
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 2300
    const v3, 0x7f09024b

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 2389
    :cond_19
    :goto_19
    return-void

    .line 2304
    :cond_1a
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2305
    const v3, 0x7f0900d5

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19

    .line 2307
    :cond_2b
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    if-eqz v3, :cond_19

    .line 2308
    new-instance v2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 2310
    .local v2, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    const-class v3, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v3}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 2311
    new-instance v3, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->AgencyName:Ljava/lang/String;

    .line 2312
    invoke-virtual {v3, v4}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    .line 2313
    invoke-virtual {v3, v4}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v3

    const-string/jumbo v4, "http://play.google.com/store/apps/details?id=com.samsung.privilege"

    .line 2314
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v3

    check-cast v3, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 2315
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    .line 2317
    .local v1, "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;

    invoke-direct {v4, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 2383
    invoke-virtual {v2, v1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    .line 2386
    .end local v1    # "linkContent":Lcom/facebook/share/model/ShareLinkContent;
    :cond_6f
    const-string/jumbo v3, "Gift Campaign Details"

    const-string/jumbo v4, "Click Share"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v6, v6, Lcom/bzbs/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public getLocationByGPS()V
    .registers 7

    .prologue
    .line 3105
    :try_start_0
    new-instance v2, Lcom/bzbs/util/GPSTracker;

    invoke-direct {v2, p0}, Lcom/bzbs/util/GPSTracker;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    .line 3108
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    invoke-virtual {v2}, Lcom/bzbs/util/GPSTracker;->canGetLocation()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 3109
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    invoke-virtual {v2}, Lcom/bzbs/util/GPSTracker;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D

    .line 3110
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    invoke-virtual {v2}, Lcom/bzbs/util/GPSTracker;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D

    .line 3112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getLocationByGPS{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V

    .line 3114
    sget-object v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gCurrentLat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    sget-object v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gCurrentLon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gCurrentLon:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    invoke-virtual {v2}, Lcom/bzbs/util/GPSTracker;->stopUsingGPS()V

    .line 3147
    :goto_87
    return-void

    .line 3123
    :cond_88
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gps:Lcom/bzbs/util/GPSTracker;

    invoke-virtual {v2}, Lcom/bzbs/util/GPSTracker;->showSettingsAlert()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_87

    .line 3125
    :catch_8e
    move-exception v0

    .line 3126
    .local v0, "e":Ljava/lang/Exception;
    const v2, 0x7f09019d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3127
    .local v1, "error":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c1

    .line 3128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3130
    :cond_c1
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V

    goto :goto_87
.end method

.method public networkAvailable()V
    .registers 5

    .prologue
    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 516
    return-void
.end method

.method public networkUnavailable()V
    .registers 1

    .prologue
    .line 521
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 210
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v3, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 213
    if-ne p2, v4, :cond_13

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_BEAM:I

    if-ne p1, v3, :cond_13

    .line 267
    :cond_12
    :goto_12
    return-void

    .line 226
    :cond_13
    if-ne p2, v4, :cond_31

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_CUSTOMINPUT:I

    if-ne p1, v3, :cond_31

    .line 227
    const-string/jumbo v3, "bzbs_return_url"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "return_url":Ljava/lang/String;
    if-eqz v1, :cond_12

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 229
    iput-boolean v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->isContinueUrl:Z

    .line 230
    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showRedeem(Ljava/lang/String;)V

    goto :goto_12

    .line 232
    .end local v1    # "return_url":Ljava/lang/String;
    :cond_31
    if-ne p2, v4, :cond_37

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BUY_POINT:I

    if-eq p1, v3, :cond_12

    .line 234
    :cond_37
    if-ne p2, v4, :cond_50

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_WEBVIEW_BOOKING:I

    if-ne p1, v3, :cond_50

    .line 235
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V

    .line 236
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v7, v5, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 237
    :cond_50
    if-ne p2, v4, :cond_71

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_LOGIN_REDEEM:I

    if-ne p1, v3, :cond_71

    .line 238
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_12

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 240
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0, v3, v4, v6, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 242
    .end local v2    # "token":Ljava/lang/String;
    :cond_71
    if-ne p2, v4, :cond_90

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_LOGIN_LIKE:I

    if-ne p1, v3, :cond_90

    .line 243
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "token":Ljava/lang/String;
    if-eqz v2, :cond_12

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 245
    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    invoke-direct {p0, v3, v7, v5, v6}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V

    goto :goto_12

    .line 247
    .end local v2    # "token":Ljava/lang/String;
    :cond_90
    if-ne p2, v4, :cond_ad

    iget v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->RC_SURVEY:I

    if-ne p1, v3, :cond_ad

    .line 248
    const-string/jumbo v3, "json_redeem"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "json_redeem":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 250
    invoke-direct {p0, v0, v6, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 252
    .end local v0    # "json_redeem":Ljava/lang/String;
    :cond_ad
    if-ne p2, v4, :cond_12

    goto/16 :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 158
    const v4, 0x7f04001a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setContentView(I)V

    .line 159
    const v4, 0x10300f0

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setTheme(I)V

    .line 161
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 166
    :try_start_23
    new-instance v4, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v4}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    .line 167
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v4, p0}, Lcom/bzbs/event/NetworkStateReceiver;->addListener(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 168
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3c} :catch_ff

    .line 177
    :goto_3c
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialParam()V

    .line 178
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialLayout()V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLastTokenBzBs:Ljava/lang/String;

    .line 185
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 186
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-nez v4, :cond_65

    .line 187
    const v4, 0x7f09024b

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    :cond_65
    const-string/jumbo v4, "Gift Campaign Details"

    invoke-static {v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 193
    :try_start_6b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 194
    .local v3, "is_from_noti":Z
    const/4 v4, 0x1

    if-ne v3, v4, :cond_c6

    .line 195
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "campaign_id"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, "campaignID":I
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti_alert"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "campaignName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 198
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "Click Campaign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v0    # "campaignID":I
    .end local v1    # "campaignName":Ljava/lang/String;
    .end local v3    # "is_from_noti":Z
    :cond_c6
    :goto_c6
    return-void

    .line 199
    .restart local v0    # "campaignID":I
    .restart local v1    # "campaignName":Ljava/lang/String;
    .restart local v3    # "is_from_noti":Z
    :cond_c7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti_type"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "campaign_beacon"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 200
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "Click Campaign Beacon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_fc} :catch_fd

    goto :goto_c6

    .line 203
    .end local v0    # "campaignID":I
    .end local v1    # "campaignName":Ljava/lang/String;
    .end local v3    # "is_from_noti":Z
    :catch_fd
    move-exception v4

    goto :goto_c6

    .line 169
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :catch_ff
    move-exception v4

    goto/16 :goto_3c
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 417
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;

    .line 418
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;

    .line 419
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    if-eqz v0, :cond_11

    .line 420
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 422
    :cond_11
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gTimerPager:Ljava/util/Timer;

    .line 424
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignImage:Landroid/support/v7/widget/RecyclerView;

    .line 425
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerImage:Landroid/support/v7/widget/LinearLayoutManager;

    .line 426
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignImageAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignImageAdapter;

    .line 428
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mRecyclerCampaignRelated:Landroid/support/v7/widget/RecyclerView;

    .line 429
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mLayoutManagerRelated:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 430
    iput-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mCampaignRelatedAdapter:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$CampaignRelatedAdapter;

    .line 431
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 435
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doBack(Landroid/view/View;)V

    .line 447
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 449
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 401
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 405
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_c

    .line 410
    :goto_8
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 411
    return-void

    .line 406
    :catch_c
    move-exception v0

    goto :goto_8
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 362
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 363
    new-instance v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;)V

    invoke-static {v1}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 366
    :try_start_d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "tokenBzBs":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLastTokenBzBs:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 368
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->initialPoint()V

    .line 369
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaignID:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_3b

    .line 377
    .end local v0    # "tokenBzBs":Ljava/lang/String;
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p0, v1, v5}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 379
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    return-void

    .line 371
    :catch_3b
    move-exception v1

    goto :goto_29
.end method
