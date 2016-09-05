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

    .line 108
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 110
    const-class v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    .line 124
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->b:I

    .line 128
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->c:I

    .line 314
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->p:I

    .line 315
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->q:I

    .line 836
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 1214
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    .line 1215
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    .line 1216
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    .line 1217
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    .line 1218
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    .line 1219
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    .line 1220
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    .line 1221
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    .line 1222
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    .line 1223
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    .line 1857
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;I)I
    .registers 2

    .prologue
    .line 108
    iput p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 423
    const-string/jumbo v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 424
    const-string/jumbo v0, "gCurrentLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 425
    const-string/jumbo v0, "gCurrentCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 427
    :cond_2c
    return-void
.end method

.method private a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 9

    .prologue
    const v5, 0x7f09024a

    .line 1291
    const-string/jumbo v0, ""

    .line 1292
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 1293
    if-eqz v1, :cond_10

    .line 1294
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1297
    :cond_10
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "checkin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1298
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=checkin"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    if-eqz v0, :cond_48

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 1300
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 1343
    :goto_47
    return-void

    .line 1302
    :cond_48
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1304
    :cond_52
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1305
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=post"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    if-eqz v0, :cond_8a

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1307
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

    .line 1309
    :cond_8a
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1311
    :cond_94
    iget-object v1, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 1312
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v2, "NFCType=share"

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    new-instance v2, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, p1, p2, v3}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 1314
    const/4 v1, 0x0

    .line 1315
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v3, :cond_cf

    .line 1316
    iget-object v3, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v3, v3, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v4, "ReDeem"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1317
    iget-object v1, v2, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 1320
    :cond_cf
    if-eqz v0, :cond_e1

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1321
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v2, v1, p0, v0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_47

    .line 1323
    :cond_e1
    sget-object v0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1325
    :cond_ec
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 1326
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=openapp"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1328
    :cond_118
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "link"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 1329
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=link"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1331
    :cond_144
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 1332
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=video"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->c(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1334
    :cond_170
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 1335
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=campaign"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1337
    :cond_19c
    iget-object v0, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "redeem"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c8

    .line 1338
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "NFCType=redeem"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v1, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1341
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
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 465
    :try_start_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 467
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

    .line 492
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 497
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 503
    :cond_35
    :goto_35
    return-void

    .line 499
    :catch_36
    move-exception v0

    .line 500
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

    .line 2249
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2311
    :try_start_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v3

    .line 2312
    :goto_d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_de

    move-result v2

    if-ge v0, v2, :cond_df

    .line 2314
    :try_start_13
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2315
    new-instance v4, Lcom/bzbs/bean/CampaignCategory;

    const-string/jumbo v7, "name"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/bzbs/bean/CampaignCategory;-><init>(Ljava/lang/String;)V

    .line 2316
    const-string/jumbo v7, "id"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 2317
    const-string/jumbo v7, "mode"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 2318
    const-string/jumbo v7, "tags"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 2319
    const-string/jumbo v7, "name_en"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 2320
    const-string/jumbo v7, "name_th"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 2321
    const-string/jumbo v7, "id"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 2322
    const-string/jumbo v7, "count"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 2323
    const-string/jumbo v7, "dashboard_key"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 2324
    const-string/jumbo v7, "list_config"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 2326
    const-string/jumbo v7, "image_url_active"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 2327
    const-string/jumbo v7, "image_url_inactive"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 2329
    const-string/jumbo v7, "firstpage"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, v4, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 2330
    const-string/jumbo v7, "selected"

    invoke-static {v2, v7}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v4, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 2332
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2333
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

    .line 2312
    :goto_cb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d

    .line 2336
    :cond_cf
    iget-boolean v2, v4, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    if-ne v2, v5, :cond_da

    .line 2337
    const/4 v2, 0x0

    invoke-virtual {v6, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_cb

    .line 2342
    :catch_d8
    move-exception v2

    goto :goto_cb

    .line 2339
    :cond_da
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_dd} :catch_d8

    goto :goto_cb

    .line 2346
    :catch_de
    move-exception v0

    .line 2356
    :cond_df
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->a(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v7

    move v2, v3

    move v4, v3

    .line 2359
    :goto_e5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_125

    .line 2360
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignCategory;

    .line 2361
    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    if-eqz v1, :cond_117

    iget-object v1, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 2363
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v8, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v7, v1, v8}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    .line 2367
    :goto_10d
    iget-boolean v0, v0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    if-ne v0, v5, :cond_1e6

    move v1, v2

    .line 2359
    :goto_112
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_e5

    .line 2365
    :cond_117
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignCategory;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    const-class v8, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v7, v1, v8}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    goto :goto_10d

    .line 2372
    :cond_125
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v7}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->a()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v6}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    .line 2374
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2375
    sget-boolean v1, Lcom/bzbs/data/AppSetting;->ac:Z

    if-ne v1, v5, :cond_1d4

    .line 2376
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2380
    :goto_14a
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/PagerAdapter;)V

    .line 2382
    const v1, 0x7f100189

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 2384
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2385
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2386
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2387
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2388
    div-int/lit8 v7, v2, 0x3

    div-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v7, v3, v2, v3}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 2389
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$37;

    invoke-direct {v2, p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity$37;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 2450
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$38;

    invoke-direct {v2, p0, v6, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$38;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    invoke-virtual {v1, v2}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2518
    invoke-virtual {v1, v0}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->a(Landroid/support/v4/view/ViewPager;)V

    .line 2523
    :try_start_186
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2524
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2525
    if-eqz v0, :cond_1a0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a0

    .line 2526
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_19f} :catch_1da

    move v3, v5

    :cond_1a0
    move v0, v3

    .line 2534
    :goto_1a1
    :try_start_1a1
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2535
    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2536
    if-eqz v1, :cond_1bb

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bb

    .line 2537
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->c(Ljava/lang/String;)V
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1ba} :catch_1e2

    move v0, v5

    .line 2545
    :cond_1bb
    :goto_1bb
    :try_start_1bb
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2546
    const-string/jumbo v2, "current_tab"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2547
    if-ltz v1, :cond_1e4

    .line 2548
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1cc} :catch_1dd

    .line 2556
    :goto_1cc
    if-nez v5, :cond_1d3

    .line 2557
    if-lez v4, :cond_1d3

    .line 2558
    :try_start_1d0
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(I)V
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1d3} :catch_1e0

    .line 2565
    :cond_1d3
    :goto_1d3
    return-void

    .line 2378
    :cond_1d4
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto/16 :goto_14a

    .line 2529
    :catch_1da
    move-exception v0

    move v0, v3

    goto :goto_1a1

    .line 2551
    :catch_1dd
    move-exception v1

    move v5, v0

    goto :goto_1cc

    .line 2561
    :catch_1e0
    move-exception v0

    goto :goto_1d3

    .line 2540
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
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2110
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2112
    const v0, 0x7f040113

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 2114
    const v0, 0x7f100589

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2115
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$32;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$32;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2125
    const v0, 0x7f10058b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2126
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$33;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$33;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2133
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2134
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2136
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2137
    return-void
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 366
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 367
    const v0, 0x7f040114

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 369
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const v0, 0x7f10016d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 373
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 381
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 382
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 384
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 385
    return-void
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 1798
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1800
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1801
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->a()Z

    move-result v0

    if-ne v0, v5, :cond_af

    .line 1802
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    if-eqz v0, :cond_ab

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    .line 1805
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

    .line 1806
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

    .line 1808
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1810
    const-string/jumbo v2, "locale"

    invoke-virtual {v1, v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1812
    const-string/jumbo v2, ""

    const v3, 0x7f090280

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 1813
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1814
    invoke-virtual {v2, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1815
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1816
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1817
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1818
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1819
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$25;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$25;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 1820
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1855
    :goto_aa
    return-void

    .line 1850
    :cond_ab
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    goto :goto_aa

    .line 1853
    :cond_af
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    goto :goto_aa
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/MainPagerActivity;)Z
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->n()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/samsung/privilege/activity/MainPagerActivity;)I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    return v0
.end method

.method private k()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1347
    .line 1348
    :try_start_1
    const-string v2, "SM-G935F"

    .line 1349
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    .line 1350
    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 1355
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1356
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v4

    if-eqz v4, :cond_23

    .line 1357
    const/4 v0, 0x1

    .line 1364
    :cond_22
    :goto_22
    return v0

    .line 1350
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1363
    :catch_26
    move-exception v1

    goto :goto_22
.end method

.method private l()V
    .registers 3

    .prologue
    .line 1510
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1512
    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1513
    const v0, 0x7f100687

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1514
    const v0, 0x7f100688

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1516
    const v0, 0x7f10068b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1517
    const v0, 0x7f10068e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1518
    const v0, 0x7f100691

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1519
    const v0, 0x7f100694

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1520
    const v0, 0x7f100696

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1521
    const v0, 0x7f100698

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1522
    const v0, 0x7f10069a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1523
    const v0, 0x7f10069c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1524
    const v0, 0x7f1006a0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1525
    return-void
.end method

.method private m()V
    .registers 8

    .prologue
    const v6, 0x7f10068c

    const v5, 0x7f100688

    const v4, 0x7f1000b6

    const/16 v3, 0x8

    .line 1552
    const v0, 0x7f1006a0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1553
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1554
    if-eqz v1, :cond_156

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    .line 1555
    const v1, 0x7f0901e7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1560
    :goto_31
    const v0, 0x7f100689

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 1562
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    :goto_54
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1572
    const v0, 0x7f10069d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    const v0, 0x7f10069e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1576
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16b

    .line 1577
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Thailand"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    :goto_8b
    const v0, 0x7f100687

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1588
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1033"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 1589
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 1590
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1604
    :cond_d0
    :goto_d0
    const v0, 0x7f10068e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e9

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1605
    const v0, 0x7f100691

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09020f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    const v0, 0x7f100694

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1607
    const v0, 0x7f100696

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901ea

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    const v0, 0x7f100698

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901eb

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    const v0, 0x7f10069a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901f2

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    const v0, 0x7f10069c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1611
    return-void

    .line 1557
    :cond_156
    const v1, 0x7f0901e6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31

    .line 1566
    :cond_162
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_54

    .line 1578
    :cond_16b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 1579
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Laos"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1580
    :cond_18a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 1581
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift Myanmar"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1583
    :cond_1a9
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "Galaxy Gift"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1592
    :cond_1b7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "768830479847872"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 1593
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1595
    :cond_1da
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "517155661760483"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1596
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900f5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1600
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
    .line 1686
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1687
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1689
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1690
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1691
    const-string/jumbo v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1692
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1693
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1694
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1695
    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1696
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1697
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1698
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1699
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1700
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1704
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 1708
    :goto_5e
    return-void

    .line 1705
    :catch_5f
    move-exception v0

    goto :goto_5e
.end method

.method private o()V
    .registers 4

    .prologue
    .line 1978
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1979
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1980
    return-void
.end method

.method private p()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2140
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$34;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$34;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private q()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2150
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$35;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$35;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private r()V
    .registers 5

    .prologue
    .line 2160
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

    .line 2161
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2162
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 2164
    const/4 v2, 0x0

    :try_start_41
    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_5a

    .line 2169
    :goto_44
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    .line 2170
    const-wide/16 v2, 0xe10

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    .line 2171
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()V

    .line 2176
    :cond_55
    :goto_55
    return-void

    .line 2174
    :cond_56
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->s()V

    goto :goto_55

    .line 2165
    :catch_5a
    move-exception v1

    goto :goto_44
.end method

.method private s()V
    .registers 6

    .prologue
    .line 2180
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

    .line 2181
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

    .line 2182
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2183
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 2184
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 2185
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 2186
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2187
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 2188
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$36;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$36;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 2189
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 2245
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 2246
    return-void
.end method

.method private t()V
    .registers 8

    .prologue
    .line 2740
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1b

    .line 2741
    const-string/jumbo v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 2743
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2745
    if-eqz v0, :cond_1b

    .line 2746
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2782
    :cond_1b
    :goto_1b
    return-void

    .line 2749
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->K(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2750
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;Z)Z

    .line 2752
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$39;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$39;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2769
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2771
    const-string/jumbo v0, ""

    .line 2773
    const v3, 0x7f090250

    :try_start_3e
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_58

    move-result-object v0

    .line 2777
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

    .line 2774
    :catch_58
    move-exception v3

    .line 2775
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
    .line 2727
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-lez v0, :cond_14

    .line 2728
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2729
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2731
    :cond_14
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 11

    .prologue
    .line 914
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 915
    new-instance v8, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v8, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 916
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 917
    const v0, 0x7f04012a

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 919
    const v0, 0x7f1001e7

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 920
    const v1, 0x7f10060f

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    .line 921
    const v1, 0x7f100610

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    .line 924
    :try_start_38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 925
    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 927
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v3, v2, [B

    .line 928
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 932
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 933
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 934
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 937
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_75} :catch_9c

    .line 942
    :goto_75
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$10;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$10;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$11;

    invoke-direct {v0, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$11;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 961
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 962
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 964
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 966
    :cond_9b
    return-void

    .line 938
    :catch_9c
    move-exception v0

    goto :goto_75
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 886
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 887
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 889
    const v0, 0x7f040114

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 891
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 893
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    const v0, 0x7f10016d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 896
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$9;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 906
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 907
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 909
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 911
    :cond_4a
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 11

    .prologue
    .line 969
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_75

    .line 970
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 972
    const v0, 0x7f040112

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 974
    const v0, 0x7f100169

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 975
    const v1, 0x7f100586

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 976
    const v1, 0x7f10055f

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 977
    const v4, 0x7f100587

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/widget/ImageView;

    .line 979
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4c

    .line 982
    const v0, 0x7f09032e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :cond_4c
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/MainPagerActivity$12;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$13;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$13;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1008
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1009
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1011
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1013
    :cond_75
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1468
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->i:Landroid/view/View;

    .line 1469
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->j:I

    .line 1471
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 1472
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 1473
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 1475
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    .line 1477
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 1479
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1481
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$19;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1506
    return-void
.end method

.method public a_()V
    .registers 5

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$18;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1391
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 1058
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1059
    new-instance v3, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v3, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1061
    const v0, 0x7f04011b

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1063
    const v0, 0x7f100169

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1064
    const v1, 0x7f10055f

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1065
    const v2, 0x7f100588

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1067
    const v4, 0x7f09033d

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const v0, 0x7f09032c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    const v0, 0x7f090337

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    const v0, 0x7f10055e

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1072
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$16;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    const v0, 0x7f10058b

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1116
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$17;

    invoke-direct {v1, p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$17;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1155
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1156
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1157
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1159
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1161
    :cond_88
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1016
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 1017
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1019
    const v0, 0x7f04011b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1021
    const v0, 0x7f100169

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1023
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1025
    const v0, 0x7f10055e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1026
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$14;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$14;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1039
    const v0, 0x7f10058b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1040
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$15;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1049
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1050
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1051
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1053
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1055
    :cond_5b
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 2682
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 2684
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2685
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2686
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2687
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2e

    .line 2695
    :cond_2d
    return-void

    .line 2691
    :catch_2e
    move-exception v0

    .line 2682
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public b_()V
    .registers 1

    .prologue
    .line 1396
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2698
    move v1, v2

    .line 2699
    :goto_2
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 2701
    :try_start_a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->h:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2702
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "dashboard_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2703
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2704
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_65

    .line 2706
    const/4 v2, 0x1

    .line 2714
    :cond_2e
    if-nez v2, :cond_64

    .line 2715
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2718
    const-string/jumbo v2, "header_en"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2719
    const-string/jumbo v2, "header"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2720
    const-string/jumbo v0, "cat"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2721
    const-string/jumbo v0, "dashboard_key"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2722
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2724
    :cond_64
    return-void

    .line 2710
    :catch_65
    move-exception v0

    .line 2699
    :cond_66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public doAboutUs(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2064
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2066
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$31;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$31;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2074
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click About Us"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    return-void
.end method

.method public doChangeLanguage(Landroid/view/View;)V
    .registers 10

    .prologue
    const v7, 0x7f100578

    const v6, 0x7f100573

    const v5, 0x7f020372

    const v4, 0x7f02027e

    const/16 v3, 0x8

    .line 1711
    new-instance v1, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v1, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1712
    const v0, 0x7f040110

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1715
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 1716
    const v0, 0x7f100571

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901b0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1718
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    const v0, 0x7f10057d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    :cond_59
    :goto_59
    const v0, 0x7f100572

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1733
    const v0, 0x7f100577

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1734
    const v0, 0x7f10057c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1735
    const v0, 0x7f100581

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1736
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1033"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_171

    .line 1737
    const v0, 0x7f100572

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1746
    :cond_a6
    :goto_a6
    const v0, 0x7f10056e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$21;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1757
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$22;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$22;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1768
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$23;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$23;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1779
    const v0, 0x7f10057d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$24;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$24;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1790
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1791
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1792
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1794
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1795
    return-void

    .line 1720
    :cond_f3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 1721
    const v0, 0x7f100571

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901ae

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1722
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1723
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    const v0, 0x7f10057d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1725
    :cond_132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1726
    const v0, 0x7f100571

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0901af

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1727
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    const v0, 0x7f10057d

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1738
    :cond_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1054"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 1739
    const v0, 0x7f100577

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1740
    :cond_190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 1741
    const v0, 0x7f10057c

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1742
    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1109"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1743
    const v0, 0x7f100581

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6
.end method

.method public doHistory(Landroid/view/View;)V
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

    .line 2038
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

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$29;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2036
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click History"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2033
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
    .line 2078
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2079
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 2080
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log Out"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    :goto_25
    return-void

    .line 2086
    :cond_26
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "menu"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Log In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public doLuckyDraw(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1916
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1918
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WinnerCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1919
    const-string/jumbo v1, "header_en"

    const v2, 0x7f09020f

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1920
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1921
    const-string/jumbo v1, "list_config"

    sget-object v2, Lcom/bzbs/data/AppSetting;->K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1922
    const-string/jumbo v1, "cat"

    sget v2, Lcom/bzbs/data/AppSetting;->L:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1923
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1925
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Winner"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    return-void
.end method

.method public doMarketPlace(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1909
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1910
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1912
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Marketplace"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    return-void
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1670
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1671
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1672
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1673
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1682
    :goto_1a
    return-void

    .line 1677
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1679
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->p()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1681
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Menu Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doMyAccount(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1992
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1993
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2012
    :goto_10
    return-void

    .line 1995
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1996
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1997
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1999
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$28;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$28;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2010
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click My Account Settings"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2007
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
    .line 1859
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1860
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1861
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1862
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1887
    :goto_1a
    return-void

    .line 1866
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1868
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1869
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 1871
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    if-eqz v0, :cond_6c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1873
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1875
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$26;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$26;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1885
    :goto_62
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Notifications Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1882
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
    .line 2093
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2094
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2101
    :goto_13
    return-void

    .line 2097
    :cond_14
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "point_caption"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click You Are Not Logged In"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public doPointQuestion(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogMyPoint;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2106
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click My Points"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    return-void
.end method

.method public doRequestHelp(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 2041
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2042
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 2061
    :goto_10
    return-void

    .line 2044
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2045
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 2046
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2048
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$30;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$30;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2059
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Request Help"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 2056
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
    .line 1929
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1930
    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1975
    :goto_10
    return-void

    .line 1932
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1933
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1934
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->q()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$27;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$27;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1973
    :goto_41
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Scan QR Code"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1970
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
    .line 1890
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1891
    iget-wide v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1b

    .line 1892
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    sub-long/2addr v2, v4

    .line 1893
    const-wide/16 v4, 0x7d0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1b

    .line 1902
    :goto_1a
    return-void

    .line 1897
    :cond_1b
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->B:J

    .line 1899
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogSearch;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1901
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Search Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public doSpecialDeal(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1906
    return-void
.end method

.method public f()V
    .registers 5

    .prologue
    .line 814
    const v0, 0x7f100186

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 815
    const v1, 0x7f100187

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 817
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_28

    .line 818
    const-string/jumbo v2, " 0 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 834
    :goto_27
    return-void

    .line 823
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_41

    .line 825
    const-string/jumbo v2, "9+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_27

    .line 831
    :catch_3f
    move-exception v0

    goto :goto_27

    .line 828
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->O(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_3f

    goto :goto_27
.end method

.method public g()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 839
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    if-nez v0, :cond_3d

    .line 840
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 843
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_d8

    .line 846
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 847
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v1, :cond_59

    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 848
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2043"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 849
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 883
    :cond_3d
    :goto_3d
    return-void

    .line 850
    :cond_3e
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v2, "2045"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 851
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_3d

    .line 879
    :catch_4f
    move-exception v0

    .line 880
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto :goto_3d

    .line 853
    :cond_53
    :try_start_53
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 856
    :cond_59
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 858
    :cond_5f
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "point"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 859
    iget v1, v0, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v1, v0, v2, p0}, Lcom/samsung/privilege/util/AnimationPointGift;->a(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_3d

    .line 860
    :cond_74
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "badge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 861
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, v1, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v2, "Newbie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 862
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 863
    :cond_94
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, v1, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v2, "GALAXY Newbie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 864
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 866
    :cond_a9
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 868
    :cond_b1
    iget-object v1, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v2, "welcome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 869
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_3d

    .line 870
    :cond_c3
    iget-object v0, v0, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v1, "term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 871
    invoke-virtual {p0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/content/Context;)V

    goto/16 :goto_3d

    .line 873
    :cond_d3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    goto/16 :goto_3d

    .line 876
    :cond_d8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->d:Z

    .line 877
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->t()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_de} :catch_4f

    goto/16 :goto_3d
.end method

.method public h()V
    .registers 8

    .prologue
    const v6, 0x7f090284

    .line 1528
    const v0, 0x7f10018a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1529
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v2, "###,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)J

    move-result-wide v2

    .line 1532
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1533
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1534
    if-eqz v4, :cond_ab

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 1535
    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_75

    .line 1536
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

    const v2, 0x7f090286

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1549
    :goto_74
    return-void

    .line 1541
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

    const v2, 0x7f090285

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

    .line 1547
    :cond_ab
    const v1, 0x7f09028a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74
.end method

.method public i()V
    .registers 6

    .prologue
    .line 1614
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    if-eqz v0, :cond_7c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 1617
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

    .line 1618
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

    .line 1619
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1620
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1621
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1622
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1623
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1624
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1625
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$20;

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$20;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    .line 1626
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1665
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1667
    :cond_7c
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 2734
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2735
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2736
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 399
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 400
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 401
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->r:I

    if-ne v0, v1, :cond_1a

    .line 1266
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 1287
    :cond_19
    :goto_19
    return v2

    .line 1267
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    if-ne v0, v1, :cond_32

    .line 1268
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1269
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    if-ne v0, v1, :cond_4b

    .line 1270
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1271
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    if-ne v0, v1, :cond_64

    .line 1272
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1273
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    if-ne v0, v1, :cond_7d

    .line 1274
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1275
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    if-ne v0, v1, :cond_96

    .line 1276
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1277
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->x:I

    if-ne v0, v1, :cond_b0

    .line 1278
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1279
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->y:I

    if-ne v0, v1, :cond_ca

    .line 1280
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1281
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->z:I

    if-ne v0, v1, :cond_e5

    .line 1282
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1283
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->A:I

    if-ne v0, v1, :cond_19

    .line 1284
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

    .line 134
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    :try_start_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    .line 142
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_237

    .line 148
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    .line 152
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setContentView(I)V

    .line 153
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setTheme(I)V

    .line 155
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    .line 156
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    .line 160
    :try_start_5c
    new-instance v0, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v0}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    .line 161
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v0, p0}, Lcom/bzbs/event/NetworkStateReceiver;->a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_75} :catch_234

    .line 167
    :goto_75
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->l()V

    .line 169
    if-nez p1, :cond_21a

    .line 185
    :goto_7a
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->r()V

    .line 188
    :try_start_7d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/MessageGCM;

    .line 189
    if-eqz v0, :cond_94

    .line 190
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 201
    :cond_94
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_9e} :catch_231

    .line 206
    :goto_9e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21f

    .line 207
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 226
    :goto_bd
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d5

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 231
    :cond_d5
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 232
    if-ne v0, v4, :cond_1d2

    .line 233
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1d2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 236
    const-string/jumbo v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 237
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "category_noti"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
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

    .line 242
    :cond_138
    const-string/jumbo v1, "dashboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_178

    .line 243
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "from_noti_alert"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
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

    .line 248
    :cond_178
    const-string/jumbo v1, "badge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 249
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Badge"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_18a
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 253
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_19c
    const-string/jumbo v1, "message_beacon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 257
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Msg Beacon"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1ae
    const-string/jumbo v1, "ewallet_pay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 261
    const-string/jumbo v1, "Push Notification"

    const-string/jumbo v2, "Click Wallet Paid Success"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1c0
    const-string/jumbo v1, "ewallet_refund"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 265
    const-string/jumbo v0, "Push Notification"

    const-string/jumbo v1, "Click Wallet Refund Success"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1d2
    const v0, 0x7f100183

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 271
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1e9

    .line 272
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 295
    :cond_1e9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_1fc

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fc

    .line 303
    :cond_1fc
    :try_start_1fc
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_219

    .line 304
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 305
    if-eqz v0, :cond_219

    .line 306
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_219} :catch_22f

    .line 312
    :cond_219
    :goto_219
    return-void

    .line 172
    :cond_21a
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Landroid/os/Bundle;)V

    goto/16 :goto_7a

    .line 210
    :cond_21f
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_bd

    .line 309
    :catch_22f
    move-exception v0

    goto :goto_219

    .line 202
    :catch_231
    move-exception v0

    goto/16 :goto_9e

    .line 163
    :catch_234
    move-exception v0

    goto/16 :goto_75

    .line 144
    :catch_237
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

    .line 1227
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1228
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 1229
    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1230
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 1231
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

    .line 1233
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 1234
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->s:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1236
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 1237
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->t:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1239
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 1240
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->u:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1242
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 1243
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->v:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1245
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 1246
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->w:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1248
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 1249
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

    .line 1251
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 1252
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

    .line 1254
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 1255
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

    .line 1257
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->l:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 1258
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

    .line 1261
    :cond_14d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 431
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3d

    .line 438
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "from_noti"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 439
    if-ne v0, v1, :cond_17

    .line 442
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 458
    :goto_16
    return v0

    .line 444
    :cond_17
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 445
    if-eqz v0, :cond_38

    .line 446
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_33

    .line 447
    const-string/jumbo v0, "Do you want to exit?"

    const-string/jumbo v2, "Click \"Yes\" to exit."

    invoke-direct {p0, v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 448
    goto :goto_16

    .line 450
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->j()V

    move v0, v1

    .line 451
    goto :goto_16

    .line 454
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16

    .line 458
    :cond_3d
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 799
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 803
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->o:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_f

    .line 808
    :goto_8
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 809
    invoke-static {}, Lcom/bzbs/event/NotiEvents;->a()V

    .line 810
    return-void

    .line 804
    :catch_f
    move-exception v0

    goto :goto_8
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 319
    sparse-switch p1, :sswitch_data_2c

    .line 339
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 341
    :goto_7
    return-void

    .line 321
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_12

    .line 323
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_7

    .line 326
    :cond_12
    const-string/jumbo v0, "Please allow the permission to login with \'Galaxy Gift\'."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 330
    :sswitch_19
    aget v0, p3, v1

    if-nez v0, :cond_21

    .line 332
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->o()V

    goto :goto_7

    .line 335
    :cond_21
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 319
    :sswitch_data_2c
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_19
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 417
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public onResume()V
    .registers 12

    .prologue
    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 507
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 509
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 511
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 512
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 513
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 516
    const v0, 0x7f10018c

    :try_start_37
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 517
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_3a6

    .line 521
    :goto_47
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 795
    :goto_4d
    return-void

    .line 527
    :cond_4e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 529
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 530
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    const v0, 0x7f10018c

    :try_start_80
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 533
    const-string/jumbo v2, "current_tab"

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_90} :catch_3a3

    .line 537
    :goto_90
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_4d

    .line 544
    :cond_97
    sput-object p0, Lcom/bzbs/data/AppSetting;->a:Landroid/app/Activity;

    .line 546
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 547
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    invoke-direct {v0, p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/NotiEvents;->a(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 549
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->h()V

    .line 550
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->i()V

    .line 551
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->m()V

    .line 552
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->f()V

    .line 554
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_ce

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 556
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;)V

    .line 561
    :cond_ce
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->g()V

    .line 563
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 564
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Z)Z

    .line 566
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogWelcome;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 569
    :cond_e7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 570
    if-eqz v0, :cond_147

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    .line 571
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v3}, Lcom/samsung/privilege/util/ResumeUtil;->a(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 590
    :goto_ff
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_139

    .line 591
    const-string/jumbo v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 594
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_3af

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3af

    move v0, v2

    .line 599
    :goto_12a
    if-nez v0, :cond_14d

    .line 600
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    const-string/jumbo v2, "Menu"

    const-string/jumbo v3, "nfc"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_139
    :goto_139
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$8;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4d

    .line 587
    :cond_147
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->f:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_ff

    .line 602
    :cond_14d
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/NfcUtils;->a(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 603
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    .line 604
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 606
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    if-nez v0, :cond_139

    .line 607
    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    .line 609
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 613
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

    .line 621
    :goto_17d
    :try_start_17d
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v3

    .line 622
    :goto_183
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_186} :catch_1e6

    move-result v0

    if-ge v1, v0, :cond_200

    .line 624
    :try_start_189
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 625
    new-instance v9, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v10, "nfc"

    invoke-direct {v9, v10, v0}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_198
    .catch Lorg/json/JSONException; {:try_start_189 .. :try_end_198} :catch_1bc
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_198} :catch_1e6

    .line 622
    :goto_198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_183

    .line 616
    :catch_19c
    move-exception v0

    .line 617
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

    .line 626
    :catch_1bc
    move-exception v0

    .line 627
    if-ne v4, v2, :cond_291

    .line 628
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

    .line 634
    :catch_1e6
    move-exception v0

    .line 635
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

    .line 638
    :cond_200
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2aa

    .line 640
    const-string/jumbo v0, "\""

    const-string/jumbo v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 642
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

    .line 643
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

    .line 645
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 647
    const-string/jumbo v5, "nfc_token"

    invoke-virtual {v4, v5, v0}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 649
    const-string/jumbo v0, ""

    const v5, 0x7f090280

    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->g:Landroid/app/ProgressDialog;

    .line 650
    new-instance v0, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 651
    invoke-virtual {v0, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 652
    invoke-virtual {v0, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 653
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 654
    invoke-virtual {v0, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 655
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 656
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$7;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 657
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_139

    .line 630
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

    .line 719
    :goto_2ab
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_139

    .line 720
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    .line 723
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

    .line 724
    add-int/lit8 v1, v4, -0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 725
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

    .line 730
    :goto_2e8
    if-nez v1, :cond_302

    .line 731
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "Status"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_306

    .line 732
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 719
    :cond_302
    :goto_302
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2ab

    .line 733
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

    .line 736
    add-int/lit8 v1, v4, 0x1

    :try_start_31b
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 737
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

    .line 745
    :goto_334
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v6}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_302

    :cond_33a
    move-object v1, v5

    .line 740
    goto :goto_334

    .line 742
    :catch_33c
    move-exception v1

    move-object v1, v5

    .line 743
    goto :goto_334

    .line 746
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

    .line 747
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->a:Lcom/facebook/CallbackManager;

    invoke-static {v0, p0, v1}, Lcom/bzbs/util/NfcUtils;->b(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_302

    .line 748
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

    .line 750
    add-int/lit8 v1, v4, 0x1

    :try_start_36d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_381

    .line 751
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/NFCTag;

    .line 752
    if-eqz v1, :cond_381

    .line 753
    iput-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_36d .. :try_end_381} :catch_3a1

    .line 759
    :cond_381
    :goto_381
    invoke-static {v0, p0}, Lcom/bzbs/util/NfcUtils;->a(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_139

    .line 764
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

    .line 756
    :catch_3a1
    move-exception v1

    goto :goto_381

    .line 534
    :catch_3a3
    move-exception v0

    goto/16 :goto_90

    .line 518
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
    .line 405
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    const-string/jumbo v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    const-string/jumbo v0, "gCurrentLanguage"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string/jumbo v0, "gCurrentCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method
