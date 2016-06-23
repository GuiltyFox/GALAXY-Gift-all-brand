.class public Lcom/samsung/privilege/activity/QRLandingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "QRLandingActivity.java"


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

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private gHandler:Landroid/os/Handler;

.field private gImgNfc:Landroid/widget/ImageView;

.field private gIsNFCRedeem:Z

.field private gNfcResult:Lcom/bzbs/bean/NFCResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 50
    const-class v0, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    .line 57
    const/16 v0, 0x7b

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->RC_BARCODE_SCANNER:I

    .line 396
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    .line 398
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    .line 399
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    .line 400
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    .line 401
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    .line 402
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    .line 403
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    .line 404
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    .line 405
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/QRLandingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/QRLandingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/QRLandingActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/QRLandingActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "x2"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/QRLandingActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;

    return-object v0
.end method

.method private doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 9
    .param p1, "nfcPlan"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "nfcResult"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    const v5, 0x7f090244

    .line 473
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "checkin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 474
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=checkin"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 476
    .local v2, "token_facebook":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_44

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    .line 477
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v3, v4, v5}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 523
    .end local v2    # "token_facebook":Lcom/facebook/AccessToken;
    :goto_40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 524
    return-void

    .line 479
    .restart local v2    # "token_facebook":Lcom/facebook/AccessToken;
    :cond_44
    sget-object v3, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_40

    .line 481
    .end local v2    # "token_facebook":Lcom/facebook/AccessToken;
    :cond_4e
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "post"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 482
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=post"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 484
    .restart local v2    # "token_facebook":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_8c

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    .line 485
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v3, v4, v5}, Lcom/bzbs/util/NfcUtils;->Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_40

    .line 487
    :cond_8c
    sget-object v3, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_40

    .line 489
    .end local v2    # "token_facebook":Lcom/facebook/AccessToken;
    :cond_96
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "share"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 490
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=share"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v3, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, p1, p2, v4}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 492
    .local v0, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/4 v1, 0x0

    .line 493
    .local v1, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    iget-object v3, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v3, :cond_d1

    .line 494
    iget-object v3, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v3, v3, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v4, "ReDeem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 495
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 498
    :cond_d1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 499
    .restart local v2    # "token_facebook":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_e9

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 500
    sget-object v3, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_40

    .line 502
    :cond_e9
    sget-object v3, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 504
    .end local v0    # "objNFCTag":Lcom/bzbs/bean/NFCTag;
    .end local v1    # "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    .end local v2    # "token_facebook":Lcom/facebook/AccessToken;
    :cond_f4
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "openapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 505
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=openapp"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_OpenApp(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 507
    :cond_122
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "link"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_150

    .line 508
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=link"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 510
    :cond_150
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17e

    .line 511
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=video"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 513
    :cond_17e
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "campaign"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 514
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=campaign"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 516
    :cond_1ac
    iget-object v3, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "redeem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1da

    .line 517
    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "NFCType=redeem"

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v3, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 520
    :cond_1da
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid NFC Type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_40
.end method

.method private getZxingIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.google.zxing.client.android.SCAN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "zxingIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 100
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "activityList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_48

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 103
    .local v1, "app":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v6, "zxing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 104
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 105
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .end local v1    # "app":Landroid/content/pm/ResolveInfo;
    :cond_48
    return-object v4

    .line 101
    .restart local v1    # "app":Landroid/content/pm/ResolveInfo;
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method private processNFC_QR(Ljava/lang/String;)V
    .registers 23
    .param p1, "strTasks"    # Ljava/lang/String;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    move/from16 v18, v0

    if-nez v18, :cond_118

    .line 122
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/QRLandingActivity;->gIsNFCRedeem:Z

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v6, "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    :try_start_15
    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 128
    .local v10, "jsonRoot":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1d
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_20} :catch_6d

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_8f

    .line 130
    :try_start_25
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 131
    .local v9, "jsonAction":Lorg/json/JSONObject;
    new-instance v18, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v19, "qr"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v9}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_3a} :catch_3d

    .line 128
    .end local v9    # "jsonAction":Lorg/json/JSONObject;
    :goto_3a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 132
    :catch_3d
    move-exception v4

    .line 133
    .local v4, "e":Lorg/json/JSONException;
    :try_start_3e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid NFC Action:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\r\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_6c} :catch_6d

    goto :goto_3a

    .line 137
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    .end local v10    # "jsonRoot":Lorg/json/JSONArray;
    :catch_6d
    move-exception v4

    .line 138
    .restart local v4    # "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Invalid NFC Task:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_8f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_119

    .line 143
    const-string/jumbo v18, "\""

    const-string/jumbo v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 145
    .local v16, "strEncrpt":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "api/nfc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 146
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getNFCData="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v15, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v15}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 149
    .local v15, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v18, "token"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v18, "nfc_token"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v3, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v3}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 153
    .local v3, "client":Lcom/loopj/android/http/AsyncHttpClient;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Lcom/samsung/privilege/activity/QRLandingActivity$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v15, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 262
    .end local v3    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v6    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    .end local v15    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v16    # "strEncrpt":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :cond_118
    :goto_118
    return-void

    .line 211
    .restart local v6    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    :cond_119
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_11a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_118

    .line 212
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bzbs/bean/NFCTag;

    .line 214
    .local v11, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/4 v8, 0x0

    .line 215
    .local v8, "isSkip":Z
    if-lez v7, :cond_160

    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ReDeem"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_160

    .line 216
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bzbs/bean/NFCTag;

    .line 217
    .local v13, "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    iget-object v0, v13, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "Share"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_160

    .line 218
    const/4 v8, 0x1

    .line 222
    .end local v13    # "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    :cond_160
    if-nez v8, :cond_184

    .line 223
    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "Status"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_187

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/bzbs/util/NfcUtils;->Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 211
    :cond_184
    :goto_184
    add-int/lit8 v7, v7, 0x1

    goto :goto_11a

    .line 225
    :cond_187
    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "Share"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d2

    .line 226
    const/4 v14, 0x0

    .line 228
    .local v14, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    add-int/lit8 v18, v7, 0x1

    :try_start_19f
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    move-object v14, v0

    .line 229
    iget-object v0, v14, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ReDeem"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1bc} :catch_1cf

    move-result v18

    if-eqz v18, :cond_1cd

    .line 237
    :goto_1bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v11, v14, v0, v1}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_184

    .line 232
    :cond_1cd
    const/4 v14, 0x0

    goto :goto_1bf

    .line 234
    :catch_1cf
    move-exception v5

    .line 235
    .local v5, "ex":Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_1bf

    .line 238
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v14    # "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    :cond_1d2
    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "CheckIn"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f5

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_184

    .line 240
    :cond_1f5
    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "ReDeem"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22d

    .line 242
    add-int/lit8 v18, v7, 0x1

    :try_start_20c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_226

    .line 243
    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bzbs/bean/NFCTag;

    .line 244
    .local v12, "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    if-eqz v12, :cond_226

    .line 245
    iput-object v12, v11, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_226
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_226} :catch_24e

    .line 251
    .end local v12    # "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    :cond_226
    :goto_226
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_118

    .line 255
    :cond_22d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid NFC ActionName:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_184

    .line 248
    :catch_24e
    move-exception v18

    goto :goto_226
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 328
    const-string/jumbo v0, "buzzebees.market"

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 330
    const-string/jumbo v0, "gNfcResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCResult;

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    .line 332
    :cond_1d
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 266
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 283
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 284
    .local v0, "result":Lcom/google/zxing/integration/android/IntentResult;
    if-eqz v0, :cond_2b

    .line 285
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    .line 287
    const-string/jumbo v1, "Cancelled"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 301
    :goto_22
    return-void

    .line 294
    :cond_23
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->processNFC_QR(Ljava/lang/String;)V

    goto :goto_22

    .line 299
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_22
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 447
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    if-ne v0, v1, :cond_1a

    .line 448
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 469
    :cond_19
    :goto_19
    return v2

    .line 449
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    if-ne v0, v1, :cond_32

    .line 450
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 451
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    if-ne v0, v1, :cond_4b

    .line 452
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 453
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    if-ne v0, v1, :cond_64

    .line 454
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 455
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    if-ne v0, v1, :cond_7d

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 457
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    if-ne v0, v1, :cond_96

    .line 458
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 459
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    if-ne v0, v1, :cond_b0

    .line 460
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 461
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    if-ne v0, v1, :cond_ca

    .line 462
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 463
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    if-ne v0, v1, :cond_e5

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 465
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    if-ne v0, v1, :cond_19

    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->setContentView(I)V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 79
    const v1, 0x7f1001bf

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gImgNfc:Landroid/widget/ImageView;

    .line 81
    if-nez p1, :cond_2c

    .line 93
    :goto_23
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 94
    .local v0, "integrator":Lcom/google/zxing/integration/android/IntentIntegrator;
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->initiateScan()V

    .line 95
    return-void

    .line 84
    .end local v0    # "integrator":Lcom/google/zxing/integration/android/IntentIntegrator;
    :cond_2c
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_23
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

    .line 409
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 410
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 411
    const v0, 0x7f090248

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 412
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 413
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_1:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 415
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 416
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_2:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 418
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 419
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_3:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 421
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 422
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_4:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 424
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 425
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_5:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 427
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 428
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_6:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 430
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 431
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_7:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 433
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 434
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_8:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 436
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 437
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_9:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 439
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 440
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->MENU_PLAN_10:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 443
    :cond_14d
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 311
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 539
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 540
    const/4 v0, 0x1

    .line 543
    :goto_7
    return v0

    .line 542
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 543
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 306
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 117
    sput-object p0, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 317
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    const-string/jumbo v0, "gNfcResult"

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 319
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    return-void
.end method
