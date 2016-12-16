.class public Lcom/samsung/privilege/activity/QRLandingActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "QRLandingActivity.java"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Lcom/bzbs/bean/NFCResult;

.field private f:I

.field private g:Lcom/facebook/CallbackManager;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


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

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->d:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    .line 57
    const/16 v0, 0x7b

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->f:I

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->h:I

    .line 405
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->i:I

    .line 406
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->j:I

    .line 407
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->k:I

    .line 408
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->l:I

    .line 409
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->m:I

    .line 410
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->n:I

    .line 411
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->o:I

    .line 412
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->p:I

    .line 413
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/QRLandingActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 336
    const-string/jumbo v0, "buzzebees.market"

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 338
    const-string/jumbo v0, "gNfcResult"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCResult;

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    .line 340
    :cond_1d
    return-void
.end method

.method private a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 8

    .prologue
    const v4, 0x7f09024a

    .line 481
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "checkin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 482
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=checkin"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_44

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 485
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 531
    :goto_40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 532
    return-void

    .line 487
    :cond_44
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_40

    .line 489
    :cond_4e
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=post"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_8c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    .line 493
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_40

    .line 495
    :cond_8c
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_40

    .line 497
    :cond_96
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "share"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 498
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=share"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v1, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v0, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x0

    .line 501
    iget-object v2, v1, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v2, :cond_d1

    .line 502
    iget-object v2, v1, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v2, v2, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v3, "ReDeem"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 503
    iget-object v0, v1, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 506
    :cond_d1
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 507
    if-eqz v2, :cond_e9

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/facebook/AccessToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e9

    .line 508
    sget-object v2, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v1, v0, v2, v3}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_40

    .line 510
    :cond_e9
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_40

    .line 512
    :cond_f4
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 513
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=openapp"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 515
    :cond_122
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 516
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=link"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 518
    :cond_150
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 519
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=video"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 521
    :cond_17e
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 522
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=campaign"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 524
    :cond_1ac
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 525
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=redeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "qr"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    sget-object v1, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_40

    .line 528
    :cond_1da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid NFC Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_40
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/QRLandingActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/QRLandingActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->d:Z

    if-nez v0, :cond_ee

    .line 122
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->d:Z

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :try_start_e
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v3

    .line 128
    :goto_14
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_17} :catch_55

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 130
    :try_start_1a
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    new-instance v7, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v8, "qr"

    invoke-direct {v7, v8, v0}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_29} :catch_2d

    .line 128
    :goto_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 132
    :catch_2d
    move-exception v0

    .line 133
    :try_start_2e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid NFC Action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_54} :catch_55

    goto :goto_29

    .line 137
    :catch_55
    move-exception v0

    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid NFC Task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_6f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_ef

    .line 143
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/nfc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getNFCData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 150
    const-string/jumbo v3, "nfc_token"

    invoke-virtual {v2, v3, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 152
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 153
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 154
    invoke-virtual {v0, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 158
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/QRLandingActivity$1;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 270
    :cond_ee
    :goto_ee
    return-void

    :cond_ef
    move v2, v3

    .line 219
    :goto_f0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_ee

    .line 220
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    .line 223
    if-lez v2, :cond_1e8

    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "ReDeem"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 224
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 225
    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "Share"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    move v1, v5

    .line 230
    :goto_12d
    if-nez v1, :cond_147

    .line 231
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "Status"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 232
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 219
    :cond_147
    :goto_147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f0

    .line 233
    :cond_14b
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "Share"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 236
    add-int/lit8 v1, v2, 0x1

    :try_start_160
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 237
    iget-object v7, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ReDeem"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_176} :catch_181

    move-result v7

    if-eqz v7, :cond_17f

    .line 245
    :goto_179
    iget-object v7, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v7}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_147

    :cond_17f
    move-object v1, v4

    .line 240
    goto :goto_179

    .line 242
    :catch_181
    move-exception v1

    move-object v1, v4

    .line 243
    goto :goto_179

    .line 246
    :cond_184
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "CheckIn"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19d

    .line 247
    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_147

    .line 248
    :cond_19d
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "ReDeem"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 250
    add-int/lit8 v1, v2, 0x1

    :try_start_1b2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_1c6

    .line 251
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 252
    if-eqz v1, :cond_1c6

    .line 253
    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c6} :catch_1e6

    .line 259
    :cond_1c6
    :goto_1c6
    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_ee

    .line 263
    :cond_1cb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid NFC ActionName:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_147

    .line 256
    :catch_1e6
    move-exception v1

    goto :goto_1c6

    :cond_1e8
    move v1, v3

    goto/16 :goto_12d
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/QRLandingActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/QRLandingActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity$2;-><init>(Lcom/samsung/privilege/activity/QRLandingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 542
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 291
    invoke-static {p1, p2, p3}, Lcom/google/zxing/integration/android/IntentIntegrator;->a(IILandroid/content/Intent;)Lcom/google/zxing/integration/android/IntentResult;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2b

    .line 293
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    .line 295
    const-string/jumbo v0, "Cancelled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 309
    :goto_22
    return-void

    .line 302
    :cond_23
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentResult;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->b(Ljava/lang/String;)V

    goto :goto_22

    .line 307
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_22
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 455
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->h:I

    if-ne v0, v1, :cond_1a

    .line 456
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 477
    :cond_19
    :goto_19
    return v2

    .line 457
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->i:I

    if-ne v0, v1, :cond_32

    .line 458
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 459
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->j:I

    if-ne v0, v1, :cond_4b

    .line 460
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 461
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->k:I

    if-ne v0, v1, :cond_64

    .line 462
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 463
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->l:I

    if-ne v0, v1, :cond_7d

    .line 464
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 465
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->m:I

    if-ne v0, v1, :cond_96

    .line 466
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 467
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->n:I

    if-ne v0, v1, :cond_b0

    .line 468
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 469
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->o:I

    if-ne v0, v1, :cond_ca

    .line 470
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 471
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->p:I

    if-ne v0, v1, :cond_e5

    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 473
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->q:I

    if-ne v0, v1, :cond_19

    .line 474
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->setContentView(I)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->a:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->g:Lcom/facebook/CallbackManager;

    .line 79
    const v0, 0x7f1001db

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->c:Landroid/widget/ImageView;

    .line 81
    if-nez p1, :cond_2c

    .line 93
    :goto_23
    new-instance v0, Lcom/google/zxing/integration/android/IntentIntegrator;

    invoke-direct {v0, p0}, Lcom/google/zxing/integration/android/IntentIntegrator;-><init>(Landroid/app/Activity;)V

    .line 94
    invoke-virtual {v0}, Lcom/google/zxing/integration/android/IntentIntegrator;->c()V

    .line 95
    return-void

    .line 84
    :cond_2c
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/QRLandingActivity;->a(Landroid/os/Bundle;)V

    goto :goto_23
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 417
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 418
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 419
    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/QRLandingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 420
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 421
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->h:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->h:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 423
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 424
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->i:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->i:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 426
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 427
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->j:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->j:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 429
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 430
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->k:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->k:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 432
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 433
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->l:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->l:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 435
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 436
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->m:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->m:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 438
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 439
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->n:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->n:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 441
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 442
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->o:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->o:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 444
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 445
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->p:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->p:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 447
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 448
    iget v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->q:I

    iget v2, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->q:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 451
    :cond_14d
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 319
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 546
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 547
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 548
    const/4 v0, 0x1

    .line 551
    :goto_7
    return v0

    .line 550
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/QRLandingActivity;->finish()V

    .line 551
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 314
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 117
    sput-object p0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    .line 118
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 325
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    const-string/jumbo v0, "gNfcResult"

    iget-object v1, p0, Lcom/samsung/privilege/activity/QRLandingActivity;->e:Lcom/bzbs/bean/NFCResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 327
    return-void
.end method
