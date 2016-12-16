.class public Lcom/samsung/privilege/activity/MainPagerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# instance fields
.field private A:I

.field private B:J

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

    .line 114
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 116
    const-class v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    .line 130
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 133
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->b:I

    .line 134
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->c:I

    .line 398
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->p:I

    .line 399
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->q:I

    .line 920
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 1299
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    .line 1300
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    .line 1301
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    .line 1302
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    .line 1303
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    .line 1304
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    .line 1305
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    .line 1306
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    .line 1307
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    .line 1308
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    .line 1943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;I)I
    .registers 2

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 507
    const-string/jumbo v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 508
    const-string/jumbo v0, "gCurrentLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 509
    const-string/jumbo v0, "gCurrentCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 511
    :cond_2c
    return-void
.end method

.method private a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 9

    .prologue
    const v5, 0x7f09024a

    .line 1376
    const-string/jumbo v0, ""

    .line 1377
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 1378
    if-eqz v1, :cond_10

    .line 1379
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1382
    :cond_10
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1383
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=checkin"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    if-eqz v0, :cond_48

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1385
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 1428
    :goto_47
    return-void

    .line 1387
    :cond_48
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1389
    :cond_52
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1390
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=post"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    if-eqz v0, :cond_8a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1392
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

    .line 1394
    :cond_8a
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1396
    :cond_94
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1397
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=share"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    new-instance v2, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, p2, v3}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 1399
    const/4 v1, 0x0

    .line 1400
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v3, :cond_cf

    .line 1401
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v3, v3, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v4, "ReDeem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1402
    iget-object v1, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 1405
    :cond_cf
    if-eqz v0, :cond_e1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1406
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v2, v1, p0, v0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_47

    .line 1408
    :cond_e1
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1410
    :cond_ec
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1411
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=openapp"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1413
    :cond_118
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1414
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=link"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1416
    :cond_144
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1417
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=video"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1419
    :cond_170
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 1420
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=campaign"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1422
    :cond_19c
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 1423
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=redeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1426
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
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 549
    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 551
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

    .line 576
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 581
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 587
    :cond_35
    :goto_35
    return-void

    .line 583
    :catch_36
    move-exception v0

    .line 584
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
    .registers 12

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2335
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2397
    :try_start_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v3

    .line 2398
    :goto_d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_de

    move-result v2

    if-ge v0, v2, :cond_df

    .line 2400
    :try_start_13
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2401
    new-instance v4, Lcom/bzbs/bean/CampaignCategory;

    const-string/jumbo v7, "name"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/bzbs/bean/CampaignCategory;-><init>(Ljava/lang/String;)V

    .line 2402
    const-string/jumbo v7, "id"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 2403
    const-string/jumbo v7, "mode"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 2404
    const-string/jumbo v7, "tags"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 2405
    const-string/jumbo v7, "name_en"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 2406
    const-string/jumbo v7, "name_th"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 2407
    const-string/jumbo v7, "id"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 2408
    const-string/jumbo v7, "count"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 2409
    const-string/jumbo v7, "dashboard_key"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 2410
    const-string/jumbo v7, "list_config"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 2412
    const-string/jumbo v7, "image_url_active"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 2413
    const-string/jumbo v7, "image_url_inactive"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 2415
    const-string/jumbo v7, "firstpage"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v4, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 2416
    const-string/jumbo v7, "selected"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v4, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 2418
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/bzbs/bean/CampaignCategory;->cat:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "=false]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v2, v5, :cond_cf

    .line 2398
    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2422
    :cond_cf
    iget-boolean v2, v4, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    if-ne v2, v5, :cond_da

    .line 2423
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_cb

    .line 2428
    :catch_d8
    move-exception v2

    goto :goto_cb

    .line 2425
    :cond_da
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_dd} :catch_d8

    goto :goto_cb

    .line 2432
    :catch_de
    move-exception v0

    .line 2442
    :cond_df
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->a(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v7

    move v2, v3

    move v4, v3

    .line 2445
    :goto_e5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_125

    .line 2446
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignCategory;

    .line 2447
    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    if-eqz v1, :cond_117

    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 2449
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v8, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v7, v1, v8}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    .line 2453
    :goto_10d
    iget-boolean v0, v0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    if-ne v0, v5, :cond_1e6

    move v1, v2

    .line 2445
    :goto_112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_e5

    .line 2451
    :cond_117
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v8, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v7, v1, v8}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    goto :goto_10d

    .line 2458
    :cond_125
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v7}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v6}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    .line 2460
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2461
    sget-boolean v1, Lcom/bzbs/data/AppSetting;->ac:Z

    if-ne v1, v5, :cond_1d4

    .line 2462
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2466
    :goto_14a
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 2468
    const v1, 0x7f100189

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 2470
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2471
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2472
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2473
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2474
    div-int/lit8 v7, v2, 0x3

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v7, v3, v2, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 2475
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$37;

    invoke-direct {v2, p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity$37;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 2536
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$38;

    invoke-direct {v2, p0, v6, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$38;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2604
    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 2609
    :try_start_186
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2610
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2611
    if-eqz v0, :cond_1a0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    .line 2612
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_19f} :catch_1da

    move v3, v5

    :cond_1a0
    move v0, v3

    .line 2620
    :goto_1a1
    :try_start_1a1
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2621
    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2622
    if-eqz v1, :cond_1bb

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 2623
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Ljava/lang/String;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ba} :catch_1e2

    move v0, v5

    .line 2631
    :cond_1bb
    :goto_1bb
    :try_start_1bb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2632
    const-string/jumbo v2, "current_tab"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2633
    if-ltz v1, :cond_1e4

    .line 2634
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1cc} :catch_1dd

    .line 2642
    :goto_1cc
    if-nez v5, :cond_1d3

    .line 2643
    if-lez v4, :cond_1d3

    .line 2644
    :try_start_1d0
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d3} :catch_1e0

    .line 2651
    :cond_1d3
    :goto_1d3
    return-void

    .line 2464
    :cond_1d4
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto/16 :goto_14a

    .line 2615
    :catch_1da
    move-exception v0

    move v0, v3

    goto :goto_1a1

    .line 2637
    :catch_1dd
    move-exception v1

    move v5, v0

    goto :goto_1cc

    .line 2647
    :catch_1e0
    move-exception v0

    goto :goto_1d3

    .line 2626
    :catch_1e2
    move-exception v1

    goto :goto_1bb

    :cond_1e4
    move v5, v0

    goto :goto_1cc

    :cond_1e6
    move v1, v4

    goto/16 :goto_112
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2196
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2198
    const v0, 0x7f040116

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2200
    const v0, 0x7f1005ac

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2201
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$32;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$32;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2211
    const v0, 0x7f1005ae

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2212
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$33;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$33;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2218
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2219
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2220
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2222
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2223
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 450
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 451
    const v0, 0x7f040117

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 453
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    const v0, 0x7f10016d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 457
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 465
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 466
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 468
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 469
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1883
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1885
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1886
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-ne v0, v5, :cond_af

    .line 1887
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1889
    if-eqz v0, :cond_ab

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1890
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

    .line 1891
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

    .line 1893
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1895
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1897
    const-string/jumbo v2, ""

    const v3, 0x7f090282

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 1898
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1899
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1900
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1901
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1902
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1903
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1904
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$25;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 1905
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1934
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1941
    :goto_aa
    return-void

    .line 1936
    :cond_ab
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    goto :goto_aa

    .line 1939
    :cond_af
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    goto :goto_aa
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/MainPagerActivity;)Z
    .registers 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/MainPagerActivity;)I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return v0
.end method

.method private k()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1432
    .line 1433
    :try_start_1
    const-string v2, "SM-G935F"

    .line 1434
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 1435
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 1440
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1441
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v4

    if-eqz v4, :cond_23

    .line 1442
    const/4 v0, 0x1

    .line 1449
    :cond_22
    :goto_22
    return v0

    .line 1435
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1448
    :catch_26
    move-exception v1

    goto :goto_22
.end method

.method private l()V
    .registers 3

    .prologue
    .line 1595
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1597
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1598
    const v0, 0x7f1006b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1599
    const v0, 0x7f1006b7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1601
    const v0, 0x7f1006ba

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1602
    const v0, 0x7f1006bd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1603
    const v0, 0x7f1006c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1604
    const v0, 0x7f1006c3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1605
    const v0, 0x7f1006c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1606
    const v0, 0x7f1006c7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1607
    const v0, 0x7f1006c9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1608
    const v0, 0x7f1006cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1609
    const v0, 0x7f1006cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1610
    return-void
.end method

.method private m()V
    .registers 8

    .prologue
    const v6, 0x7f1006bb

    const v5, 0x7f1006b7

    const v4, 0x7f1000b6

    const/16 v3, 0x8

    .line 1637
    const v0, 0x7f1006cf

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1638
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1639
    if-eqz v1, :cond_156

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 1640
    const v1, 0x7f0901e7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    :goto_31
    const v0, 0x7f1006b8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1646
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1647
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1656
    :goto_54
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1657
    const v0, 0x7f1006cc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    const v0, 0x7f1006cd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1662
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Thailand"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    :goto_8b
    const v0, 0x7f1006b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1673
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 1674
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1675
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1689
    :cond_d0
    :goto_d0
    const v0, 0x7f1006bd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e9

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1690
    const v0, 0x7f1006c0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09020f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    const v0, 0x7f1006c3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    const v0, 0x7f1006c5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1693
    const v0, 0x7f1006c7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901eb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    const v0, 0x7f1006c9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1695
    const v0, 0x7f1006cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1696
    return-void

    .line 1642
    :cond_156
    const v1, 0x7f0901e6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31

    .line 1651
    :cond_162
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_54

    .line 1663
    :cond_16b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 1664
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Laos"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1665
    :cond_18a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1666
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Myanmar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1668
    :cond_1a9
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1677
    :cond_1b7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 1678
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1680
    :cond_1da
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1681
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1685
    :cond_1fd
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0
.end method

.method private n()V
    .registers 4

    .prologue
    .line 1771
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1772
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1774
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1775
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1776
    const-string/jumbo v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1777
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1778
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1779
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1780
    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1781
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1782
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1784
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1785
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1789
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 1793
    :goto_5e
    return-void

    .line 1790
    :catch_5f
    move-exception v0

    goto :goto_5e
.end method

.method private o()V
    .registers 4

    .prologue
    .line 2064
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2065
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2066
    return-void
.end method

.method private p()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2226
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$34;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$34;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private q()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2236
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$35;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$35;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private r()V
    .registers 5

    .prologue
    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_category_gift_"

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

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2248
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 2250
    const/4 v2, 0x0

    :try_start_41
    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_5a

    .line 2255
    :goto_44
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 2256
    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    .line 2257
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()V

    .line 2262
    :cond_55
    :goto_55
    return-void

    .line 2260
    :cond_56
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()V

    goto :goto_55

    .line 2251
    :catch_5a
    move-exception v1

    goto :goto_44
.end method

.method private s()V
    .registers 6

    .prologue
    .line 2266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/campaigncat/menu?config=menu_gift&device_app_id="

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

    .line 2267
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadCampaignCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2269
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2270
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2271
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2272
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2273
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2274
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$36;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$36;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 2275
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2331
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2332
    return-void
.end method

.method private t()V
    .registers 8

    .prologue
    .line 2826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1b

    .line 2827
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 2829
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2831
    if-eqz v0, :cond_1b

    .line 2832
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2868
    :cond_1b
    :goto_1b
    return-void

    .line 2835
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2836
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)Z

    .line 2838
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$39;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$39;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2855
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2857
    const-string/jumbo v0, ""

    .line 2859
    const v3, 0x7f090250

    :try_start_3e
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_58

    move-result-object v0

    .line 2863
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

    .line 2860
    :catch_58
    move-exception v3

    .line 2861
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
    .line 2813
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-lez v0, :cond_14

    .line 2814
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2815
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2817
    :cond_14
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 999
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1000
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v8, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1001
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1002
    const v0, 0x7f04012f

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1004
    const v0, 0x7f1001ea

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 1005
    const v1, 0x7f100636

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 1006
    const v1, 0x7f100637

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 1009
    :try_start_38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1010
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 1012
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    .line 1013
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 1018
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 1019
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 1022
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_9c

    .line 1027
    :goto_75
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$10;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$10;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$11;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$11;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1046
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1047
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1049
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1051
    :cond_9b
    return-void

    .line 1023
    :catch_9c
    move-exception v0

    goto :goto_75
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 971
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 972
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 974
    const v0, 0x7f040117

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 976
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 978
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    const v0, 0x7f10016d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 981
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$9;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 991
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 992
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 994
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 996
    :cond_4a
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11

    .prologue
    .line 1054
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_75

    .line 1055
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1057
    const v0, 0x7f040115

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1059
    const v0, 0x7f100169

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1060
    const v1, 0x7f1005a9

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1061
    const v1, 0x7f100570

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1062
    const v4, 0x7f1005aa

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    .line 1064
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4c

    .line 1067
    const v0, 0x7f09034e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    :cond_4c
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/MainPagerActivity$12;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$13;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$13;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1092
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1093
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1094
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1096
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1098
    :cond_75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    .line 1554
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    .line 1556
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 1557
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 1558
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 1560
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    .line 1562
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 1564
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1566
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$19;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1591
    return-void
.end method

.method public a_()V
    .registers 5

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$18;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1476
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 1143
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1144
    new-instance v3, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v3, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1146
    const v0, 0x7f04011e

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1148
    const v0, 0x7f100169

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1149
    const v1, 0x7f100570

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1150
    const v2, 0x7f1005ab

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1152
    const v4, 0x7f09035d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    const v0, 0x7f09034b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    const v0, 0x7f090357

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    const v0, 0x7f10056f

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1157
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$16;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    const v0, 0x7f1005ae

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1201
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$17;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$17;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1240
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1241
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1242
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1244
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1246
    :cond_88
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1101
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1102
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1104
    const v0, 0x7f04011e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1106
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1108
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1110
    const v0, 0x7f10056f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1111
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$14;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$14;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    const v0, 0x7f1005ae

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1125
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$15;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1135
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1136
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1138
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1140
    :cond_5b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2768
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 2770
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2771
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2772
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2773
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    .line 2781
    :cond_2d
    return-void

    .line 2777
    :catch_2e
    move-exception v0

    .line 2768
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public b_()V
    .registers 1

    .prologue
    .line 1481
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2784
    move v1, v2

    .line 2785
    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 2787
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2788
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "dashboard_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2789
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2790
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_65

    .line 2792
    const/4 v2, 0x1

    .line 2800
    :cond_2e
    if-nez v2, :cond_64

    .line 2801
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2803
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2804
    const-string/jumbo v2, "header_en"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2805
    const-string/jumbo v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2806
    const-string/jumbo v0, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2807
    const-string/jumbo v0, "dashboard_key"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2808
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2810
    :cond_64
    return-void

    .line 2796
    :catch_65
    move-exception v0

    .line 2785
    :cond_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public doAboutUs(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$31;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$31;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2160
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click About Us"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    return-void
.end method

.method public doChangeLanguage(Landroid/view/View;)V
    .registers 10

    .prologue
    const v7, 0x7f10059b

    const v6, 0x7f100596

    const v5, 0x7f02037b

    const v4, 0x7f020285

    const/16 v3, 0x8

    .line 1796
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1797
    const v0, 0x7f040113

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1800
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 1801
    const v0, 0x7f100594

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1802
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1803
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1804
    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1817
    :cond_59
    :goto_59
    const v0, 0x7f100595

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1818
    const v0, 0x7f10059a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1819
    const v0, 0x7f10059f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1820
    const v0, 0x7f1005a4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1821
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1033"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1822
    const v0, 0x7f100595

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1831
    :cond_a6
    :goto_a6
    const v0, 0x7f100591

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$21;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1842
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$22;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$22;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1853
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$23;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$23;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1864
    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$24;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$24;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1875
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1876
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1877
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1879
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1880
    return-void

    .line 1805
    :cond_f3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 1806
    const v0, 0x7f100594

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901ae

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1807
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1808
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1810
    :cond_132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1811
    const v0, 0x7f100594

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901af

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    const v0, 0x7f1005a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1823
    :cond_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1054"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 1824
    const v0, 0x7f10059a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1825
    :cond_190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1826
    const v0, 0x7f10059f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1827
    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1109"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1828
    const v0, 0x7f1005a4

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6
.end method

.method public doHistory(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2101
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2102
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2124
    :goto_10
    return-void

    .line 2104
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2105
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$29;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2122
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click History"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2119
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
    .line 2164
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2166
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log Out"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_25
    return-void

    .line 2172
    :cond_26
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "menu"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2174
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public doLuckyDraw(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2002
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2004
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WinnerCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2005
    const-string/jumbo v1, "header_en"

    const v2, 0x7f09020f

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2006
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    const-string/jumbo v1, "list_config"

    sget-object v2, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2008
    const-string/jumbo v1, "cat"

    sget v2, Lcom/bzbs/data/AppSetting;->L:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2011
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Winner"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    return-void
.end method

.method public doMarketPlace(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1995
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1996
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1998
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Marketplace"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    return-void
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1755
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1756
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1757
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1758
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1767
    :goto_1a
    return-void

    .line 1762
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1764
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->p()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1766
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Menu Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doMyAccount(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2078
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2079
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2098
    :goto_10
    return-void

    .line 2081
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2082
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2083
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2085
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$28;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2096
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click My Account Settings"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2093
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
    .line 1945
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1946
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1947
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1948
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1973
    :goto_1a
    return-void

    .line 1952
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1954
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1955
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 1957
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    if-eqz v0, :cond_6c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1959
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1961
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$26;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$26;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1971
    :goto_62
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Notifications Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1968
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
    .line 2179
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2180
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2187
    :goto_13
    return-void

    .line 2183
    :cond_14
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "point_caption"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click You Are Not Logged In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public doPointQuestion(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogMyPoint;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2192
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click My Points"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    return-void
.end method

.method public doRequestHelp(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2127
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2128
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2147
    :goto_10
    return-void

    .line 2130
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$30;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$30;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2145
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Request Help"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2142
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
    .line 2015
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2016
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2061
    :goto_10
    return-void

    .line 2018
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2019
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2020
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2022
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$27;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2059
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Scan QR Code"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2056
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
    .line 1976
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1977
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1978
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1979
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1988
    :goto_1a
    return-void

    .line 1983
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1985
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1987
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Search Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doSpecialDeal(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1992
    return-void
.end method

.method public f()V
    .registers 5

    .prologue
    .line 898
    const v0, 0x7f100186

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 899
    const v1, 0x7f100187

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 901
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_28

    .line 902
    const-string/jumbo v2, " 0 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 918
    :goto_27
    return-void

    .line 907
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_41

    .line 909
    const-string/jumbo v2, "9+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_27

    .line 915
    :catch_3f
    move-exception v0

    goto :goto_27

    .line 912
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->Q(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_3f

    goto :goto_27
.end method

.method public g()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 923
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    if-nez v0, :cond_3d

    .line 924
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 927
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_ba

    .line 930
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 931
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 932
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 933
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 968
    :cond_3d
    :goto_3d
    return-void

    .line 934
    :cond_3e
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 935
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_3d

    .line 964
    :catch_4f
    move-exception v0

    .line 965
    iput-boolean v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto :goto_3d

    .line 937
    :cond_53
    :try_start_53
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 940
    :cond_59
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 942
    :cond_5f
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 943
    iget v1, v0, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v1, v0, v2, p0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_3d

    .line 944
    :cond_74
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 952
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

    .line 953
    :cond_96
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "welcome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 954
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_3d

    .line 955
    :cond_a7
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v1, "term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 956
    invoke-virtual {p0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;)V

    goto :goto_3d

    .line 958
    :cond_b6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto :goto_3d

    .line 961
    :cond_ba
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 962
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->t()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_c0} :catch_4f

    goto/16 :goto_3d
.end method

.method public h()V
    .registers 8

    .prologue
    const v6, 0x7f090286

    .line 1613
    const v0, 0x7f10018a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1614
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v2

    .line 1617
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1618
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1619
    if-eqz v4, :cond_ab

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 1620
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_75

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090288

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1634
    :goto_74
    return-void

    .line 1626
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</big></font> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090287

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 1632
    :cond_ab
    const v1, 0x7f09028c

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74
.end method

.method public i()V
    .registers 6

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    if-eqz v0, :cond_7c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1702
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

    .line 1703
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

    .line 1704
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1705
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1706
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1707
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1708
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1710
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$20;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$20;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 1711
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1750
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1752
    :cond_7c
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 2820
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2821
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2822
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 483
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 485
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1350
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    if-ne v0, v1, :cond_1a

    .line 1351
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 1372
    :cond_19
    :goto_19
    return v2

    .line 1352
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    if-ne v0, v1, :cond_32

    .line 1353
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1354
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    if-ne v0, v1, :cond_4b

    .line 1355
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1356
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    if-ne v0, v1, :cond_64

    .line 1357
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1358
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    if-ne v0, v1, :cond_7d

    .line 1359
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1360
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    if-ne v0, v1, :cond_96

    .line 1361
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1362
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    if-ne v0, v1, :cond_b0

    .line 1363
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1364
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    if-ne v0, v1, :cond_ca

    .line 1365
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1366
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    if-ne v0, v1, :cond_e5

    .line 1367
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1368
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    if-ne v0, v1, :cond_19

    .line 1369
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
    const v7, 0x7f10018b

    const v6, 0x7f100188

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 148
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_24b

    .line 154
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 158
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setContentView(I)V

    .line 159
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setTheme(I)V

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    .line 162
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 163
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    .line 166
    :try_start_5c
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_75} :catch_248

    .line 173
    :goto_75
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->l()V

    .line 175
    if-nez p1, :cond_205

    .line 191
    :goto_7a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    .line 194
    :try_start_7d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 195
    if-eqz v0, :cond_94

    .line 196
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 284
    :cond_94
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9e} :catch_245

    .line 289
    :goto_9e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 290
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_bd
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d5

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    :cond_d5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    if-ne v0, v4, :cond_1d2

    .line 316
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1d2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 319
    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 320
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "category_noti"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
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

    .line 325
    :cond_138
    const-string/jumbo v1, "dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 326
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
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

    .line 331
    :cond_178
    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 332
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Badge"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_18a
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 336
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_19c
    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 340
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg Beacon"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1ae
    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 344
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Wallet Paid Success"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_1c0
    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 348
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Click Wallet Refund Success"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1d2
    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 354
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1e9

    .line 355
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 379
    :cond_1e9
    :try_start_1e9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 381
    if-eqz v0, :cond_21a

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_201} :catch_243

    move-result v0

    if-nez v0, :cond_21a

    .line 396
    :cond_204
    :goto_204
    return-void

    .line 178
    :cond_205
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_7a

    .line 293
    :cond_20a
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_bd

    .line 383
    :cond_21a
    if-eqz v1, :cond_225

    :try_start_21c
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 386
    :cond_225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_204

    .line 387
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 388
    if-eqz v0, :cond_204

    .line 389
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_242
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_242} :catch_243

    goto :goto_204

    .line 393
    :catch_243
    move-exception v0

    goto :goto_204

    .line 285
    :catch_245
    move-exception v0

    goto/16 :goto_9e

    .line 169
    :catch_248
    move-exception v0

    goto/16 :goto_75

    .line 150
    :catch_24b
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

    .line 1312
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1313
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 1314
    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1315
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 1316
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

    .line 1318
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 1319
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1321
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 1322
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1324
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 1325
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1327
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 1328
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1330
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 1331
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1333
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 1334
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

    .line 1336
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 1337
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

    .line 1339
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 1340
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

    .line 1342
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 1343
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

    .line 1346
    :cond_14d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 515
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3d

    .line 522
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from_noti"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 523
    if-ne v0, v1, :cond_17

    .line 526
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 542
    :goto_16
    return v0

    .line 528
    :cond_17
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 529
    if-eqz v0, :cond_38

    .line 530
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_33

    .line 531
    const-string/jumbo v0, "Do you want to exit?"

    const-string/jumbo v2, "Click \"Yes\" to exit."

    invoke-direct {p0, v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 532
    goto :goto_16

    .line 534
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j()V

    move v0, v1

    .line 535
    goto :goto_16

    .line 538
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16

    .line 542
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 883
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 887
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_f

    .line 892
    :goto_8
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 893
    invoke-static {}, Lcom/bzbs/event/NotiEvents;->a()V

    .line 894
    return-void

    .line 888
    :catch_f
    move-exception v0

    goto :goto_8
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 403
    sparse-switch p1, :sswitch_data_30

    .line 423
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 425
    :goto_7
    return-void

    .line 405
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_12

    .line 407
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_7

    .line 410
    :cond_12
    const v0, 0x7f09026d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 414
    :sswitch_1d
    aget v0, p3, v1

    if-nez v0, :cond_25

    .line 416
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    goto :goto_7

    .line 419
    :cond_25
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 403
    :sswitch_data_30
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1d
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 501
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 591
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 593
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 596
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 597
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    const v0, 0x7f10018c

    :try_start_37
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 601
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_3a6

    .line 605
    :goto_47
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 607
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 879
    :goto_4d
    return-void

    .line 611
    :cond_4e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 612
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 613
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 616
    const v0, 0x7f10018c

    :try_start_80
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 617
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_90} :catch_3a3

    .line 621
    :goto_90
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 623
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_4d

    .line 628
    :cond_97
    sput-object p0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    .line 630
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 631
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 633
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 634
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 635
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 636
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f()V

    .line 638
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_ce

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 640
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;)V

    .line 645
    :cond_ce
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 647
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 648
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Z)Z

    .line 650
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 653
    :cond_e7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_147

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    .line 655
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v3}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 674
    :goto_ff
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_139

    .line 675
    const-string/jumbo v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 678
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_3af

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3af

    move v0, v2

    .line 683
    :goto_12a
    if-nez v0, :cond_14d

    .line 684
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "nfc"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_139
    :goto_139
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$8;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 671
    :cond_147
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_ff

    .line 686
    :cond_14d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/NfcUtils;->a(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 687
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 688
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 690
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    if-nez v0, :cond_139

    .line 691
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 693
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 697
    :try_start_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->a(Landroid/content/Context;)Z
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_178} :catch_19c

    move-result v0

    if-eqz v0, :cond_3ac

    move v0, v2

    :goto_17c
    move v4, v0

    .line 705
    :goto_17d
    :try_start_17d
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v3

    .line 706
    :goto_183
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_186} :catch_1e6

    move-result v0

    if-ge v1, v0, :cond_200

    .line 708
    :try_start_189
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 709
    new-instance v9, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v10, "nfc"

    invoke-direct {v9, v10, v0}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_198
    .catch Lorg/json/JSONException; {:try_start_189 .. :try_end_198} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_198} :catch_1e6

    .line 706
    :goto_198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_183

    .line 700
    :catch_19c
    move-exception v0

    .line 701
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

    goto :goto_17d

    .line 710
    :catch_1bc
    move-exception v0

    .line 711
    if-ne v4, v2, :cond_291

    .line 712
    :try_start_1bf
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
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1e5} :catch_1e6

    goto :goto_198

    .line 718
    :catch_1e6
    move-exception v0

    .line 719
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

    .line 722
    :cond_200
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2aa

    .line 724
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 726
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

    .line 727
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

    .line 729
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 731
    const-string/jumbo v5, "nfc_token"

    invoke-virtual {v4, v5, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 733
    const-string/jumbo v0, ""

    const v5, 0x7f090282

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 734
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 735
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 736
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 737
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 738
    invoke-virtual {v0, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 740
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 741
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 801
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_139

    .line 714
    :cond_291
    :try_start_291
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
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2a8} :catch_1e6

    goto/16 :goto_198

    :cond_2aa
    move v4, v3

    .line 803
    :goto_2ab
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_139

    .line 804
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    .line 807
    if-lez v4, :cond_3a9

    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ReDeem"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a9

    .line 808
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 809
    iget-object v1, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Share"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a9

    move v1, v2

    .line 814
    :goto_2e8
    if-nez v1, :cond_302

    .line 815
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Status"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_306

    .line 816
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 803
    :cond_302
    :goto_302
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2ab

    .line 817
    :cond_306
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Share"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33f

    .line 820
    add-int/lit8 v1, v4, 0x1

    :try_start_31b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 821
    iget-object v6, v1, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ReDeem"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_331
    .catch Ljava/lang/Exception; {:try_start_31b .. :try_end_331} :catch_33c

    move-result v6

    if-eqz v6, :cond_33a

    .line 829
    :goto_334
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v6}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_302

    :cond_33a
    move-object v1, v5

    .line 824
    goto :goto_334

    .line 826
    :catch_33c
    move-exception v1

    move-object v1, v5

    .line 827
    goto :goto_334

    .line 830
    :cond_33f
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "CheckIn"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_358

    .line 831
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_302

    .line 832
    :cond_358
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "ReDeem"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_386

    .line 834
    add-int/lit8 v1, v4, 0x1

    :try_start_36d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_381

    .line 835
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 836
    if-eqz v1, :cond_381

    .line 837
    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_381} :catch_3a1

    .line 843
    :cond_381
    :goto_381
    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_139

    .line 848
    :cond_386
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

    goto/16 :goto_302

    .line 840
    :catch_3a1
    move-exception v1

    goto :goto_381

    .line 618
    :catch_3a3
    move-exception v0

    goto/16 :goto_90

    .line 602
    :catch_3a6
    move-exception v0

    goto/16 :goto_47

    :cond_3a9
    move v1, v3

    goto/16 :goto_2e8

    :cond_3ac
    move v0, v3

    goto/16 :goto_17c

    :cond_3af
    move v0, v3

    goto/16 :goto_12a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 489
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 493
    const-string/jumbo v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 494
    const-string/jumbo v0, "gCurrentLanguage"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string/jumbo v0, "gCurrentCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method
