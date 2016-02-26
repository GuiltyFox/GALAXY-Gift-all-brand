.class public Lcom/samsung/privilege/activity/QRLandingActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "QRLandingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;
    }
.end annotation


# instance fields
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

.field private RC_BARCODE_SCANNER:I

.field private TAG:Ljava/lang/String;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private gHandler:Landroid/os/Handler;

.field private gImgNfc:Landroid/widget/ImageView;

.field private gIsNFCRedeem:Z

.field private gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

.field private mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

.field private mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    const-class v0, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 58
    const/16 v0, 0x7b

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->RC_BARCODE_SCANNER:I

    .line 110
    new-instance v0, Lcom/samsung/privilege/activity/QRLandingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 436
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    .line 437
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    .line 439
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    .line 440
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    .line 441
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    .line 442
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    .line 443
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    .line 444
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    .line 445
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/activity/QRLandingActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/samsung/privilege/bean/NFCResult;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 3

    .prologue
    .line 512
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V
    .registers 8
    .param p1, "nfcPlan"    # Lcom/samsung/privilege/bean/NFCPlan;
    .param p2, "nfcResult"    # Lcom/samsung/privilege/bean/NFCResult;

    .prologue
    const v4, 0x7f090360

    .line 513
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 514
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=checkin"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 516
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 561
    :goto_3e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 562
    return-void

    .line 518
    :cond_42
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3e

    .line 520
    :cond_4c
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 521
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=post"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 523
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_3e

    .line 525
    :cond_88
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3e

    .line 527
    :cond_92
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "share"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 528
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=share"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v0, Lcom/samsung/privilege/bean/NFCTag;

    const-string v2, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, p1, p2, v3}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    .line 530
    .local v0, "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    const/4 v1, 0x0

    .line 531
    .local v1, "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v2, :cond_c9

    .line 532
    iget-object v2, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v2, v2, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string v3, "ReDeem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 533
    iget-object v1, v0, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 536
    :cond_c9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    .line 538
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_3e

    .line 540
    :cond_e2
    sget-object v2, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 542
    .end local v0    # "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    .end local v1    # "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    :cond_ed
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "openapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 543
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=openapp"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenApp(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 545
    :cond_118
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_143

    .line 546
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=link"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenUrl(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 548
    :cond_143
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 549
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=video"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_OpenUrl(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 551
    :cond_16e
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_199

    .line 552
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=campaign"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 554
    :cond_199
    iget-object v2, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "redeem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c4

    .line 555
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v3, "NFCType=redeem"

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    new-instance v2, Lcom/samsung/privilege/bean/NFCTag;

    const-string v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p1, p2, v4}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_3e

    .line 558
    :cond_1c4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid NFC Type:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/privilege/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3e
.end method

.method private getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.zxing.client.android.SCAN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v4, "zxingIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 97
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_18

    .line 107
    :goto_17
    return-object v4

    .line 99
    :cond_18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 100
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v6, "zxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 101
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 102
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17

    .line 98
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 567
    sget-object v1, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v1}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 569
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 570
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_21
    return-void
.end method

.method private processNFC_QR(Ljava/lang/String;)V
    .registers 21
    .param p1, "strTasks"    # Ljava/lang/String;

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    move/from16 v16, v0

    if-nez v16, :cond_b6

    .line 165
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    .line 167
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v5, "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/NFCTag;>;"
    :try_start_15
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 171
    .local v9, "jsonRoot":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1d
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_20} :catch_f9

    move-result v16

    move/from16 v0, v16

    if-lt v6, v0, :cond_b7

    .line 184
    .end local v6    # "i":I
    .end local v9    # "jsonRoot":Lorg/json/JSONArray;
    :goto_25
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-nez v16, :cond_118

    .line 186
    const-string v16, "\""

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 187
    .local v14, "strEncrpt":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "api/nfc?nfc_token="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "&token="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 188
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "url="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_a4

    .line 190
    const-string v16, "NFC"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "RQ="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 194
    :cond_a4
    const/16 v16, 0x0

    new-instance v17, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/samsung/privilege/activity/QRLandingActivity$PostNFCEncyptListener;)V

    invoke-static/range {v15 .. v17}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 255
    .end local v5    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/NFCTag;>;"
    .end local v14    # "strEncrpt":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    :cond_b6
    :goto_b6
    return-void

    .line 173
    .restart local v5    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/NFCTag;>;"
    .restart local v6    # "i":I
    .restart local v9    # "jsonRoot":Lorg/json/JSONArray;
    :cond_b7
    :try_start_b7
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 174
    .local v8, "jsonAction":Lorg/json/JSONObject;
    new-instance v16, Lcom/samsung/privilege/bean/NFCTag;

    const-string v17, "qr"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lcom/samsung/privilege/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_cb} :catch_cf

    .line 171
    .end local v8    # "jsonAction":Lorg/json/JSONObject;
    :goto_cb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1d

    .line 175
    :catch_cf
    move-exception v3

    .line 176
    .local v3, "e":Lorg/json/JSONException;
    :try_start_d0
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Invalid NFC Action:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\r\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_d0 .. :try_end_f8} :catch_f9

    goto :goto_cb

    .line 180
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "i":I
    .end local v9    # "jsonRoot":Lorg/json/JSONArray;
    :catch_f9
    move-exception v3

    .line 181
    .restart local v3    # "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Invalid NFC Task:"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    .line 196
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_118
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_119
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_b6

    .line 197
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/privilege/bean/NFCTag;

    .line 199
    .local v10, "objNFCTag":Lcom/samsung/privilege/bean/NFCTag;
    const/4 v7, 0x0

    .line 200
    .local v7, "isSkip":Z
    if-lez v6, :cond_15d

    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ReDeem"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15d

    .line 201
    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/privilege/bean/NFCTag;

    .line 202
    .local v12, "objNFCTagPrev":Lcom/samsung/privilege/bean/NFCTag;
    iget-object v0, v12, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Share"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_15d

    .line 203
    const/4 v7, 0x1

    .line 207
    .end local v12    # "objNFCTagPrev":Lcom/samsung/privilege/bean/NFCTag;
    :cond_15d
    if-nez v7, :cond_180

    .line 214
    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Status"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_183

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_Status(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    .line 196
    :cond_180
    :goto_180
    add-int/lit8 v6, v6, 0x1

    goto :goto_119

    .line 216
    :cond_183
    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Share"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1cb

    .line 217
    const/4 v13, 0x0

    .line 219
    .local v13, "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    add-int/lit8 v16, v6, 0x1

    :try_start_19a
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/samsung/privilege/bean/NFCTag;

    move-object v13, v0

    .line 220
    iget-object v0, v13, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ReDeem"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1b6} :catch_1c8

    move-result v16

    if-nez v16, :cond_1ba

    .line 223
    const/4 v13, 0x0

    .line 230
    :cond_1ba
    :goto_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v10, v13, v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_Share(Lcom/samsung/privilege/bean/NFCTag;Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_180

    .line 225
    :catch_1c8
    move-exception v4

    .line 226
    .local v4, "ex":Ljava/lang/Exception;
    const/4 v13, 0x0

    goto :goto_1ba

    .line 231
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v13    # "objNFCTagReDeem":Lcom/samsung/privilege/bean/NFCTag;
    :cond_1cb
    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "CheckIn"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1ed

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v10, v0, v1}, Lcom/samsung/privilege/util/NfcUtils;->Action_CheckIn(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_180

    .line 233
    :cond_1ed
    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ReDeem"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_224

    .line 235
    add-int/lit8 v16, v6, 0x1

    :try_start_203
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_21d

    .line 236
    add-int/lit8 v16, v6, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/privilege/bean/NFCTag;

    .line 237
    .local v11, "objNFCTagNext":Lcom/samsung/privilege/bean/NFCTag;
    if-eqz v11, :cond_21d

    .line 238
    iput-object v11, v10, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_21d} :catch_240

    .line 244
    .end local v11    # "objNFCTagNext":Lcom/samsung/privilege/bean/NFCTag;
    :cond_21d
    :goto_21d
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/samsung/privilege/util/NfcUtils;->Action_ReDeem(Lcom/samsung/privilege/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_b6

    .line 248
    :cond_224
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Invalid NFC ActionName:"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/samsung/privilege/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_180

    .line 241
    :catch_240
    move-exception v16

    goto :goto_21d
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 308
    const-string v0, "buzzebees.market"

    const-string v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 310
    const-string v0, "gNfcResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCResult;

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    .line 312
    :cond_19
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->RC_BARCODE_SCANNER:I

    if-ne p1, v1, :cond_33

    .line 261
    const/4 v1, -0x1

    if-ne p2, v1, :cond_28

    .line 262
    const-string v1, "SCAN_RESULT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->processNFC_QR(Ljava/lang/String;)V

    .line 276
    .end local v0    # "result":Ljava/lang/String;
    :goto_27
    return-void

    .line 269
    :cond_28
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v2, "#5"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    goto :goto_27

    .line 273
    :cond_33
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v2, "#4"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    if-ne v0, v1, :cond_1a

    .line 488
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    .line 509
    :cond_19
    :goto_19
    return v2

    .line 489
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    if-ne v0, v1, :cond_32

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 491
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    if-ne v0, v1, :cond_4b

    .line 492
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 493
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    if-ne v0, v1, :cond_64

    .line 494
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 495
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    if-ne v0, v1, :cond_7d

    .line 496
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 497
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    if-ne v0, v1, :cond_96

    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto :goto_19

    .line 499
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    if-ne v0, v1, :cond_b0

    .line 500
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 501
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    if-ne v0, v1, :cond_ca

    .line 502
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 503
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    if-ne v0, v1, :cond_e5

    .line 504
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19

    .line 505
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    if-ne v0, v1, :cond_19

    .line 506
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/samsung/privilege/bean/NFCPlan;Lcom/samsung/privilege/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->requestWindowFeature(I)Z

    .line 70
    const v1, 0x7f030111

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->setContentView(I)V

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 77
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->mGaInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/AppSetting;->GA_TRACKING_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->mGaTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 78
    const v1, 0x7f0c035f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;

    .line 80
    new-instance v1, Lcom/facebook/UiLifecycleHelper;

    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v1, p0, v2}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 81
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 83
    if-eqz p1, :cond_4c

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    :cond_4c
    invoke-direct {p0, p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, "zxing":Landroid/content/Intent;
    const-string v1, "com.google.zxing.client.android.SCAN.SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->RC_BARCODE_SCANNER:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    return-void
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

    .line 449
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 450
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 451
    const v0, 0x7f090353

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 452
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 453
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 455
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 456
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 458
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 459
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 461
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 462
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 464
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 465
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 467
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 468
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 470
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 471
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 473
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 474
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 476
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 477
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 479
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 480
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/bean/NFCPlan;

    iget-object v0, v0, Lcom/samsung/privilege/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 483
    :cond_14d
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 286
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 287
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 289
    const v0, 0x7f0c007c

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 290
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v1, "#1"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    .line 590
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v1, "#2"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 592
    const/4 v0, 0x1

    .line 596
    :goto_15
    return v0

    .line 594
    :cond_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v1, "#3"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 596
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_15
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 282
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    const-string v0, "gNfcResult"

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/samsung/privilege/bean/NFCResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 299
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    return-void
.end method
