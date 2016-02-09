.class public Lcom/samsung/privilege/activity/CampaignListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CampaignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;,
        Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;,
        Lcom/samsung/privilege/activity/CampaignListActivity$GetPointsListener;,
        Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;,
        Lcom/samsung/privilege/activity/CampaignListActivity$QTPagerAdapter;
    }
.end annotation


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private final LOGCATLC:Ljava/lang/String;

.field private MENU_PLAN_1:I

.field private MENU_PLAN_10:I

.field private MENU_PLAN_2:I

.field private MENU_PLAN_3:I

.field private MENU_PLAN_4:I

.field private MENU_PLAN_5:I

.field private MENU_PLAN_6:I

.field private MENU_PLAN_7:I

.field private MENU_PLAN_8:I

.field private MENU_PLAN_9:I

.field private TAG:Ljava/lang/String;

.field arrImg:[Ljava/lang/Integer;

.field boxPoint:I

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private contentQT:Landroid/widget/LinearLayout;

.field private gCenterX:F

.field private gCenterY:F

.field private gCurrentPopupWelcome:I

.field private gFont:Landroid/graphics/Typeface;

.field private gHandler:Landroid/os/Handler;

.field private gIsNFCRedeem:Z

.field public gIsShowingMessage:Z

.field private gIsUseSmallWelcome:Z

.field private gLastResumeTime:J

.field private gLayoutMyPoint:Landroid/widget/RelativeLayout;

.field private gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

.field private gTvNotiUnread:Landroid/widget/TextView;

.field private gTvPoint:Landroid/widget/TextView;

.field private gTvPointCaption:Landroid/widget/TextView;

.field private gTvPointP:Landroid/widget/TextView;

.field private isResumed:Z

.field public mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field public mPager:Landroid/support/v4/view/ViewPager;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;

.field private viewTopShadow:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 103
    const-string v0, "CampaignListActivity"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->LOGCAT:Ljava/lang/String;

    .line 104
    const-string v0, "CampaignListActivity.lc"

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->LOGCATLC:Ljava/lang/String;

    .line 105
    const-class v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;

    .line 111
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->isResumed:Z

    .line 125
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLastResumeTime:J

    .line 128
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsNFCRedeem:Z

    .line 130
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 142
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 769
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_1:I

    .line 770
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_2:I

    .line 771
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_3:I

    .line 772
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_4:I

    .line 773
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_5:I

    .line 774
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_6:I

    .line 775
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_7:I

    .line 776
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_8:I

    .line 777
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_9:I

    .line 778
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_10:I

    .line 1522
    iput v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/CampaignListActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignListActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->contentQT:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1881
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->outToRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14(Lcom/samsung/privilege/activity/CampaignListActivity;)I
    .registers 2

    .prologue
    .line 1522
    iget v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I

    return v0
.end method

.method static synthetic access$15(Lcom/samsung/privilege/activity/CampaignListActivity;)Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z

    return v0
.end method

.method static synthetic access$16(Lcom/samsung/privilege/activity/CampaignListActivity;I)V
    .registers 2

    .prologue
    .line 1522
    iput p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I

    return-void
.end method

.method static synthetic access$17(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1874
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->inFromLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1867
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1860
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignListActivity;->processJsonCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/samsung/privilege/bean/NFCResult;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 3

    .prologue
    .line 845
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPoint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/privilege/activity/CampaignListActivity;)Lcom/google/analytics/tracking/android/Tracker;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/privilege/activity/CampaignListActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bigToSmallAnimation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    .line 1854
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1855
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1856
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1857
    return-object v0
.end method

.method private doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 8
    .param p1, "nfcPlan"    # Lcom/samsung/privilege/bean/NFCPlan;
    .param p2, "nfcResult"    # Lcom/samsung/privilege/bean/NFCResult;

    .prologue
    const v4, 0x7f0a0353

    .line 846
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 847
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=checkin"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 849
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v2, p0, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 892
    :goto_3c
    return-void

    .line 851
    :cond_3d
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3c

    .line 853
    :cond_47
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 854
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=post"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 856
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v2, p0, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_3c

    .line 858
    :cond_81
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3c

    .line 860
    :cond_8b
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 861
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=share"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v2, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, p1, p2, v3}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    .line 863
    .local v0, "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    const/4 v1, 0x0

    .line 864
    .local v1, "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v2, :cond_c2

    .line 865
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v2, v2, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string v3, "ReDeem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 866
    iget-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 869
    :cond_c2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 870
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_3c

    .line 872
    :cond_d9
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 874
    .end local v0    # "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    .end local v1    # "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    :cond_e4
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 875
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=openapp"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenApp(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3c

    .line 877
    :cond_10d
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_136

    .line 878
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=link"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenUrl(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3c

    .line 880
    :cond_136
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15f

    .line 881
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=video"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenUrl(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3c

    .line 883
    :cond_15f
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 884
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=campaign"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3c

    .line 886
    :cond_188
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "redeem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 887
    const-string v2, "CampaignListActivity"

    const-string v3, "NFCType=redeem"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v2, p0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3c

    .line 890
    :cond_1b1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid NFC Type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3c
.end method

.method private gotoProfileSetting()V
    .registers 5

    .prologue
    .line 922
    const v1, 0x7f2a0043

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 923
    .local v0, "layoutMyPoint":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$3;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    .line 929
    const-wide/16 v2, 0x3e8

    .line 923
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 930
    return-void
.end method

.method private inFromLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1875
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1876
    .local v0, "inFromLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1877
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1878
    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1861
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1862
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1863
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1864
    return-object v0
.end method

.method private initScreenSize()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 896
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 897
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenWidth:I

    .line 898
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/samsung/privilege/AppSetting;->screenHeight:I

    .line 900
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 901
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 902
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/samsung/privilege/AppSetting;->dpi:I

    .line 904
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_39

    .line 905
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z

    .line 919
    :cond_39
    return-void
.end method

.method private initialLayout()V
    .registers 27

    .prologue
    .line 1342
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1343
    .local v12, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1346
    const v21, 0x7f2a0043

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;

    .line 1347
    const v21, 0x7f2a0048

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPoint:Landroid/widget/TextView;

    .line 1348
    const v21, 0x7f2a0047

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointP:Landroid/widget/TextView;

    .line 1349
    const v21, 0x7f2a0046

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;

    .line 1350
    const v21, 0x7f2a0042

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    const-string v22, "fonts/kit55p.ttf"

    invoke-static/range {v21 .. v22}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 1354
    .local v6, "font_kit55p":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointP:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1358
    invoke-static {}, Lcom/samsung/privilege/util/BBUtil;->IsSamsungMobile()Z

    move-result v21

    if-eqz v21, :cond_29e

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1368
    :goto_ad
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v21, "#,###,###"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1369
    .local v7, "formatter":Ljava/text/DecimalFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v18

    .line 1370
    .local v18, "points":J
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-lez v21, :cond_d3

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPoint:Landroid/widget/TextView;

    move-object/from16 v21, v0

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1378
    :cond_d3
    const v21, 0x7f07008a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->contentQT:Landroid/widget/LinearLayout;

    .line 1379
    const v21, 0x7f07034e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->contentQT:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1383
    const v21, 0x7f07008c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1385
    .local v11, "linCircle":Landroid/widget/LinearLayout;
    const v21, 0x7f07034d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 1386
    .local v20, "qtArrow":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/widget/TextView;->measure(II)V

    .line 1388
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1390
    .local v16, "paramsShadow":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v21, 0x8

    const/high16 v22, 0x7f260000

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1391
    const/16 v21, 0x6

    const/high16 v22, 0x7f260000

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->viewTopShadow:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1394
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fc999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1395
    .local v15, "paramsArrow":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvPointCaption:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v23

    const/high16 v24, 0x41300000

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v24

    add-int v23, v23, v24

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1396
    const/16 v21, 0x5

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1397
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1399
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v21, 0x41200000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v21

    const/high16 v22, 0x41200000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1400
    .local v17, "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v21, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v21

    const/high16 v22, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v22

    const/high16 v23, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v23

    const/high16 v24, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->GetPixelFromDips(F)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1401
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1402
    .local v10, "in_":Landroid/content/Intent;
    const-string v21, "msg_newbie"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_320

    const-string v21, "msg_newbie"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Newbie"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_320

    .line 1403
    const/4 v13, 0x4

    .line 1404
    .local v13, "numPage":I
    new-array v0, v13, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    .line 1405
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_23a
    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v8, v0, :cond_2c2

    .line 1434
    :cond_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    new-array v9, v0, [Landroid/widget/ImageView;

    .line 1435
    .local v9, "imgCircle":[Landroid/widget/ImageView;
    const/4 v8, 0x0

    :goto_252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    if-lt v8, v0, :cond_3f8

    .line 1446
    const v21, 0x7f07008b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/v4/view/ViewPager;

    .line 1447
    .local v14, "pager":Landroid/support/v4/view/ViewPager;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 1448
    new-instance v21, Lcom/samsung/privilege/activity/CampaignListActivity$QTPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$QTPagerAdapter;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;[Ljava/lang/Integer;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1450
    new-instance v21, Lcom/samsung/privilege/activity/CampaignListActivity$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2, v9}, Lcom/samsung/privilege/activity/CampaignListActivity$14;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/content/Intent;Landroid/widget/RelativeLayout$LayoutParams;[Landroid/widget/ImageView;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1489
    return-void

    .line 1361
    .end local v7    # "formatter":Ljava/text/DecimalFormat;
    .end local v8    # "i":I
    .end local v9    # "imgCircle":[Landroid/widget/ImageView;
    .end local v10    # "in_":Landroid/content/Intent;
    .end local v11    # "linCircle":Landroid/widget/LinearLayout;
    .end local v13    # "numPage":I
    .end local v14    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v15    # "paramsArrow":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "paramsShadow":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "points":J
    .end local v20    # "qtArrow":Landroid/widget/ImageView;
    :cond_29e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_2b5

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_ad

    .line 1364
    :cond_2b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLayoutMyPoint:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_ad

    .line 1406
    .restart local v7    # "formatter":Ljava/text/DecimalFormat;
    .restart local v8    # "i":I
    .restart local v10    # "in_":Landroid/content/Intent;
    .restart local v11    # "linCircle":Landroid/widget/LinearLayout;
    .restart local v13    # "numPage":I
    .restart local v15    # "paramsArrow":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16    # "paramsShadow":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17    # "params_circle":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v18    # "points":J
    .restart local v20    # "qtArrow":Landroid/widget/ImageView;
    :cond_2c2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1407
    .local v5, "ResID":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "517155661760483"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_310

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_my_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1410
    :cond_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v8

    .line 1405
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_23a

    .line 1413
    .end local v5    # "ResID":I
    .end local v8    # "i":I
    .end local v13    # "numPage":I
    :cond_320
    const/4 v13, 0x3

    .line 1414
    .restart local v13    # "numPage":I
    new-array v0, v13, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    .line 1415
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_32c
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ge v8, v0, :cond_240

    .line 1416
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v8, v0, :cond_39a

    .line 1417
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v8, v0, :cond_39d

    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1419
    .restart local v5    # "ResID":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "517155661760483"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_38c

    .line 1420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_my_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1422
    :cond_38c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    add-int/lit8 v22, v8, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    .line 1415
    .end local v5    # "ResID":I
    :cond_39a
    :goto_39a
    add-int/lit8 v8, v8, 0x1

    goto :goto_32c

    .line 1424
    :cond_39d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1425
    .restart local v5    # "ResID":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "517155661760483"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3eb

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "qt_my_img"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v23, v8, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "drawable"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1428
    :cond_3eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->arrImg:[Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v21, v8

    goto :goto_39a

    .line 1436
    .end local v5    # "ResID":I
    .restart local v9    # "imgCircle":[Landroid/widget/ImageView;
    :cond_3f8
    new-instance v21, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v21, v9, v8

    .line 1437
    aget-object v21, v9, v8

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1438
    if-nez v8, :cond_421

    .line 1439
    aget-object v21, v9, v8

    const v22, 0x7f02037e

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1443
    :goto_416
    aget-object v21, v9, v8

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1435
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_252

    .line 1441
    :cond_421
    aget-object v21, v9, v8

    const v22, 0x7f02037d

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_416
.end method

.method private loadCampaignCategory()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/campaigncat/full_menu_sponsor?catgrp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->CATGRP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sponsorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&has_bzbs=false&device_locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(loadCampaignCategory)url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    invoke-direct {v1, p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)V

    invoke-static {v0, v4, v1}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 250
    return-void
.end method

.method private loadCampaignCategoryFromCatch()V
    .registers 4

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "category_gift_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "catch_category_gift":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 238
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->processJsonCategory(Ljava/lang/String;Z)V

    .line 241
    :cond_3d
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->loadCampaignCategory()V

    .line 242
    return-void
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 8
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 150
    const-string v1, "CampaignListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSessionStateChange: state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "CampaignListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSessionStateChange: isResumed="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->isResumed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->isResumed:Z

    if-eqz v1, :cond_62

    .line 157
    const-string v1, "CampaignListActivity"

    const-string v2, "if (state.equals(SessionState.OPENED)) { BEFORE"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_62

    .line 160
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 161
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_62
    return-void
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1868
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1869
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1870
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1871
    return-object v0
.end method

.method private outToRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1882
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1883
    .local v0, "outtoRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1884
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1885
    return-object v0
.end method

.method private processJsonCategory(Ljava/lang/String;Z)V
    .registers 27
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_from_cache"    # Z

    .prologue
    .line 281
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v17, "listCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/CampaignCategoryDynamic;>;"
    :try_start_5
    new-instance v16, Lorg/json/JSONArray;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 285
    .local v16, "jsonRoot":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_23f

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_13d

    .line 302
    .end local v10    # "i":I
    .end local v16    # "jsonRoot":Lorg/json/JSONArray;
    :goto_17
    const/4 v14, 0x0

    .line 304
    .local v14, "isRefreshAdapter":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1fd

    .line 306
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->getCount()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1f6

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_1f6

    .line 307
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_1f9

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_171

    .line 343
    .end local v10    # "i":I
    :goto_45
    if-eqz v14, :cond_13c

    .line 345
    :try_start_47
    new-instance v21, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    .line 347
    const v21, 0x7f070055

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    .line 353
    .local v20, "tf":Landroid/graphics/Typeface;
    const v21, 0x7f070056

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/PagerTitleStrip;

    .line 355
    .local v12, "indicator":Landroid/support/v4/view/PagerTitleStrip;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 356
    .local v19, "prevText":Landroid/widget/TextView;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 357
    .local v8, "currText":Landroid/widget/TextView;
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/support/v4/view/PagerTitleStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 359
    .local v18, "nextText":Landroid/widget/TextView;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 360
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 361
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 367
    new-instance v21, Landroid/view/ViewGroup$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x1

    invoke-direct/range {v21 .. v23}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    const v21, 0x7f02009f

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 372
    .local v13, "intent":Landroid/content/Intent;
    const-string v21, "category_noti"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, "categoryNoti":Ljava/lang/String;
    if-eqz v7, :cond_200

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_200

    .line 391
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/CampaignListActivity;->switchPagerByCat(Ljava/lang/String;)V

    .line 402
    :goto_128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    new-instance v22, Lcom/samsung/privilege/activity/CampaignListActivity$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/samsung/privilege/activity/CampaignListActivity$2;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/util/ArrayList;Landroid/widget/TextView;)V

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_13c} :catch_230

    .line 471
    .end local v7    # "categoryNoti":Ljava/lang/String;
    .end local v8    # "currText":Landroid/widget/TextView;
    .end local v12    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "nextText":Landroid/widget/TextView;
    .end local v19    # "prevText":Landroid/widget/TextView;
    .end local v20    # "tf":Landroid/graphics/Typeface;
    :cond_13c
    :goto_13c
    return-void

    .line 287
    .end local v14    # "isRefreshAdapter":Z
    .restart local v10    # "i":I
    .restart local v16    # "jsonRoot":Lorg/json/JSONArray;
    :cond_13d
    :try_start_13d
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 288
    .local v15, "jsonItem":Lorg/json/JSONObject;
    const-string v21, "id"

    move-object/from16 v0, v21

    invoke-static {v15, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 289
    .local v11, "id":Ljava/lang/String;
    const-string v21, "all"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16d

    const-string v21, "hot"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_16d

    .line 292
    new-instance v21, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_16d} :catch_242

    .line 285
    .end local v11    # "id":Ljava/lang/String;
    .end local v15    # "jsonItem":Lorg/json/JSONObject;
    :cond_16d
    :goto_16d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 309
    .end local v16    # "jsonRoot":Lorg/json/JSONArray;
    .restart local v14    # "isRefreshAdapter":Z
    :cond_171
    :try_start_171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->mListCats:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 310
    .local v5, "catOld":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;

    .line 311
    .local v4, "catNew":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "CHECK:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v4, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v0, v4, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    move/from16 v21, v0

    iget v0, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->cat:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1ef

    iget-object v0, v4, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v5, Lcom/samsung/privilege/bean/CampaignCategoryDynamic;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1ec
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_1ec} :catch_1f9

    move-result v21

    if-nez v21, :cond_1f2

    .line 315
    :cond_1ef
    const/4 v14, 0x1

    .line 317
    goto/16 :goto_45

    .line 307
    :cond_1f2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3d

    .line 323
    .end local v4    # "catNew":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    .end local v5    # "catOld":Lcom/samsung/privilege/bean/CampaignCategoryDynamic;
    .end local v10    # "i":I
    :cond_1f6
    const/4 v14, 0x1

    goto/16 :goto_45

    .line 328
    :catch_1f9
    move-exception v9

    .line 329
    .local v9, "e":Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 332
    goto/16 :goto_45

    .line 333
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1fd
    const/4 v14, 0x1

    goto/16 :goto_45

    .line 393
    .restart local v7    # "categoryNoti":Ljava/lang/String;
    .restart local v8    # "currText":Landroid/widget/TextView;
    .restart local v12    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v18    # "nextText":Landroid/widget/TextView;
    .restart local v19    # "prevText":Landroid/widget/TextView;
    .restart local v20    # "tf":Landroid/graphics/Typeface;
    :cond_200
    :try_start_200
    const-string v21, "category_no"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 394
    .local v6, "categoryNo":I
    if-gez v6, :cond_233

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mAdapter:Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/privilege/activity/pager/CategoryFragmentDynamicAdapter;->getCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 399
    :goto_223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_128

    .line 467
    .end local v6    # "categoryNo":I
    .end local v7    # "categoryNoti":Ljava/lang/String;
    .end local v8    # "currText":Landroid/widget/TextView;
    .end local v12    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v18    # "nextText":Landroid/widget/TextView;
    .end local v19    # "prevText":Landroid/widget/TextView;
    .end local v20    # "tf":Landroid/graphics/Typeface;
    :catch_230
    move-exception v21

    goto/16 :goto_13c

    .line 397
    .restart local v6    # "categoryNo":I
    .restart local v7    # "categoryNoti":Ljava/lang/String;
    .restart local v8    # "currText":Landroid/widget/TextView;
    .restart local v12    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v18    # "nextText":Landroid/widget/TextView;
    .restart local v19    # "prevText":Landroid/widget/TextView;
    .restart local v20    # "tf":Landroid/graphics/Typeface;
    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_23e} :catch_230

    goto :goto_223

    .line 298
    .end local v6    # "categoryNo":I
    .end local v7    # "categoryNoti":Ljava/lang/String;
    .end local v8    # "currText":Landroid/widget/TextView;
    .end local v12    # "indicator":Landroid/support/v4/view/PagerTitleStrip;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "isRefreshAdapter":Z
    .end local v18    # "nextText":Landroid/widget/TextView;
    .end local v19    # "prevText":Landroid/widget/TextView;
    .end local v20    # "tf":Landroid/graphics/Typeface;
    :catch_23f
    move-exception v21

    goto/16 :goto_17

    .line 294
    .restart local v10    # "i":I
    .restart local v16    # "jsonRoot":Lorg/json/JSONArray;
    :catch_242
    move-exception v21

    goto/16 :goto_16d
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 670
    const-string v0, "CampaignListActivity.lc"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 672
    const-string v0, "gLastResumeTime"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLastResumeTime:J

    .line 673
    const-string v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsNFCRedeem:Z

    .line 676
    const-string v0, "gIsShowingMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 678
    :cond_27
    return-void
.end method

.method private showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2081
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_33

    .line 2083
    :try_start_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2084
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2085
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListActivity$21;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$21;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2110
    const-string v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/CampaignListActivity$22;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$22;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2115
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2116
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_33} :catch_34

    .line 2121
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_33
    :goto_33
    return-void

    .line 2117
    :catch_34
    move-exception v2

    .line 2118
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "buzzebees.login"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to showDialogHasNewVersion():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33
.end method

.method private showMessageFromServer()V
    .registers 3

    .prologue
    .line 933
    const-string v0, "CampaignListActivity.lc"

    const-string v1, "private void showMessageFromServer() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$20;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2047
    return-void
.end method

.method private smallToBig1Animation()Landroid/view/animation/Animation;
    .registers 8

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 1847
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v5, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterX:F

    iget v6, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterY:F

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1848
    .local v0, "smallToBig":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1849
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1850
    return-object v0
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 2303
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2305
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public checkAndShowDialogMessagePopup()V
    .registers 5

    .prologue
    .line 980
    :try_start_0
    const-string v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size QUEUE_MESSAGEPOPUPS = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    sget-object v1, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_46

    .line 982
    sget-object v1, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/MessagePopup;

    .line 983
    .local v0, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    if-eqz v0, :cond_45

    .line 984
    const-string v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Msg QUEUE_MESSAGEPOPUPS = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/privilege/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogMessagePopup(Landroid/content/Context;Lcom/samsung/privilege/bean/MessagePopup;)V

    .line 1002
    .end local v0    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_45
    :goto_45
    return-void

    .line 988
    :cond_46
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 989
    :cond_76
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 990
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsAskUserEnterProfile(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 993
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/privilege/UserLogin;->SetIsAskUserEnterProfile(Landroid/content/Context;Z)Z

    .line 994
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->gotoProfileSetting()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9b} :catch_9c

    goto :goto_45

    .line 999
    :catch_9c
    move-exception v1

    goto :goto_45
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->gotoMenu()V

    .line 2241
    return-void
.end method

.method public doMyPoint(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40000000

    .line 2124
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2125
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2126
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2127
    .local v1, "height":I
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2128
    .local v7, "width":I
    int-to-float v8, v7

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterX:F

    .line 2129
    int-to-float v8, v1

    div-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterY:F

    .line 2131
    const/high16 v8, 0x7f3d0000

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 2132
    .local v4, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v8, 0x7f3d0001

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2133
    .local v2, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v8, 0x7f3d0002

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2135
    .local v3, "layoutButton":Landroid/widget/LinearLayout;
    const v8, 0x7f3d0005

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 2136
    .local v6, "tvClose":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gFont:Landroid/graphics/Typeface;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2137
    const-string v8, "Close"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2151
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1054"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    .line 2152
    const v8, 0x7f020355

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2161
    :goto_62
    new-instance v8, Lcom/samsung/privilege/activity/CampaignListActivity$23;

    invoke-direct {v8, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$23;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2168
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2169
    .local v5, "smallToBig1":Landroid/view/animation/Animation;
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2170
    invoke-virtual {v5, v10}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2171
    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2172
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2173
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2175
    new-instance v8, Lcom/samsung/privilege/activity/CampaignListActivity$24;

    invoke-direct {v8, p0, v3, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$24;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2199
    return-void

    .line 2153
    .end local v5    # "smallToBig1":Landroid/view/animation/Animation;
    :cond_89
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1108"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 2154
    const v8, 0x7f020353

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2155
    :cond_a0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1109"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 2156
    const v8, 0x7f020354

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62

    .line 2158
    :cond_b7
    const v8, 0x7f020352

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_62
.end method

.method public doMyPointClose(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2202
    const/high16 v4, 0x7f3d0000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2203
    .local v3, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    const v4, 0x7f3d0001

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 2204
    .local v1, "imagePopupMyPoint":Landroid/widget/ImageView;
    const v4, 0x7f3d0002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2206
    .local v2, "layoutButton":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->bigToSmallAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 2207
    .local v0, "bigToSmall":Landroid/view/animation/Animation;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 2208
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2209
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2210
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2212
    new-instance v4, Lcom/samsung/privilege/activity/CampaignListActivity$25;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$25;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2237
    return-void
.end method

.method public getPoints()V
    .registers 3

    .prologue
    .line 1889
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$19;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/CampaignListActivity$19;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    .line 1914
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1915
    return-void
.end method

.method public gotoDashboard()V
    .registers 3

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_a

    .line 2258
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2260
    :cond_a
    return-void
.end method

.method public gotoMenu()V
    .registers 3

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_a

    .line 2245
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2247
    :cond_a
    return-void
.end method

.method public gotoMenuHistory()V
    .registers 3

    .prologue
    .line 2250
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/privilege/AppSetting;->IS_AUTO_GOTO_HISTORY:Z

    .line 2251
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_d

    .line 2252
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2254
    :cond_d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 636
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 637
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 820
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_1:I

    if-ne v0, v1, :cond_1a

    .line 821
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 842
    :cond_19
    :goto_19
    return v2

    .line 822
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_2:I

    if-ne v0, v1, :cond_32

    .line 823
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 824
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_3:I

    if-ne v0, v1, :cond_4b

    .line 825
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 826
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_4:I

    if-ne v0, v1, :cond_64

    .line 827
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 828
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_5:I

    if-ne v0, v1, :cond_7d

    .line 829
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 830
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_6:I

    if-ne v0, v1, :cond_96

    .line 831
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 832
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_7:I

    if-ne v0, v1, :cond_b0

    .line 833
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 834
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_8:I

    if-ne v0, v1, :cond_ca

    .line 835
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 836
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_9:I

    if-ne v0, v1, :cond_e5

    .line 837
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 838
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_10:I

    if-ne v0, v1, :cond_19

    .line 839
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/privilege/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    .line 174
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->requestWindowFeature(I)Z

    .line 175
    const v2, 0x7f0300fa

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->setContentView(I)V

    .line 177
    sput-object p0, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 178
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 180
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 182
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gFont:Landroid/graphics/Typeface;

    .line 185
    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 186
    .local v1, "imgFlag":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 187
    const v2, 0x7f0202b6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :goto_5a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->updateAppIcon()V

    .line 198
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 199
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 201
    new-instance v2, Lcom/facebook/UiLifecycleHelper;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v2, p0, v3}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 202
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v2, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->initScreenSize()V

    .line 206
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->initialLayout()V

    .line 213
    if-eqz p1, :cond_86

    .line 216
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    :cond_86
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->loadCampaignCategoryFromCatch()V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 226
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    const-string v3, "UA-42649771-1"

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 232
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAServiceManager;->setDispatchPeriod(I)V

    .line 233
    return-void

    .line 188
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_a7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1525635597652592"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 189
    const v2, 0x7f0202b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5a

    .line 190
    :cond_be
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 191
    const v2, 0x7f0202b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5a

    .line 193
    :cond_d5
    const v2, 0x7f0202b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5a
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .param p1, "cm"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "cminf"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 782
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 783
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 784
    const v0, 0x7f0a0346

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 785
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 786
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_1:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_1:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 788
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 789
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_2:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_2:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 791
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 792
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_3:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_3:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 794
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 795
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_4:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_4:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 797
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 798
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_5:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_5:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 800
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 801
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_6:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_6:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 803
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 804
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_7:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_7:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 806
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 807
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_8:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_8:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 809
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 810
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_9:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_9:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 812
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 813
    iget v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_10:I

    iget v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->MENU_PLAN_10:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 816
    :cond_14d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 641
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 642
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 644
    invoke-static {}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET2_CANCEL()V

    .line 645
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 2051
    const/4 v3, 0x4

    if-ne p1, v3, :cond_51

    .line 2052
    const/high16 v3, 0x7f3d0000

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 2053
    .local v1, "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_17

    .line 2054
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/CampaignListActivity;->doMyPointClose(Landroid/view/View;)V

    .line 2076
    .end local v1    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :goto_16
    return v2

    .line 2058
    .restart local v1    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_noti"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2059
    .local v0, "is_from_noti":Z
    if-eqz v0, :cond_2c

    .line 2060
    const-string v3, "Do you want to exit?"

    const-string v4, "Click \"Yes\" to exit."

    invoke-direct {p0, v3, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 2063
    :cond_2c
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_4c

    .line 2064
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v3, v2, :cond_48

    .line 2065
    :cond_40
    const-string v3, "Do you want to exit?"

    const-string v4, "Click \"Yes\" to exit."

    invoke-direct {p0, v3, v4}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 2068
    :cond_48
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->gotoDashboard()V

    goto :goto_16

    .line 2072
    :cond_4c
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16

    .line 2076
    .end local v0    # "is_from_noti":Z
    .end local v1    # "layoutPopupMyPoint":Landroid/widget/RelativeLayout;
    :cond_51
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 626
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 627
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->isResumed:Z

    .line 630
    invoke-static {}, Lcom/facebook/android/PostEvents;->clearPostListener()V

    .line 631
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 666
    const-string v0, "CampaignListActivity.lc"

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public onResume()V
    .registers 25

    .prologue
    .line 494
    invoke-super/range {p0 .. p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 499
    sput-object p0, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 500
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 505
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->isResumed:Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    sput-object v21, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    .line 509
    new-instance v21, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/activity/CampaignListActivity$FBPostListener;)V

    invoke-static/range {v21 .. v21}, Lcom/facebook/android/PostEvents;->addPostListener(Lcom/facebook/android/PostEvents$PostListener;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 517
    const-string v21, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_73

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_83

    .line 519
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 621
    :cond_73
    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 622
    return-void

    .line 521
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/util/NfcUtils;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v12

    .line 522
    .local v12, "messages":[Landroid/nfc/NdefMessage;
    const/16 v21, 0x0

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v17

    .line 523
    .local v17, "payload":[B
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 525
    .local v19, "strTasks":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsNFCRedeem:Z

    move/from16 v21, v0

    if-nez v21, :cond_73

    .line 526
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsNFCRedeem:Z

    .line 528
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v7, "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/NFCTag;>;"
    const/4 v3, 0x0

    .line 532
    .local v3, "blnIsAdmin":Z
    :try_start_ba
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c1} :catch_168

    move-result v21

    if-eqz v21, :cond_c5

    .line 533
    const/4 v3, 0x1

    .line 540
    :cond_c5
    :goto_c5
    :try_start_c5
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 541
    .local v11, "jsonRoot":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_cd
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_1cb

    move-result v21

    move/from16 v0, v21

    if-lt v8, v0, :cond_187

    .line 557
    .end local v8    # "i":I
    .end local v11    # "jsonRoot":Lorg/json/JSONArray;
    :goto_d5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_201

    .line 559
    const-string v21, "\""

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 560
    .local v18, "strEncrpt":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    sget-object v22, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "api/nfc?nfc_token="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&token="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 561
    .local v20, "url":Ljava/lang/String;
    const-string v21, "CampaignListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "url="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_156

    .line 563
    const-string v21, "NFC"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "RQ="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v21 .. v23}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 565
    :cond_156
    const/16 v21, 0x0

    new-instance v22, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity$PostNFCEncyptListener;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    const/16 v23, 0x0

    invoke-static/range {v20 .. v23}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    goto/16 :goto_73

    .line 535
    .end local v18    # "strEncrpt":Ljava/lang/String;
    .end local v20    # "url":Ljava/lang/String;
    :catch_168
    move-exception v5

    .line 536
    .local v5, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Exception := "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c5

    .line 543
    .end local v5    # "e2":Ljava/lang/Exception;
    .restart local v8    # "i":I
    .restart local v11    # "jsonRoot":Lorg/json/JSONArray;
    :cond_187
    :try_start_187
    invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 544
    .local v10, "jsonAction":Lorg/json/JSONObject;
    new-instance v21, Lcom/samsung/privilege/bean/NFCTag;

    const-string v22, "nfc"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19b
    .catch Lorg/json/JSONException; {:try_start_187 .. :try_end_19b} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_19b} :catch_1cb

    .line 541
    .end local v10    # "jsonAction":Lorg/json/JSONObject;
    :goto_19b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_cd

    .line 545
    :catch_19f
    move-exception v4

    .line 546
    .local v4, "e":Lorg/json/JSONException;
    if-eqz v3, :cond_1e6

    .line 547
    :try_start_1a2
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Invalid NFC Action:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->showToast(Ljava/lang/String;)V
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ca} :catch_1cb

    goto :goto_19b

    .line 553
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v8    # "i":I
    .end local v11    # "jsonRoot":Lorg/json/JSONArray;
    :catch_1cb
    move-exception v4

    .line 554
    .local v4, "e":Ljava/lang/Exception;
    const-string v21, "CampaignListActivity"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Invalid NFC Task:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d5

    .line 549
    .local v4, "e":Lorg/json/JSONException;
    .restart local v8    # "i":I
    .restart local v11    # "jsonRoot":Lorg/json/JSONArray;
    :cond_1e6
    :try_start_1e6
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Invalid NFC Action:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->showToast(Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_200} :catch_1cb

    goto :goto_19b

    .line 567
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v8    # "i":I
    .end local v11    # "jsonRoot":Lorg/json/JSONArray;
    :cond_201
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_202
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_73

    .line 568
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/privilege/bean/NFCTag;

    .line 570
    .local v13, "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    const/4 v9, 0x0

    .line 571
    .local v9, "isSkip":Z
    if-lez v8, :cond_246

    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ReDeem"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_246

    .line 572
    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/privilege/bean/NFCTag;

    .line 573
    .local v15, "objNFCTagPrev":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v0, v15, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Share"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_246

    .line 574
    const/4 v9, 0x1

    .line 578
    .end local v15    # "objNFCTagPrev":Lcom/samsung/privilege/bean/NFCTag;
    :cond_246
    if-nez v9, :cond_269

    .line 579
    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Status"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26c

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 567
    :cond_269
    :goto_269
    add-int/lit8 v8, v8, 0x1

    goto :goto_202

    .line 581
    :cond_26c
    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Share"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2bc

    .line 582
    const/16 v16, 0x0

    .line 584
    .local v16, "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    add-int/lit8 v21, v8, 0x1

    :try_start_284
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    move-object/from16 v16, v0

    .line 585
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ReDeem"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a3
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_2a3} :catch_2b8

    move-result v21

    if-nez v21, :cond_2a8

    .line 588
    const/16 v16, 0x0

    .line 593
    :cond_2a8
    :goto_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-static {v13, v0, v1, v2}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_269

    .line 590
    :catch_2b8
    move-exception v6

    .line 591
    .local v6, "ex":Ljava/lang/Exception;
    const/16 v16, 0x0

    goto :goto_2a8

    .line 594
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v16    # "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    :cond_2bc
    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "CheckIn"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2de

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_269

    .line 596
    :cond_2de
    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "ReDeem"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_315

    .line 598
    add-int/lit8 v21, v8, 0x1

    :try_start_2f4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_30e

    .line 599
    add-int/lit8 v21, v8, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/privilege/bean/NFCTag;

    .line 600
    .local v14, "objNFCTagNext":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v14, :cond_30e

    .line 601
    iput-object v14, v13, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_30e} :catch_331

    .line 607
    .end local v14    # "objNFCTagNext":Lcom/samsung/privilege/bean/NFCTag;
    :cond_30e
    :goto_30e
    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_73

    .line 612
    :cond_315
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Invalid NFC ActionName:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_269

    .line 604
    :catch_331
    move-exception v21

    goto :goto_30e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 649
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 650
    const-string v0, "CampaignListActivity.lc"

    const-string v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 654
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    const-string v0, "gLastResumeTime"

    iget-wide v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gLastResumeTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 657
    const-string v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsNFCRedeem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 660
    const-string v0, "gIsShowingMessage"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    return-void
.end method

.method public playPopupMarketBzbs()V
    .registers 13

    .prologue
    .line 1505
    const/high16 v0, 0x7f4e0000

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1507
    .local v2, "layoutPopupWelcome":Landroid/widget/RelativeLayout;
    const v0, 0x7f4e0001

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1508
    .local v3, "imagePopupWelcome1":Landroid/widget/ImageView;
    const v0, 0x7f4e0002

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1509
    .local v4, "imagePopupWelcome2":Landroid/widget/ImageView;
    const v0, 0x7f4e0003

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1510
    .local v5, "layoutButton":Landroid/widget/LinearLayout;
    const v0, 0x7f4e0004

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 1511
    .local v6, "layoutBack":Landroid/widget/RelativeLayout;
    const v0, 0x7f4e0007

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1512
    .local v7, "layoutNext":Landroid/widget/RelativeLayout;
    const v0, 0x7f4e0005

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1513
    .local v8, "imageBack":Landroid/widget/ImageView;
    const v0, 0x7f4e0008

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 1514
    .local v9, "imageNext":Landroid/widget/ImageView;
    const v0, 0x7f4e0006

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1515
    .local v10, "tvBack":Landroid/widget/TextView;
    const v0, 0x7f4e0009

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1517
    .local v11, "tvNext":Landroid/widget/TextView;
    const/4 v0, 0x2

    move-object v1, p0

    invoke-static/range {v0 .. v11}, Lcom/samsung/privilege/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1518
    return-void
.end method

.method public playPopupWelcome()V
    .registers 18

    .prologue
    .line 1525
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1526
    .local v9, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1527
    iget v10, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1528
    .local v10, "height":I
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 1529
    .local v16, "width":I
    move/from16 v0, v16

    int-to-float v1, v0

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterX:F

    .line 1530
    int-to-float v1, v10

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCenterY:F

    .line 1532
    const/high16 v1, 0x7f4e0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 1533
    .local v5, "layoutPopupWelcome":Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1535
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$15;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/samsung/privilege/activity/CampaignListActivity$15;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1542
    const v1, 0x7f4e0001

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1543
    .local v3, "imagePopupWelcome1":Landroid/widget/ImageView;
    const v1, 0x7f4e0002

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1544
    .local v4, "imagePopupWelcome2":Landroid/widget/ImageView;
    const v1, 0x7f4e0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1545
    .local v8, "layoutButton":Landroid/widget/LinearLayout;
    const v1, 0x7f4e0004

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 1546
    .local v7, "layoutBack":Landroid/widget/RelativeLayout;
    const v1, 0x7f4e0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 1547
    .local v13, "layoutNext":Landroid/widget/RelativeLayout;
    const v1, 0x7f4e0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1548
    .local v11, "imageBack":Landroid/widget/ImageView;
    const v1, 0x7f4e0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1549
    .local v12, "imageNext":Landroid/widget/ImageView;
    const v1, 0x7f4e0006

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1550
    .local v15, "tvBack":Landroid/widget/TextView;
    const v1, 0x7f4e0009

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1553
    .local v6, "tvNext":Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$16;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/privilege/activity/CampaignListActivity$16;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1675
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$17;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/privilege/activity/CampaignListActivity$17;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1807
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsUseSmallWelcome:Z

    if-eqz v1, :cond_e7

    .line 1808
    const v1, 0x7f020357

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1812
    :goto_c3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gCurrentPopupWelcome:I

    .line 1814
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->smallToBig1Animation()Landroid/view/animation/Animation;

    move-result-object v14

    .line 1815
    .local v14, "smallToBig1":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 1816
    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1817
    const-wide/16 v1, 0x1f4

    invoke-virtual {v14, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1818
    invoke-virtual {v3, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1820
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$18;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v8, v3}, Lcom/samsung/privilege/activity/CampaignListActivity$18;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v14, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1844
    return-void

    .line 1810
    .end local v14    # "smallToBig1":Landroid/view/animation/Animation;
    :cond_e7
    const v1, 0x7f020356

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c3
.end method

.method public refreshPager()V
    .registers 1

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->loadCampaignCategory()V

    .line 490
    return-void
.end method

.method public restartActivity()V
    .registers 2

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 477
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->finish()V

    .line 478
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->startActivity(Landroid/content/Intent;)V

    .line 486
    return-void
.end method

.method public setNotiUnread(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    const/16 v3, 0x8

    .line 1492
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    if-eqz v0, :cond_27

    .line 1493
    if-lez p1, :cond_28

    .line 1494
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1502
    :cond_27
    :goto_27
    return-void

    .line 1498
    :cond_28
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    const-string v1, " 0 "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gTvNotiUnread:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method

.method public showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 17
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "is_auto_login_fb"    # Z

    .prologue
    .line 1056
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_ce

    .line 1057
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1059
    .local v2, "dialogConfirm":Landroid/app/Dialog;
    const v0, 0x7f0300de

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1061
    const v0, 0x7f470002

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1062
    .local v9, "tvHeader":Landroid/widget/TextView;
    const v0, 0x7f470004

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1063
    .local v10, "tvMessage":Landroid/widget/TextView;
    const v0, 0x7f470005

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1064
    .local v3, "imgOk":Landroid/widget/ImageView;
    const v0, 0x7f470006

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1065
    .local v12, "tvOk":Landroid/widget/TextView;
    const v0, 0x7f470007

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1066
    .local v8, "imgNo":Landroid/widget/ImageView;
    const v0, 0x7f470008

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1068
    .local v11, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 1069
    .local v7, "font":Landroid/graphics/Typeface;
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1070
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1071
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1072
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1074
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1075
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1077
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1079
    invoke-virtual {v10, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    if-eqz p3, :cond_a4

    .line 1082
    const v0, 0x7f0a0336

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_a4
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$5;

    move-object v1, p0

    move-object v4, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/CampaignListActivity$5;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    new-instance v0, Lcom/samsung/privilege/activity/CampaignListActivity$6;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/CampaignListActivity$6;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 1108
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1109
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1111
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1113
    .end local v2    # "dialogConfirm":Landroid/app/Dialog;
    .end local v3    # "imgOk":Landroid/widget/ImageView;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "font":Landroid/graphics/Typeface;
    .end local v8    # "imgNo":Landroid/widget/ImageView;
    .end local v9    # "tvHeader":Landroid/widget/TextView;
    .end local v10    # "tvMessage":Landroid/widget/TextView;
    .end local v11    # "tvNo":Landroid/widget/TextView;
    .end local v12    # "tvOk":Landroid/widget/TextView;
    :cond_ce
    return-void
.end method

.method public showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1234
    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_96

    .line 1235
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1237
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v7, 0x7f0300e0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 1239
    const v7, 0x7f480002

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1240
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v7, 0x7f480004

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1241
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f480005

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1242
    .local v3, "imgClose":Landroid/widget/ImageView;
    const v7, 0x7f480006

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1244
    .local v4, "tvClose":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1245
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1246
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1247
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1249
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1250
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1251
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1253
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1255
    new-instance v7, Lcom/samsung/privilege/activity/CampaignListActivity$11;

    invoke-direct {v7, p0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity$11;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1265
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1266
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1268
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1270
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogSerial":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgClose":Landroid/widget/ImageView;
    .end local v4    # "tvClose":Landroid/widget/TextView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    :cond_96
    return-void
.end method

.method public showDialogMessagePopup(Landroid/content/Context;Lcom/samsung/privilege/bean/MessagePopup;)V
    .registers 7
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "messagePopup"    # Lcom/samsung/privilege/bean/MessagePopup;

    .prologue
    .line 1005
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1006
    sput-object p0, Lcom/samsung/privilege/util/AnimationBadge;->objCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 1008
    iget-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    if-nez v1, :cond_25

    .line 1009
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1011
    const v1, 0x7f2a0043

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1012
    .local v0, "layoutMyPoint":Landroid/widget/RelativeLayout;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$4;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/bean/MessagePopup;Landroid/content/Context;)V

    .line 1050
    const-wide/16 v2, 0x3e8

    .line 1012
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1053
    .end local v0    # "layoutMyPoint":Landroid/widget/RelativeLayout;
    :cond_25
    return-void
.end method

.method public showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1116
    move-object v9, p1

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_be

    .line 1117
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1119
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e3

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 1121
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1122
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1123
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1124
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1125
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1126
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1128
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1129
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1130
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1131
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1132
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1135
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1136
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1139
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    new-instance v9, Lcom/samsung/privilege/activity/CampaignListActivity$7;

    invoke-direct {v9, p0, v1, v4, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$7;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1154
    new-instance v9, Lcom/samsung/privilege/activity/CampaignListActivity$8;

    invoke-direct {v9, p0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity$8;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1164
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1165
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1167
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1169
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvOk":Landroid/widget/TextView;
    :cond_be
    return-void
.end method

.method public showDialogPointTransferConfirm(Landroid/content/Context;)V
    .registers 13
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 1172
    move-object v9, p1

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_d9

    .line 1173
    new-instance v1, Landroid/app/Dialog;

    const v9, 0x1030010

    invoke-direct {v1, p1, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1175
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v9, 0x7f0300e3

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 1177
    const v9, 0x7f4b0002

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1178
    .local v5, "tvHeader":Landroid/widget/TextView;
    const v9, 0x7f4b0004

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1179
    .local v6, "tvMessage":Landroid/widget/TextView;
    const v9, 0x7f4b0005

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1180
    .local v4, "imgOk":Landroid/widget/ImageView;
    const v9, 0x7f4b0006

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1181
    .local v8, "tvOk":Landroid/widget/TextView;
    const v9, 0x7f4b0007

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1182
    .local v3, "imgNo":Landroid/widget/ImageView;
    const v9, 0x7f4b0008

    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1184
    .local v7, "tvNo":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 1185
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1186
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1187
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1188
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1191
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1192
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1195
    const v9, 0x7f0a032b

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    const v9, 0x7f0a032e

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    const v9, 0x7f0a0330

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    new-instance v9, Lcom/samsung/privilege/activity/CampaignListActivity$9;

    invoke-direct {v9, p0, v1, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$9;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    new-instance v9, Lcom/samsung/privilege/activity/CampaignListActivity$10;

    invoke-direct {v9, p0, v1, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$10;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1225
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1226
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x11

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1227
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1229
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1231
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v3    # "imgNo":Landroid/widget/ImageView;
    .end local v4    # "imgOk":Landroid/widget/ImageView;
    .end local v5    # "tvHeader":Landroid/widget/TextView;
    .end local v6    # "tvMessage":Landroid/widget/TextView;
    .end local v7    # "tvNo":Landroid/widget/TextView;
    .end local v8    # "tvOk":Landroid/widget/TextView;
    :cond_d9
    return-void
.end method

.method public showDialogTerm(Landroid/content/Context;)V
    .registers 21
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 1273
    move-object/from16 v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_f2

    .line 1274
    new-instance v10, Landroid/app/Dialog;

    const v3, 0x1030010

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1275
    .local v10, "dialogTerm":Landroid/app/Dialog;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1276
    const v3, 0x7f0300e7

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 1278
    const v3, 0x7f0701ca

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1279
    .local v18, "tvHeader":Landroid/widget/TextView;
    const v3, 0x7f070322

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1280
    .local v2, "webView1":Landroid/webkit/WebView;
    const v3, 0x7f070065

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 1281
    .local v13, "imgCancel":Landroid/widget/ImageView;
    const v3, 0x7f070066

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1282
    .local v17, "tvCancel":Landroid/widget/TextView;
    const v3, 0x7f070323

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1283
    .local v12, "imgAccept":Landroid/widget/ImageView;
    const v3, 0x7f070324

    invoke-virtual {v10, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1285
    .local v16, "tvAccept":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 1286
    .local v11, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1287
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1288
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1290
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1291
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1292
    invoke-static/range {p1 .. p1}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1295
    :try_start_8a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1296
    .local v15, "res":Landroid/content/res/Resources;
    const v3, 0x7f060004

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v14

    .line 1298
    .local v14, "in_s":Ljava/io/InputStream;
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v9, v3, [B

    .line 1299
    .local v9, "b":[B
    invoke-virtual {v14, v9}, Ljava/io/InputStream;->read([B)I

    .line 1303
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1304
    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 1305
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1308
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_c4} :catch_f3

    .line 1313
    .end local v9    # "b":[B
    .end local v14    # "in_s":Ljava/io/InputStream;
    .end local v15    # "res":Landroid/content/res/Resources;
    :goto_c4
    new-instance v3, Lcom/samsung/privilege/activity/CampaignListActivity$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v10, v1}, Lcom/samsung/privilege/activity/CampaignListActivity$12;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1322
    new-instance v3, Lcom/samsung/privilege/activity/CampaignListActivity$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v10, v1}, Lcom/samsung/privilege/activity/CampaignListActivity$13;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1332
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 1333
    .local v8, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1334
    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1336
    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 1338
    .end local v2    # "webView1":Landroid/webkit/WebView;
    .end local v8    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "dialogTerm":Landroid/app/Dialog;
    .end local v11    # "font":Landroid/graphics/Typeface;
    .end local v12    # "imgAccept":Landroid/widget/ImageView;
    .end local v13    # "imgCancel":Landroid/widget/ImageView;
    .end local v16    # "tvAccept":Landroid/widget/TextView;
    .end local v17    # "tvCancel":Landroid/widget/TextView;
    .end local v18    # "tvHeader":Landroid/widget/TextView;
    :cond_f2
    return-void

    .line 1309
    .restart local v2    # "webView1":Landroid/webkit/WebView;
    .restart local v10    # "dialogTerm":Landroid/app/Dialog;
    .restart local v11    # "font":Landroid/graphics/Typeface;
    .restart local v12    # "imgAccept":Landroid/widget/ImageView;
    .restart local v13    # "imgCancel":Landroid/widget/ImageView;
    .restart local v16    # "tvAccept":Landroid/widget/TextView;
    .restart local v17    # "tvCancel":Landroid/widget/TextView;
    .restart local v18    # "tvHeader":Landroid/widget/TextView;
    :catch_f3
    move-exception v3

    goto :goto_c4
.end method

.method public switchPagerByCat(Ljava/lang/String;)V
    .registers 6
    .param p1, "cat"    # Ljava/lang/String;

    .prologue
    .line 2277
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2278
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$27;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$27;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/lang/String;)V

    .line 2298
    const-wide/16 v2, 0x32

    .line 2278
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2299
    return-void
.end method

.method public switchPagerContent(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 2263
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2264
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$26;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$26;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;I)V

    .line 2273
    const-wide/16 v2, 0x32

    .line 2264
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2274
    return-void
.end method

.method public updateAppIcon()V
    .registers 3

    .prologue
    .line 970
    const v1, 0x7f2a0040

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 971
    .local v0, "imgLogo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetIsPremium(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 972
    const v1, 0x7f0202ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 976
    :goto_19
    return-void

    .line 974
    :cond_1a
    const v1, 0x7f0202b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
