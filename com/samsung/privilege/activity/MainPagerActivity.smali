.class public Lcom/samsung/privilege/activity/MainPagerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# instance fields
.field private A:I

.field private B:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

.field private C:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

.field private D:Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;

.field private E:J

.field public a:Lcom/facebook/CallbackManager;

.field b:I

.field c:I

.field public d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Landroid/app/ProgressDialog;

.field private h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

.field private i:Landroid/view/View;

.field private j:I

.field private k:Z

.field private l:Lcom/bzbs/bean/NFCResult;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/bzbs/event/NetworkStateReceiver;

.field private final p:I

.field private final q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 120
    const-class v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    .line 131
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    .line 134
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 137
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->b:I

    .line 138
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->c:I

    .line 416
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->p:I

    .line 417
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->q:I

    .line 945
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 1304
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    .line 1305
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    .line 1306
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    .line 1307
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    .line 1308
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    .line 1309
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    .line 1310
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    .line 1311
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    .line 1312
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    .line 1313
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    .line 2071
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;I)I
    .registers 2

    .prologue
    .line 118
    iput p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 523
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 525
    const-string/jumbo v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 526
    const-string/jumbo v0, "gCurrentLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 527
    const-string/jumbo v0, "gCurrentCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 529
    :cond_2c
    return-void
.end method

.method private a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 9

    .prologue
    const v5, 0x7f09024b

    .line 1381
    const-string/jumbo v0, ""

    .line 1382
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 1383
    if-eqz v1, :cond_10

    .line 1384
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1387
    :cond_10
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1388
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=checkin"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    if-eqz v0, :cond_48

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1390
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 1433
    :goto_47
    return-void

    .line 1392
    :cond_48
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1394
    :cond_52
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1395
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=post"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    if-eqz v0, :cond_8a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1397
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_47

    .line 1399
    :cond_8a
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1401
    :cond_94
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1402
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=share"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    new-instance v2, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, p2, v3}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 1404
    const/4 v1, 0x0

    .line 1405
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v3, :cond_cf

    .line 1406
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v3, v3, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v4, "ReDeem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1407
    iget-object v1, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 1410
    :cond_cf
    if-eqz v0, :cond_e1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1411
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v2, v1, p0, v0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_47

    .line 1413
    :cond_e1
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1415
    :cond_ec
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1416
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=openapp"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1418
    :cond_118
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1419
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=link"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1421
    :cond_144
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1422
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=video"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1424
    :cond_170
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 1425
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=campaign"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1427
    :cond_19c
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 1428
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=redeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1431
    :cond_1c8
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

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V

    goto/16 :goto_47
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 567
    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 569
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "Yes"

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$6;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "No"

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$5;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$5;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 594
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 605
    :cond_35
    :goto_35
    return-void

    .line 601
    :catch_36
    move-exception v0

    .line 602
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to showDialogHasNewVersion():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2603
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2605
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 2817
    :cond_c
    :goto_c
    return-void

    .line 2609
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 2610
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stringListPagerOld="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    const-string/jumbo v0, ""

    move v1, v2

    move-object v3, v0

    .line 2612
    :goto_33
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5f

    .line 2613
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignCategory;

    .line 2614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bzbs/bean/CampaignCategory;->GetKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2612
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    .line 2616
    :cond_5f
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stringListPagerNew="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ff

    move v0, v4

    .line 2623
    :goto_7f
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    if-nez v1, :cond_d7

    .line 2624
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v5, "gAdapter=null"

    invoke-static {v1, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    :goto_8b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRefreshAdapter="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    if-eqz v1, :cond_e0

    if-ne v0, v4, :cond_e0

    .line 2631
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "<!----------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "restartApplication();"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "----------------------------------------------------------------->"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    goto/16 :goto_c

    .line 2626
    :cond_d7
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v5, "gAdapter!=null"

    invoke-static {v1, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 2640
    :cond_e0
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    if-nez v0, :cond_c

    .line 2643
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->a(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v8

    move v5, v2

    move v6, v2

    .line 2645
    :goto_ea
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_12a

    .line 2646
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignCategory;

    .line 2647
    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    if-eqz v1, :cond_11c

    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    const-string/jumbo v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11c

    .line 2648
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v9, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v8, v1, v9}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    .line 2652
    :goto_112
    iget-boolean v0, v0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    if-ne v0, v4, :cond_1fc

    move v1, v5

    .line 2645
    :goto_117
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v6, v1

    goto :goto_ea

    .line 2650
    :cond_11c
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v9, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v8, v1, v9}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    goto :goto_112

    .line 2657
    :cond_12a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "gAdapter = new FragmentPagerItemCustomAdapter(getSupportFragmentManager(), objCreator.create(), listCats);"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v8}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v5

    invoke-direct {v0, p0, v1, v5, v7}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    .line 2660
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2661
    sget-boolean v1, Lcom/bzbs/data/AppSetting;->ac:Z

    if-ne v1, v4, :cond_1ec

    .line 2662
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2666
    :goto_157
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 2667
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2669
    const v1, 0x7f10018b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 2671
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2672
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2673
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2674
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2675
    div-int/lit8 v5, v3, 0x3

    div-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v5, v2, v3, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 2676
    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$41;

    invoke-direct {v3, p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity$41;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 2718
    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$42;

    invoke-direct {v3, p0, v7, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$42;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    invoke-virtual {v1, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2770
    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 2775
    :try_start_19a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2776
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2777
    if-eqz v0, :cond_1b4

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b4

    .line 2778
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1b3} :catch_1f2

    move v2, v4

    :cond_1b4
    move v0, v2

    .line 2786
    :goto_1b5
    :try_start_1b5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2787
    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2788
    if-eqz v1, :cond_1cf

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    .line 2789
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Ljava/lang/String;)V
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1ce} :catch_1f8

    move v0, v4

    .line 2797
    :cond_1cf
    :goto_1cf
    :try_start_1cf
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2798
    const-string/jumbo v2, "current_tab"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2799
    if-ltz v1, :cond_1fa

    .line 2800
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1e0} :catch_1f5

    .line 2808
    :goto_1e0
    if-nez v4, :cond_c

    .line 2809
    if-lez v6, :cond_c

    .line 2810
    :try_start_1e4
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1e7} :catch_1e9

    goto/16 :goto_c

    .line 2813
    :catch_1e9
    move-exception v0

    goto/16 :goto_c

    .line 2664
    :cond_1ec
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto/16 :goto_157

    .line 2781
    :catch_1f2
    move-exception v0

    move v0, v2

    goto :goto_1b5

    .line 2803
    :catch_1f5
    move-exception v1

    move v4, v0

    goto :goto_1e0

    .line 2792
    :catch_1f8
    move-exception v1

    goto :goto_1cf

    :cond_1fa
    move v4, v0

    goto :goto_1e0

    :cond_1fc
    move v1, v6

    goto/16 :goto_117

    :cond_1ff
    move v0, v2

    goto/16 :goto_7f
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2324
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2326
    const v0, 0x7f040119

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2328
    const v0, 0x7f1005c7

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2329
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$34;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$34;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2341
    const v0, 0x7f1005c9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2342
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$35;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$35;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2348
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2349
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2350
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2352
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2353
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 468
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 469
    const v0, 0x7f04011a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 471
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 475
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 483
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 484
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 486
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 487
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->t()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 2011
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2013
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 2014
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-ne v0, v5, :cond_af

    .line 2015
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2017
    if-eqz v0, :cond_ab

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2019
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveLanguageToServer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 2023
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2025
    const-string/jumbo v2, ""

    const v3, 0x7f090283

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 2026
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2027
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2028
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2029
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2030
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2031
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2032
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$27;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2033
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2062
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2069
    :goto_aa
    return-void

    .line 2064
    :cond_ab
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    goto :goto_aa

    .line 2067
    :cond_af
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    goto :goto_aa
.end method

.method private g(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/CampaignCategory;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2542
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2545
    :try_start_9
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v3, v2

    .line 2546
    :goto_f
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_105

    move-result v0

    if-ge v3, v0, :cond_106

    .line 2548
    :try_start_15
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2549
    new-instance v6, Lcom/bzbs/bean/CampaignCategory;

    const-string/jumbo v7, "name"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/bzbs/bean/CampaignCategory;-><init>(Ljava/lang/String;)V

    .line 2550
    const-string/jumbo v7, "id"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 2551
    const-string/jumbo v7, "mode"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 2552
    const-string/jumbo v7, "tags"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 2553
    const-string/jumbo v7, "name_en"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 2554
    const-string/jumbo v7, "name_th"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 2555
    const-string/jumbo v7, "id"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 2556
    const-string/jumbo v7, "count"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 2557
    const-string/jumbo v7, "dashboard_key"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 2558
    const-string/jumbo v7, "list_config"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 2559
    const-string/jumbo v7, "uservisibility"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J

    .line 2561
    const-string/jumbo v7, "image_url_active"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 2562
    const-string/jumbo v7, "image_url_inactive"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 2564
    const-string/jumbo v7, "firstpage"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v6, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 2565
    const-string/jumbo v7, "selected"

    invoke-static {v0, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v6, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 2567
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "=false]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_d3} :catch_fc

    move-result v0

    if-ne v0, v1, :cond_db

    .line 2546
    :cond_d6
    :goto_d6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_f

    .line 2573
    :cond_db
    :try_start_db
    iget-wide v8, v6, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J

    cmp-long v0, v8, v12

    if-lez v0, :cond_109

    .line 2575
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;)J

    move-result-wide v8

    iget-wide v10, v6, Lcom/bzbs/bean/CampaignCategory;->uservisibility:J
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_eb} :catch_fe

    and-long/2addr v8, v10

    cmp-long v0, v8, v12

    if-lez v0, :cond_107

    move v0, v1

    .line 2583
    :goto_f1
    if-ne v0, v1, :cond_d6

    .line 2584
    :try_start_f3
    iget-boolean v0, v6, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    if-ne v0, v1, :cond_101

    .line 2585
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_d6

    .line 2591
    :catch_fc
    move-exception v0

    goto :goto_d6

    .line 2579
    :catch_fe
    move-exception v0

    move v0, v1

    .line 2580
    goto :goto_f1

    .line 2587
    :cond_101
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_104} :catch_fc

    goto :goto_d6

    .line 2595
    :catch_105
    move-exception v0

    .line 2599
    :cond_106
    return-object v4

    :cond_107
    move v0, v2

    goto :goto_f1

    :cond_109
    move v0, v1

    goto :goto_f1
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/MainPagerActivity;)Z
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->p()V

    return-void
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()V

    return-void
.end method

.method private k()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1437
    .line 1438
    :try_start_1
    const-string v2, "SM-G935F"

    .line 1439
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 1440
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 1445
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1446
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v4

    if-eqz v4, :cond_23

    .line 1447
    const/4 v0, 0x1

    .line 1454
    :cond_22
    :goto_22
    return v0

    .line 1440
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1453
    :catch_26
    move-exception v1

    goto :goto_22
.end method

.method static synthetic l(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .registers 8

    .prologue
    const v6, 0x7f1006e9

    const v5, 0x7f1006e6

    const v4, 0x7f1006e3

    const v3, 0x7f1006e2

    const v2, 0x7f1000b8

    .line 1649
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1651
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1652
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1653
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1655
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1656
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1657
    const v0, 0x7f1006ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1658
    const v0, 0x7f1006ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1659
    const v0, 0x7f1006f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1660
    const v0, 0x7f1006f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1661
    const v0, 0x7f1006f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1662
    const v0, 0x7f1006f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1663
    const v0, 0x7f1006fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1667
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1668
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1669
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1671
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1672
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1673
    const v0, 0x7f1006ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1674
    const v0, 0x7f1006ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1675
    const v0, 0x7f1006f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1676
    const v0, 0x7f1006f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1677
    const v0, 0x7f1006f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1678
    const v0, 0x7f1006f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1679
    const v0, 0x7f1006fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1680
    return-void
.end method

.method static synthetic m(Lcom/samsung/privilege/activity/MainPagerActivity;)I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return v0
.end method

.method private m()V
    .registers 8

    .prologue
    const v6, 0x7f1006e7

    const v5, 0x7f1006e3

    const v4, 0x7f1000b8

    const/16 v3, 0x8

    .line 1740
    const v0, 0x7f1006fb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1741
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1742
    if-eqz v1, :cond_156

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 1743
    const v1, 0x7f0901e8

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1748
    :goto_31
    const v0, 0x7f1006e4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1749
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1750
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1759
    :goto_54
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1760
    const v0, 0x7f1006f8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    const v0, 0x7f1006f9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1764
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1765
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Thailand"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1774
    :goto_8b
    const v0, 0x7f1006e2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1776
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 1777
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1778
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1792
    :cond_d0
    :goto_d0
    const v0, 0x7f1006e9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    const v0, 0x7f1006ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090210

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1794
    const v0, 0x7f1006ef

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    const v0, 0x7f1006f1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901eb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1796
    const v0, 0x7f1006f3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901ec

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1797
    const v0, 0x7f1006f5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1798
    const v0, 0x7f1006f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1799
    return-void

    .line 1745
    :cond_156
    const v1, 0x7f0901e7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31

    .line 1754
    :cond_162
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_54

    .line 1766
    :cond_16b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 1767
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Laos"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1768
    :cond_18a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1769
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Myanmar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1771
    :cond_1a9
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1780
    :cond_1b7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 1781
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1783
    :cond_1da
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1784
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1788
    :cond_1fd
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0
.end method

.method private n()V
    .registers 3

    .prologue
    .line 1889
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1890
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1891
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1892
    invoke-static {v0}, Landroid/support/v4/content/IntentCompat;->b(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1893
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1895
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1899
    :goto_1b
    return-void

    .line 1896
    :catch_1c
    move-exception v0

    .line 1897
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    goto :goto_1b
.end method

.method private o()V
    .registers 4

    .prologue
    .line 1903
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1904
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1906
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1907
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1908
    const-string/jumbo v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1909
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1910
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1911
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1912
    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1913
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1914
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1915
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1916
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1917
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1921
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 1925
    :goto_5e
    return-void

    .line 1922
    :catch_5f
    move-exception v0

    goto :goto_5e
.end method

.method private p()V
    .registers 4

    .prologue
    .line 2192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2193
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2194
    return-void
.end method

.method private q()V
    .registers 7

    .prologue
    .line 2357
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2358
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callLogout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2360
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_c3

    .line 2363
    :try_start_34
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 2364
    if-eqz v2, :cond_61

    .line 2365
    const-string/jumbo v3, "access_token"

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2366
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "access_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_61} :catch_e0

    .line 2372
    :cond_61
    :goto_61
    :try_start_61
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2373
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 2374
    const-string/jumbo v3, "uuid"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 2375
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2378
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2379
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 2380
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2381
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2382
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2383
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$36;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$36;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2384
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2400
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_c2} :catch_c3

    .line 2404
    :goto_c2
    return-void

    .line 2401
    :catch_c3
    move-exception v0

    .line 2402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->d(Ljava/lang/String;)V

    goto :goto_c2

    .line 2368
    :catch_e0
    move-exception v2

    goto :goto_61
.end method

.method private r()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2407
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$37;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$37;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private s()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2417
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$38;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$38;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private t()V
    .registers 6

    .prologue
    .line 2427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_pager_menu_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2428
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2429
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 2431
    :try_start_40
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCacheAndLoadNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5d} :catch_73

    .line 2437
    :goto_5d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 2438
    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-lez v0, :cond_6e

    .line 2439
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->u()V

    .line 2444
    :cond_6e
    :goto_6e
    return-void

    .line 2442
    :cond_6f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->u()V

    goto :goto_6e

    .line 2433
    :catch_73
    move-exception v1

    goto :goto_5d
.end method

.method private u()V
    .registers 6

    .prologue
    .line 2448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaigncat/menu?config=menu_gift_v2&device_app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2449
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPagerMenu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2451
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2452
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2453
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2454
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2455
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2456
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$39;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$39;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 2457
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2500
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2501
    return-void
.end method

.method private v()V
    .registers 8

    .prologue
    .line 2992
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1b

    .line 2993
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 2995
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2997
    if-eqz v0, :cond_1b

    .line 2998
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3034
    :cond_1b
    :goto_1b
    return-void

    .line 3001
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3002
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 3004
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$43;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$43;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 3021
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3023
    const-string/jumbo v0, ""

    .line 3025
    const v3, 0x7f090251

    :try_start_3e
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_58

    move-result-object v0

    .line 3029
    :goto_42
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "No"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1b

    .line 3026
    :catch_58
    move-exception v3

    .line 3027
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-lez v0, :cond_14

    .line 2980
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2981
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2983
    :cond_14
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 1055
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1056
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v8, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1058
    const v0, 0x7f040135

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1060
    const v0, 0x7f1001ff

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1061
    const v1, 0x7f100663

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 1062
    const v1, 0x7f100664

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 1065
    :try_start_38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1066
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1068
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    .line 1069
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1073
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1074
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1075
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1078
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_9c

    .line 1083
    :goto_75
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$11;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$11;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$12;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$12;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1102
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1103
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1105
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1107
    :cond_9b
    return-void

    .line 1079
    :catch_9c
    move-exception v0

    goto :goto_75
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 997
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 998
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1000
    const v0, 0x7f04011a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1002
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1004
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1007
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$9;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1017
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1018
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1020
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1022
    :cond_4a
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11

    .prologue
    .line 1110
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_75

    .line 1111
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1113
    const v0, 0x7f040118

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1115
    const v0, 0x7f10016b

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1116
    const v1, 0x7f1005c4

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1117
    const v1, 0x7f10058b

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1118
    const v4, 0x7f1005c5

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    .line 1120
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4c

    .line 1123
    const v0, 0x7f090369

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1126
    :cond_4c
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$13;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/MainPagerActivity$13;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1139
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$14;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$14;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1149
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1150
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1152
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1154
    :cond_75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1605
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    .line 1608
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    .line 1610
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 1611
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 1612
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 1614
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->t()V

    .line 1616
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 1618
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$20;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1645
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 1199
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1200
    new-instance v3, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v3, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1202
    const v0, 0x7f040121

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1204
    const v0, 0x7f10016b

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1205
    const v1, 0x7f10058b

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1206
    const v2, 0x7f1005c6

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1208
    const v4, 0x7f090379

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    const v0, 0x7f090366

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    const v0, 0x7f090373

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const v0, 0x7f10058a

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1213
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$17;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$17;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1256
    const v0, 0x7f1005c9

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1257
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$18;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$18;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1296
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1297
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1298
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1300
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1302
    :cond_88
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1025
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1026
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1028
    const v0, 0x7f04012a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1030
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1032
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    const v0, 0x7f10016f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1035
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$10;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$10;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1047
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1048
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1050
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1052
    :cond_4a
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2934
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 2936
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2937
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2938
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2939
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    .line 2947
    :cond_2d
    return-void

    .line 2943
    :catch_2e
    move-exception v0

    .line 2934
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1157
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1158
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1160
    const v0, 0x7f040121

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1162
    const v0, 0x7f10016b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1164
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1166
    const v0, 0x7f10058a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1167
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$15;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1180
    const v0, 0x7f1005c9

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1181
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$16;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1190
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1191
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1192
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1194
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1196
    :cond_5b
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2950
    move v1, v2

    .line 2951
    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 2953
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2954
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "dashboard_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2955
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2956
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_65

    .line 2958
    const/4 v2, 0x1

    .line 2966
    :cond_2e
    if-nez v2, :cond_64

    .line 2967
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2969
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2970
    const-string/jumbo v2, "header_en"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2971
    const-string/jumbo v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2972
    const-string/jumbo v0, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2973
    const-string/jumbo v0, "dashboard_key"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2974
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2976
    :cond_64
    return-void

    .line 2962
    :catch_65
    move-exception v0

    .line 2951
    :cond_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public doAboutUs(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2280
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$33;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$33;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2288
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click About Us"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    return-void
.end method

.method public doChangeLanguage(Landroid/view/View;)V
    .registers 10

    .prologue
    const v7, 0x7f1005b6

    const v6, 0x7f1005b1

    const v5, 0x7f020380

    const v4, 0x7f020288

    const/16 v3, 0x8

    .line 1928
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1929
    const v0, 0x7f040116

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1932
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 1933
    const v0, 0x7f1005af

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901b1

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1935
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    const v0, 0x7f1005bb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    :cond_59
    :goto_59
    const v0, 0x7f1005b0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1950
    const v0, 0x7f1005b5

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1951
    const v0, 0x7f1005ba

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1952
    const v0, 0x7f1005bf

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1953
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1033"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1954
    const v0, 0x7f1005b0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1963
    :cond_a6
    :goto_a6
    const v0, 0x7f1005ac

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$23;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$23;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1973
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$24;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$24;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1983
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$25;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$25;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1993
    const v0, 0x7f1005bb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$26;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$26;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2003
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2004
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2005
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2007
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2008
    return-void

    .line 1937
    :cond_f3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 1938
    const v0, 0x7f1005af

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901af

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1939
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1940
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1941
    const v0, 0x7f1005bb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1942
    :cond_132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1943
    const v0, 0x7f1005af

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1944
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1946
    const v0, 0x7f1005bb

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1955
    :cond_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1054"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 1956
    const v0, 0x7f1005b5

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1957
    :cond_190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1958
    const v0, 0x7f1005ba

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1959
    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1109"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1960
    const v0, 0x7f1005bf

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6
.end method

.method public doHistory(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2229
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2230
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2252
    :goto_10
    return-void

    .line 2232
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2236
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$31;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$31;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2250
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click History"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2247
    :cond_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "history"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doLogOut(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2292
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2293
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2294
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log Out"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    :goto_25
    return-void

    .line 2300
    :cond_26
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "menu"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public doLuckyDraw(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2132
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WinnerCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2133
    const-string/jumbo v1, "header_en"

    const v2, 0x7f090210

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2134
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2135
    const-string/jumbo v1, "list_config"

    sget-object v2, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    const-string/jumbo v1, "cat"

    sget v2, Lcom/bzbs/data/AppSetting;->L:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2137
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2139
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Winner"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    return-void
.end method

.method public doMarketPlace(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2124
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2126
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Marketplace"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    return-void
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1873
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1874
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1875
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    sub-long/2addr v2, v4

    .line 1876
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1885
    :goto_1a
    return-void

    .line 1880
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    .line 1882
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1884
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Menu Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doMyAccount(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2206
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2207
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2226
    :goto_10
    return-void

    .line 2209
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2210
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$30;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$30;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2224
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click My Account Settings"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2221
    :cond_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "account"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doNotification(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2073
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2074
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2075
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    sub-long/2addr v2, v4

    .line 2076
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2101
    :goto_1a
    return-void

    .line 2080
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    .line 2082
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 2083
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 2085
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2086
    if-eqz v0, :cond_6c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2087
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2089
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$28;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2099
    :goto_62
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Notifications Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 2096
    :cond_6c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "notification"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62
.end method

.method public doPointCaption(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2307
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2308
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2315
    :goto_13
    return-void

    .line 2311
    :cond_14
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "point_caption"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click You Are Not Logged In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public doPointQuestion(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogMyPoint;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2320
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click My Points"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    return-void
.end method

.method public doRequestHelp(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2255
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2256
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2275
    :goto_10
    return-void

    .line 2258
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2259
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2260
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$32;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$32;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2273
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Request Help"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2270
    :cond_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "help"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doScanQRCode(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2143
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2144
    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2189
    :goto_10
    return-void

    .line 2146
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2147
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$29;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2187
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Scan QR Code"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2184
    :cond_4b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "qr"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doSearch(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 2104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2105
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 2106
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    sub-long/2addr v2, v4

    .line 2107
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 2116
    :goto_1a
    return-void

    .line 2111
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->E:J

    .line 2113
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2115
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Search Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doSpecialDeal(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 2120
    return-void
.end method

.method public e_()V
    .registers 5

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$19;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$19;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    return-void
.end method

.method public f()V
    .registers 5

    .prologue
    .line 923
    const v0, 0x7f100188

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 924
    const v1, 0x7f100189

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 926
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_28

    .line 927
    const-string/jumbo v2, " 0 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 943
    :goto_27
    return-void

    .line 932
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_41

    .line 934
    const-string/jumbo v2, "9+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 935
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_27

    .line 940
    :catch_3f
    move-exception v0

    goto :goto_27

    .line 937
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->T(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_3f

    goto :goto_27
.end method

.method public f_()V
    .registers 1

    .prologue
    .line 1486
    return-void
.end method

.method public g()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 947
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    if-nez v0, :cond_3d

    .line 948
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 951
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->R(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_cd

    .line 954
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 955
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 956
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 957
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 994
    :cond_3d
    :goto_3d
    return-void

    .line 958
    :cond_3e
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 959
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_3d

    .line 990
    :catch_4f
    move-exception v0

    .line 991
    iput-boolean v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto :goto_3d

    .line 961
    :cond_53
    :try_start_53
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 964
    :cond_59
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 966
    :cond_5f
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 967
    iget v1, v0, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v1, v0, v2, p0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_3d

    .line 968
    :cond_74
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 976
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v2, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v2, v2, Lcom/bzbs/bean/BadgeAlert;->id:Ljava/lang/String;

    iget-object v3, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, v3, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v4, v4, Lcom/bzbs/bean/BadgeAlert;->description:Ljava/lang/String;

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v5, v0, Lcom/bzbs/bean/BadgeAlert;->CustomInfo:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogNotiBadge;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 977
    :cond_96
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "welcome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 978
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_3d

    .line 979
    :cond_a7
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "term"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 980
    invoke-virtual {p0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;)V

    goto :goto_3d

    .line 981
    :cond_b6
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 982
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 984
    :cond_c8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto/16 :goto_3d

    .line 987
    :cond_cd
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 988
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->v()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_d3} :catch_4f

    goto/16 :goto_3d
.end method

.method public h()V
    .registers 10

    .prologue
    const v8, 0x7f090287

    const/4 v1, 0x1

    .line 1683
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1684
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v3, "###,###,###"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->D(Landroid/content/Context;)J

    move-result-wide v4

    .line 1687
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 1688
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 1689
    if-eqz v6, :cond_f8

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f8

    .line 1690
    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c1

    .line 1691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</big></font> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090289

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1720
    :goto_75
    const/4 v0, 0x0

    .line 1721
    :try_start_76
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->s(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)J

    move-result-wide v6

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8e

    move v0, v1

    .line 1724
    :cond_8e
    if-ne v0, v1, :cond_104

    .line 1727
    const v0, 0x7f10018e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    const v0, 0x7f10018f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->E(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c0} :catch_11d

    .line 1737
    :goto_c0
    return-void

    .line 1696
    :cond_c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</big></font> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090288

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 1702
    :cond_f8
    const v3, 0x7f09028d

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_75

    .line 1731
    :cond_104
    const v0, 0x7f10018e

    :try_start_107
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    const v0, 0x7f10018f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_11c} :catch_11d

    goto :goto_c0

    .line 1734
    :catch_11d
    move-exception v0

    goto :goto_c0
.end method

.method public i()V
    .registers 6

    .prologue
    .line 1802
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1803
    if-eqz v0, :cond_7d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me/updated_points"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1805
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPoints="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1807
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1808
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1809
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1810
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1811
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1812
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$21;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 1813
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1860
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1870
    :goto_7c
    return-void

    .line 1862
    :cond_7d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$22;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$22;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7c
.end method

.method public j()V
    .registers 3

    .prologue
    .line 2986
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2987
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2988
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 501
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 503
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    if-ne v0, v1, :cond_1a

    .line 1356
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 1377
    :cond_19
    :goto_19
    return v2

    .line 1357
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    if-ne v0, v1, :cond_32

    .line 1358
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1359
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    if-ne v0, v1, :cond_4b

    .line 1360
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1361
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    if-ne v0, v1, :cond_64

    .line 1362
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1363
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    if-ne v0, v1, :cond_7d

    .line 1364
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1365
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    if-ne v0, v1, :cond_96

    .line 1366
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1367
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    if-ne v0, v1, :cond_b0

    .line 1368
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1369
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    if-ne v0, v1, :cond_ca

    .line 1370
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1371
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    if-ne v0, v1, :cond_e5

    .line 1372
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1373
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    if-ne v0, v1, :cond_19

    .line 1374
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const v7, 0x7f10018d

    const v6, 0x7f10018a

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 152
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_25d

    .line 158
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 162
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setContentView(I)V

    .line 163
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setTheme(I)V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    .line 166
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 167
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    .line 170
    :try_start_5c
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    .line 171
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_75} :catch_25a

    .line 177
    :goto_75
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->l()V

    .line 179
    if-nez p1, :cond_217

    .line 195
    :goto_7a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->t()V

    .line 198
    :try_start_7d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 199
    if-eqz v0, :cond_94

    .line 200
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    :cond_94
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9e} :catch_257

    .line 303
    :goto_9e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 304
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :goto_bd
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d5

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 325
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 328
    :cond_d5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 329
    if-ne v0, v4, :cond_1e4

    .line 330
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1e4

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e4

    .line 333
    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 334
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "category_noti"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 336
    const-string/jumbo v3, "Push Notification"

    const-string/jumbo v4, "Click Category"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_138
    const-string/jumbo v1, "dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 340
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    const-string/jumbo v3, "Push Notification"

    const-string/jumbo v4, "Click Dashboard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_178
    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 346
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Badge"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_18a
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 350
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_19c
    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 354
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Resume"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_1ae
    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 358
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg Beacon"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1c0
    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 362
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Wallet Paid Success"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_1d2
    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 366
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Click Wallet Refund Success"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_1e4
    const v0, 0x7f100185

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 372
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1fb

    .line 373
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 397
    :cond_1fb
    :try_start_1fb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz v0, :cond_22c

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_213} :catch_255

    move-result v0

    if-nez v0, :cond_22c

    .line 414
    :cond_216
    :goto_216
    return-void

    .line 182
    :cond_217
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_7a

    .line 307
    :cond_21c
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_bd

    .line 401
    :cond_22c
    if-eqz v1, :cond_237

    :try_start_22e
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 404
    :cond_237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_216

    .line 405
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 406
    if-eqz v0, :cond_216

    .line 407
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_254} :catch_255

    goto :goto_216

    .line 411
    :catch_255
    move-exception v0

    goto :goto_216

    .line 299
    :catch_257
    move-exception v0

    goto/16 :goto_9e

    .line 173
    :catch_25a
    move-exception v0

    goto/16 :goto_75

    .line 154
    :catch_25d
    move-exception v0

    goto/16 :goto_21
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1317
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1318
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 1319
    const v0, 0x7f09024f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1320
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 1321
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1323
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 1324
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1326
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 1327
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1329
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 1330
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1332
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 1333
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1335
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 1336
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1338
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 1339
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1341
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 1342
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1344
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 1345
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1347
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 1348
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1351
    :cond_14d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 533
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3d

    .line 540
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from_noti"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 541
    if-ne v0, v1, :cond_17

    .line 544
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 560
    :goto_16
    return v0

    .line 546
    :cond_17
    const v0, 0x7f100191

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 547
    if-eqz v0, :cond_38

    .line 548
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_33

    .line 549
    const-string/jumbo v0, "Do you want to exit?"

    const-string/jumbo v2, "Click \"Yes\" to exit."

    invoke-direct {p0, v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 550
    goto :goto_16

    .line 552
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j()V

    move v0, v1

    .line 553
    goto :goto_16

    .line 556
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16

    .line 560
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 907
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 911
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_18

    .line 916
    :goto_8
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->b(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 917
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->C:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->b(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 918
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->D:Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;

    invoke-static {v0}, Lcom/bzbs/event/ResumeEvents;->b(Lcom/bzbs/event/ResumeEvents$ResumeListener;)V

    .line 919
    return-void

    .line 912
    :catch_18
    move-exception v0

    goto :goto_8
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 421
    sparse-switch p1, :sswitch_data_30

    .line 441
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 443
    :goto_7
    return-void

    .line 423
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_12

    .line 425
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_7

    .line 428
    :cond_12
    const v0, 0x7f09026e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 432
    :sswitch_1d
    aget v0, p3, v1

    if-nez v0, :cond_25

    .line 434
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->p()V

    goto :goto_7

    .line 437
    :cond_25
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 421
    :sswitch_data_30
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1d
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 518
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 519
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 609
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 611
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 613
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 614
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 615
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    const v0, 0x7f100191

    :try_start_37
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 619
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_3ba

    .line 623
    :goto_47
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 625
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 903
    :goto_4d
    return-void

    .line 629
    :cond_4e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 630
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 631
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 632
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 634
    const v0, 0x7f100191

    :try_start_80
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 635
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_90} :catch_3b7

    .line 639
    :goto_90
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 641
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_4d

    .line 646
    :cond_97
    sput-object p0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    .line 648
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    .line 649
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 651
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->C:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    .line 652
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->C:Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 654
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->D:Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;

    .line 655
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->D:Lcom/samsung/privilege/activity/MainPagerActivity$ResumeListener;

    invoke-static {v0}, Lcom/bzbs/event/ResumeEvents;->a(Lcom/bzbs/event/ResumeEvents$ResumeListener;)V

    .line 657
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 658
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 659
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 660
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f()V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_e2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    .line 664
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;)V

    .line 669
    :cond_e2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 671
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 672
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Z)Z

    .line 674
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 677
    :cond_fb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_15b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 679
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v3, v3}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;ZZ)V

    .line 698
    :goto_113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_14d

    .line 699
    const-string/jumbo v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 702
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_3c3

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c3

    move v0, v2

    .line 707
    :goto_13e
    if-nez v0, :cond_161

    .line 708
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "nfc"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_14d
    :goto_14d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$8;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 695
    :cond_15b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_113

    .line 710
    :cond_161
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/NfcUtils;->a(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 711
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 712
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 714
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    if-nez v0, :cond_14d

    .line 715
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 717
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 721
    :try_start_185
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_18c} :catch_1b0

    move-result v0

    if-eqz v0, :cond_3c0

    move v0, v2

    :goto_190
    move v4, v0

    .line 729
    :goto_191
    :try_start_191
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v3

    .line 730
    :goto_197
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_191 .. :try_end_19a} :catch_1fa

    move-result v0

    if-ge v1, v0, :cond_214

    .line 732
    :try_start_19d
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 733
    new-instance v9, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v10, "nfc"

    invoke-direct {v9, v10, v0}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1ac
    .catch Lorg/json/JSONException; {:try_start_19d .. :try_end_1ac} :catch_1d0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1ac} :catch_1fa

    .line 730
    :goto_1ac
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_197

    .line 724
    :catch_1b0
    move-exception v0

    .line 725
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception := "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_191

    .line 734
    :catch_1d0
    move-exception v0

    .line 735
    if-ne v4, v2, :cond_2a5

    .line 736
    :try_start_1d3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid NFC Action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f9} :catch_1fa

    goto :goto_1ac

    .line 742
    :catch_1fa
    move-exception v0

    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid NFC Task:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_214
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2be

    .line 748
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "api/nfc"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 751
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CheckNFC="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 755
    const-string/jumbo v5, "nfc_token"

    invoke-virtual {v4, v5, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 757
    const-string/jumbo v0, ""

    const v5, 0x7f090283

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 758
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 759
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 760
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 761
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 762
    invoke-virtual {v0, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 764
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 765
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_14d

    .line 738
    :cond_2a5
    :try_start_2a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid NFC Action:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V
    :try_end_2bc
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2bc} :catch_1fa

    goto/16 :goto_1ac

    :cond_2be
    move v4, v3

    .line 827
    :goto_2bf
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_14d

    .line 828
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    .line 831
    if-lez v4, :cond_3bd

    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ReDeem"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bd

    .line 832
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 833
    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Share"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3bd

    move v1, v2

    .line 838
    :goto_2fc
    if-nez v1, :cond_316

    .line 839
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Status"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31a

    .line 840
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 827
    :cond_316
    :goto_316
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2bf

    .line 841
    :cond_31a
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Share"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_353

    .line 844
    add-int/lit8 v1, v4, 0x1

    :try_start_32f
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 845
    iget-object v6, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ReDeem"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_345
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_345} :catch_350

    move-result v6

    if-eqz v6, :cond_34e

    .line 853
    :goto_348
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v6}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_316

    :cond_34e
    move-object v1, v5

    .line 848
    goto :goto_348

    .line 850
    :catch_350
    move-exception v1

    move-object v1, v5

    .line 851
    goto :goto_348

    .line 854
    :cond_353
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "CheckIn"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36c

    .line 855
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_316

    .line 856
    :cond_36c
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ReDeem"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39a

    .line 858
    add-int/lit8 v1, v4, 0x1

    :try_start_381
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_395

    .line 859
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 860
    if-eqz v1, :cond_395

    .line 861
    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_395
    .catch Ljava/lang/Exception; {:try_start_381 .. :try_end_395} :catch_3b5

    .line 867
    :cond_395
    :goto_395
    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_14d

    .line 872
    :cond_39a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid NFC ActionName:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V

    goto/16 :goto_316

    .line 864
    :catch_3b5
    move-exception v1

    goto :goto_395

    .line 636
    :catch_3b7
    move-exception v0

    goto/16 :goto_90

    .line 620
    :catch_3ba
    move-exception v0

    goto/16 :goto_47

    :cond_3bd
    move v1, v3

    goto/16 :goto_2fc

    :cond_3c0
    move v0, v3

    goto/16 :goto_190

    :cond_3c3
    move v0, v3

    goto/16 :goto_13e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 507
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 508
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    const-string/jumbo v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    const-string/jumbo v0, "gCurrentLanguage"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string/jumbo v0, "gCurrentCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method
