.class public Lcom/samsung/privilege/activity/MainPagerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainPagerActivity.java"

# interfaces
.implements Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;,
        Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;,
        Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;
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

.field private final REQUEST_CODE_ASK_PERMISSIONS_QR:I

.field private final REQUEST_CODE_ASK_PERMISSIONS_READ_PHONE_STATE_SkipLogin:I

.field private TAG:Ljava/lang/String;

.field public callbackManager:Lcom/facebook/CallbackManager;

.field private gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

.field private gCurrentCategoryConfig:Ljava/lang/String;

.field private gCurrentLanguage:Ljava/lang/String;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gIsNFCRedeem:Z

.field public gIsShowingMessage:Z

.field private gNfcResult:Lcom/bzbs/bean/NFCResult;

.field private gPreviousSelectedIndex:I

.field private gPreviousSelectedTab:Landroid/view/View;

.field gScreenHeight:I

.field gScreenWidth:I

.field private mHandler:Landroid/os/Handler;

.field private networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 112
    const-class v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    .line 126
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gScreenHeight:I

    .line 130
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gScreenWidth:I

    .line 305
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->REQUEST_CODE_ASK_PERMISSIONS_READ_PHONE_STATE_SkipLogin:I

    .line 306
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->REQUEST_CODE_ASK_PERMISSIONS_QR:I

    .line 798
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 1160
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    .line 1161
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    .line 1162
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    .line 1163
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    .line 1164
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    .line 1165
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    .line 1166
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    .line 1167
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    .line 1168
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    .line 1169
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->saveLanguageToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->processJsonCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/activity/MainPagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/privilege/activity/MainPagerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "x2"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/MainPagerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkMyGiftReload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkCacheAndLoadNew()V
    .registers 7

    .prologue
    .line 2058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cache_category_gift_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    .local v0, "cacheName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, "catch_category":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 2062
    const/4 v4, 0x0

    :try_start_41
    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->processJsonCategory(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_5a

    .line 2067
    :goto_44
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bzbs/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 2068
    .local v2, "times_sec":J
    const-wide/16 v4, 0xe10

    cmp-long v4, v2, v4

    if-lez v4, :cond_55

    .line 2069
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->loadCampaignCategory()V

    .line 2074
    .end local v2    # "times_sec":J
    :cond_55
    :goto_55
    return-void

    .line 2072
    :cond_56
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->loadCampaignCategory()V

    goto :goto_55

    .line 2063
    :catch_5a
    move-exception v4

    goto :goto_44
.end method

.method private checkMyGiftReload()Z
    .registers 8

    .prologue
    .line 1293
    const/4 v3, 0x0

    .line 1294
    .local v3, "is_show_mygift":Z
    :try_start_1
    const-string v5, "GT-I9100"

    .line 1295
    .local v5, "my_model":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetShowMyGiftOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1296
    .local v4, "json_show_mygift_on":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_22

    .line 1301
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "allow_model":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v6

    if-eqz v6, :cond_23

    .line 1303
    const/4 v3, 0x1

    .line 1310
    .end local v0    # "allow_model":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "is_show_mygift":Z
    .end local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .end local v5    # "my_model":Ljava/lang/String;
    :cond_22
    :goto_22
    return v3

    .line 1296
    .restart local v0    # "allow_model":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "is_show_mygift":Z
    .restart local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .restart local v5    # "my_model":Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1309
    .end local v0    # "allow_model":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .end local v5    # "my_model":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 1310
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_22
.end method

.method private checkNFC()V
    .registers 10

    .prologue
    .line 2637
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_1b

    .line 2638
    const-string/jumbo v6, "nfc"

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NfcManager;

    .line 2640
    .local v4, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v4}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2642
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1b

    .line 2643
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2679
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_1b
    :goto_1b
    return-void

    .line 2646
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetIsNFCWarning(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 2647
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/bzbs/data/UserLogin;->SetIsNFCWarning(Landroid/content/Context;Z)Z

    .line 2649
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$39;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$39;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2666
    .local v2, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2668
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, ""

    .line 2670
    .local v5, "strNfc_warning_disable":Ljava/lang/String;
    const v6, 0x7f09024a

    :try_start_3e
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_58

    move-result-object v5

    .line 2674
    :goto_42
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string/jumbo v7, "Yes"

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string/jumbo v7, "No"

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1b

    .line 2671
    :catch_58
    move-exception v3

    .line 2672
    .local v3, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception := "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private closeDrawerRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2048
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$35;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$35;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 10
    .param p1, "nfcPlan"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "nfcResult"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    const v6, 0x7f090244

    .line 1237
    const-string/jumbo v3, ""

    .line 1238
    .local v3, "token_facebook":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 1239
    .local v2, "token":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_10

    .line 1240
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 1243
    :cond_10
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "checkin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1244
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=checkin"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    if-eqz v3, :cond_48

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1246
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v4, p0, v5}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 1289
    :goto_47
    return-void

    .line 1248
    :cond_48
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1250
    :cond_52
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "post"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1251
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=post"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    if-eqz v3, :cond_8a

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1253
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v4, p0, v5}, Lcom/bzbs/util/NfcUtils;->Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_47

    .line 1255
    :cond_8a
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1257
    :cond_94
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "share"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1258
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=share"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 1260
    .local v0, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/4 v1, 0x0

    .line 1261
    .local v1, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    iget-object v4, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v4, :cond_cf

    .line 1262
    iget-object v4, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v4, v4, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v5, "ReDeem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1263
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 1266
    :cond_cf
    if-eqz v3, :cond_e1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1267
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v4}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_47

    .line 1269
    :cond_e1
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1271
    .end local v0    # "objNFCTag":Lcom/bzbs/bean/NFCTag;
    .end local v1    # "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    :cond_ec
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "openapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_118

    .line 1272
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=openapp"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenApp(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1274
    :cond_118
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1275
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=link"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1277
    :cond_144
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 1278
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=video"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1280
    :cond_170
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 1281
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=campaign"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1283
    :cond_19c
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "redeem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 1284
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=redeem"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1287
    :cond_1c8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid NFC Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_47
.end method

.method private initialFont()V
    .registers 4

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1458
    .local v0, "fontSamsung":Landroid/graphics/Typeface;
    const v1, 0x7f1000b7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1459
    const v1, 0x7f10064a

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1460
    const v1, 0x7f10064b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1462
    const v1, 0x7f10064e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1463
    const v1, 0x7f100651

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1464
    const v1, 0x7f100654

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1465
    const v1, 0x7f100657

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1466
    const v1, 0x7f100659

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1467
    const v1, 0x7f10065b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1468
    const v1, 0x7f10065d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1469
    const v1, 0x7f10065f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1470
    const v1, 0x7f100663

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1471
    return-void
.end method

.method private initialMenuContent()V
    .registers 9

    .prologue
    const v7, 0x7f10064f

    const v6, 0x7f10064b

    const v5, 0x7f1000b7

    const/16 v4, 0x8

    .line 1498
    const v2, 0x7f100663

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1499
    .local v0, "textLogOut":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_156

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    .line 1501
    const v2, 0x7f0901e1

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1506
    :goto_31
    const v2, 0x7f10064c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1507
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 1508
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    :goto_54
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 1518
    const v2, 0x7f100660

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    const v2, 0x7f100661

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1522
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 1523
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Thailand"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1532
    :goto_8b
    const v2, 0x7f10064a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090103

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1033"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 1535
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 1536
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090107

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    :cond_d0
    :goto_d0
    const v2, 0x7f100651

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    const v2, 0x7f100654

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090209

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    const v2, 0x7f100657

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901eb

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1553
    const v2, 0x7f100659

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e4

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1554
    const v2, 0x7f10065b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e5

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    const v2, 0x7f10065d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ec

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1556
    const v2, 0x7f10065f

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901dc

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    return-void

    .line 1503
    :cond_156
    const v2, 0x7f0901e0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31

    .line 1512
    :cond_162
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_54

    .line 1524
    :cond_16b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1525
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Laos"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1526
    :cond_18a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 1527
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Myanmar"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1529
    :cond_1a9
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1538
    :cond_1b7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1539
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090105

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1541
    :cond_1da
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1542
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090106

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1546
    :cond_1fd
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090104

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0
.end method

.method private loadCampaignCategory()V
    .registers 8

    .prologue
    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "api/campaigncat/menu?config=menu_gift&device_app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 2081
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 2083
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$36;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$36;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2143
    return-void
.end method

.method private openDrawerRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 2038
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$34;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$34;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private processJsonCategory(Ljava/lang/String;Z)V
    .registers 31
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_from_cache"    # Z

    .prologue
    .line 2146
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2208
    .local v14, "listCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/CampaignCategory;>;"
    :try_start_5
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2209
    .local v13, "jsonRoot":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_12f

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_130

    .line 2211
    :try_start_15
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 2212
    .local v12, "jsonItem":Lorg/json/JSONObject;
    new-instance v15, Lcom/bzbs/bean/CampaignCategory;

    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Lcom/bzbs/bean/CampaignCategory;-><init>(Ljava/lang/String;)V

    .line 2213
    .local v15, "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    const-string/jumbo v24, "id"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 2214
    const-string/jumbo v24, "mode"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 2215
    const-string/jumbo v24, "tags"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 2216
    const-string/jumbo v24, "name_en"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 2217
    const-string/jumbo v24, "name_th"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 2218
    const-string/jumbo v24, "id"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 2219
    const-string/jumbo v24, "count"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v15, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 2220
    const-string/jumbo v24, "dashboard_key"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 2221
    const-string/jumbo v24, "list_config"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 2223
    const-string/jumbo v24, "image_url_active"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 2224
    const-string/jumbo v24, "image_url_inactive"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v15, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 2226
    const-string/jumbo v24, "firstpage"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    .line 2227
    const-string/jumbo v24, "selected"

    move-object/from16 v0, v24

    invoke-static {v12, v0}, Lcom/bzbs/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    move/from16 v0, v24

    iput-boolean v0, v15, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 2230
    .local v21, "str_category_config":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v15, Lcom/bzbs/bean/CampaignCategory;->cat:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "=false]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_115

    .line 2209
    .end local v12    # "jsonItem":Lorg/json/JSONObject;
    .end local v15    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v21    # "str_category_config":Ljava/lang/String;
    :goto_111
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_d

    .line 2233
    .restart local v12    # "jsonItem":Lorg/json/JSONObject;
    .restart local v15    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .restart local v21    # "str_category_config":Ljava/lang/String;
    :cond_115
    iget-boolean v0, v15, Lcom/bzbs/bean/CampaignCategory;->firstpage:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12b

    .line 2234
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_111

    .line 2239
    .end local v12    # "jsonItem":Lorg/json/JSONObject;
    .end local v15    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v21    # "str_category_config":Ljava/lang/String;
    :catch_129
    move-exception v24

    goto :goto_111

    .line 2236
    .restart local v12    # "jsonItem":Lorg/json/JSONObject;
    .restart local v15    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .restart local v21    # "str_category_config":Ljava/lang/String;
    :cond_12b
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_12e} :catch_129

    goto :goto_111

    .line 2243
    .end local v9    # "i":I
    .end local v12    # "jsonItem":Lorg/json/JSONObject;
    .end local v13    # "jsonRoot":Lorg/json/JSONArray;
    .end local v15    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v21    # "str_category_config":Ljava/lang/String;
    :catch_12f
    move-exception v24

    .line 2247
    :cond_130
    const/4 v11, 0x0

    .line 2248
    .local v11, "isRefreshAdapter":Z
    const/4 v11, 0x1

    .line 2250
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v11, v0, :cond_2ac

    .line 2251
    const/4 v5, 0x0

    .line 2253
    .local v5, "default_tab_config":I
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v17

    .line 2256
    .local v17, "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_13e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_1a4

    .line 2257
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/bzbs/bean/CampaignCategory;

    .line 2258
    .local v16, "objCat":Lcom/bzbs/bean/CampaignCategory;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_18c

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_18c

    .line 2260
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/bzbs/bean/CampaignCategory;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-class v25, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->add(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    .line 2264
    :goto_17a
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/bzbs/bean/CampaignCategory;->selected:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_189

    .line 2265
    move v5, v9

    .line 2256
    :cond_189
    add-int/lit8 v9, v9, 0x1

    goto :goto_13e

    .line 2262
    :cond_18c
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/bzbs/bean/CampaignCategory;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    const-class v25, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->add(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    goto :goto_17a

    .line 2269
    .end local v16    # "objCat":Lcom/bzbs/bean/CampaignCategory;
    :cond_1a4
    new-instance v24, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->create()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v14}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    .line 2271
    const v24, 0x7f100173

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/support/v4/view/ViewPager;

    .line 2272
    .local v22, "viewPager":Landroid/support/v4/view/ViewPager;
    sget-boolean v24, Lcom/bzbs/data/AppSetting;->CONFIG_PAGER_KEEP_MEMORY_ALL:Z

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2ad

    .line 2273
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2277
    :goto_1e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2279
    const v24, 0x7f100170

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 2281
    .local v23, "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2282
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2283
    iget v7, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2284
    .local v7, "gScreenHeight":I
    iget v8, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2285
    .local v8, "gScreenWidth":I
    div-int/lit8 v24, v8, 0x3

    const/16 v25, 0x0

    div-int/lit8 v26, v8, 0x3

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 2286
    new-instance v24, Lcom/samsung/privilege/activity/MainPagerActivity$37;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/samsung/privilege/activity/MainPagerActivity$37;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual/range {v23 .. v24}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 2347
    new-instance v24, Lcom/samsung/privilege/activity/MainPagerActivity$38;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$38;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    invoke-virtual/range {v23 .. v24}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2415
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2417
    const/4 v4, 0x0

    .line 2420
    .local v4, "already_selected":Z
    :try_start_240
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2421
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v24, "category_noti"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2422
    .local v18, "param_category_noti":Ljava/lang/String;
    if-eqz v18, :cond_264

    const-string/jumbo v24, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_264

    .line 2423
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByCat(Ljava/lang/String;)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_263} :catch_2be

    .line 2424
    const/4 v4, 0x1

    .line 2431
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "param_category_noti":Ljava/lang/String;
    :cond_264
    :goto_264
    :try_start_264
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2432
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v24, "dashboard_key"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2433
    .local v20, "param_dashboard_key":Ljava/lang/String;
    if-eqz v20, :cond_288

    const-string/jumbo v24, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_288

    .line 2434
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByDashboard(Ljava/lang/String;)V
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_264 .. :try_end_287} :catch_2bc

    .line 2435
    const/4 v4, 0x1

    .line 2442
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v20    # "param_dashboard_key":Ljava/lang/String;
    :cond_288
    :goto_288
    :try_start_288
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 2443
    .restart local v10    # "intent":Landroid/content/Intent;
    const-string/jumbo v24, "current_tab"

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 2444
    .local v19, "param_current_tab":I
    if-ltz v19, :cond_2a3

    .line 2445
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByIndex(I)V
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_288 .. :try_end_2a2} :catch_2ba

    .line 2446
    const/4 v4, 0x1

    .line 2453
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "param_current_tab":I
    :cond_2a3
    :goto_2a3
    if-nez v4, :cond_2ac

    .line 2454
    if-lez v5, :cond_2ac

    .line 2455
    :try_start_2a7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByIndex(I)V
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_2a7 .. :try_end_2ac} :catch_2b8

    .line 2462
    .end local v4    # "already_selected":Z
    .end local v5    # "default_tab_config":I
    .end local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "gScreenHeight":I
    .end local v8    # "gScreenWidth":I
    .end local v9    # "i":I
    .end local v17    # "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .end local v22    # "viewPager":Landroid/support/v4/view/ViewPager;
    .end local v23    # "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    :cond_2ac
    :goto_2ac
    return-void

    .line 2275
    .restart local v5    # "default_tab_config":I
    .restart local v9    # "i":I
    .restart local v17    # "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .restart local v22    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2ad
    const/16 v24, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto/16 :goto_1e3

    .line 2458
    .restart local v4    # "already_selected":Z
    .restart local v6    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "gScreenHeight":I
    .restart local v8    # "gScreenWidth":I
    .restart local v23    # "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    :catch_2b8
    move-exception v24

    goto :goto_2ac

    .line 2448
    :catch_2ba
    move-exception v24

    goto :goto_2a3

    .line 2437
    :catch_2bc
    move-exception v24

    goto :goto_288

    .line 2426
    :catch_2be
    move-exception v24

    goto :goto_264
.end method

.method private requestOpenQR()V
    .registers 4

    .prologue
    .line 1879
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1880
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1881
    return-void
.end method

.method private restartActivity()V
    .registers 4

    .prologue
    .line 1615
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1616
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1618
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1619
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1620
    const-string/jumbo v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1621
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1622
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1623
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1624
    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1625
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1626
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1627
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1628
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1629
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1633
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 1637
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_5e
    return-void

    .line 1634
    :catch_5f
    move-exception v1

    goto :goto_5e
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 394
    const-string/jumbo v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 395
    const-string/jumbo v0, "gCurrentLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 396
    const-string/jumbo v0, "gCurrentCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 398
    :cond_2c
    return-void
.end method

.method private saveLanguageToServer(Ljava/lang/String;)V
    .registers 11
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1727
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/bzbs/data/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1729
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1730
    .local v0, "cd":Lcom/bzbs/util/ConnectionDetector;
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-ne v5, v8, :cond_78

    .line 1731
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1733
    .local v3, "tokenBzBs":Ljava/lang/String;
    if-eqz v3, :cond_74

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 1734
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/profile/me"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1735
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1736
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v5, "token"

    invoke-virtual {v2, v5, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    const-string/jumbo v5, "locale"

    invoke-virtual {v2, v5, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1740
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v5, ""

    const v6, 0x7f09026f

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v8, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1741
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$25;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$25;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v1, v5, v4, v2, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1775
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v3    # "tokenBzBs":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_73
    return-void

    .line 1770
    .restart local v3    # "tokenBzBs":Ljava/lang/String;
    :cond_74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    goto :goto_73

    .line 1773
    .end local v3    # "tokenBzBs":Ljava/lang/String;
    :cond_78
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    goto :goto_73
.end method

.method private showDialogErrorPermissions(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 335
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 337
    .local v1, "dialogError":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string/jumbo v5, "fonts/kit55p.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 339
    .local v2, "font":Landroid/graphics/Typeface;
    const v4, 0x7f040102

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 340
    const-string/jumbo v4, "Information"

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 342
    const v4, 0x7f100152

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 343
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 344
    const v4, 0x7f10024b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 346
    .local v0, "btnClose":Landroid/widget/Button;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 356
    return-void
.end method

.method private showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_35

    .line 436
    :try_start_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$6;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$6;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$5;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$5;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 463
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 469
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 474
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_35
    :goto_35
    return-void

    .line 470
    :catch_36
    move-exception v2

    .line 471
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to showDialogHasNewVersion():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method

.method private showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2008
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2010
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f04010a

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 2012
    const v4, 0x7f10055c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2013
    .local v3, "layoutYes":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$32;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$32;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2023
    const v4, 0x7f10055e

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2024
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$33;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$33;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2030
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2031
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2032
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2034
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2035
    return-void
.end method

.method private showMessageOKCancel(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1884
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1885
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    .line 1886
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Cancel"

    const/4 v2, 0x0

    .line 1887
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1888
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1889
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1890
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    return-void
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2468
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public checkAndShowDialogMessagePopup()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 801
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    if-nez v2, :cond_3d

    .line 802
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 805
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetAndRemoveQueueMessagePopup(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v1

    .line 806
    .local v1, "messagePopup":Lcom/bzbs/bean/MessagePopup;
    if-eqz v1, :cond_d8

    .line 808
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 809
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 810
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, "2043"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 811
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 845
    .end local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_3d
    :goto_3d
    return-void

    .line 812
    .restart local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_3e
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, "2045"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 813
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_3d

    .line 841
    .end local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :catch_4f
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    goto :goto_3d

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_53
    :try_start_53
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 818
    :cond_59
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 820
    :cond_5f
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "point"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 821
    iget v2, v1, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v3, v1, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, p0}, Lcom/samsung/privilege/util/AnimationPointGift;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_3d

    .line 822
    :cond_74
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "badge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 823
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v2, v2, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v3, "Newbie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 824
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 825
    :cond_94
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v2, v2, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v3, "GALAXY Newbie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 826
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 828
    :cond_a9
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 830
    :cond_b1
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "welcome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 831
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/samsung/privilege/util/DialogWelcome;->showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_3d

    .line 832
    :cond_c3
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "term"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 833
    invoke-virtual {p0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogTerm(Landroid/content/Context;)V

    goto/16 :goto_3d

    .line 835
    :cond_d3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    goto/16 :goto_3d

    .line 838
    :cond_d8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 839
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkNFC()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_de} :catch_4f

    goto/16 :goto_3d
.end method

.method public doAboutUs(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1962
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1964
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$31;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$31;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1972
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click About Us"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    return-void
.end method

.method public doChangeLanguage(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f10054b

    const v7, 0x7f100546

    const v6, 0x7f020359

    const v5, 0x7f02027e

    const/16 v4, 0x8

    .line 1640
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1641
    .local v1, "dialog":Landroid/app/Dialog;
    const v2, 0x7f040107

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1644
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1645
    const v2, 0x7f100544

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ac

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1646
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1647
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1648
    const v2, 0x7f100550

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :cond_59
    :goto_59
    const v2, 0x7f100545

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1662
    const v2, 0x7f10054a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1663
    const v2, 0x7f10054f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1664
    const v2, 0x7f100554

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1665
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1033"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 1666
    const v2, 0x7f100545

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1675
    :cond_a6
    :goto_a6
    const v2, 0x7f100541

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$21;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1686
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$22;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$22;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1697
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$23;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$23;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1708
    const v2, 0x7f100550

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$24;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$24;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1719
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1720
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1721
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1723
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1724
    return-void

    .line 1649
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    :cond_f3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 1650
    const v2, 0x7f100544

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901aa

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1653
    const v2, 0x7f100550

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1654
    :cond_132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1655
    const v2, 0x7f100544

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ab

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1656
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    const v2, 0x7f100550

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1667
    :cond_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1668
    const v2, 0x7f10054a

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1669
    :cond_190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 1670
    const v2, 0x7f10054f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1671
    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1672
    const v2, 0x7f100554

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6
.end method

.method public doHistory(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1916
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1917
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1936
    :goto_10
    return-void

    .line 1919
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1920
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1921
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1923
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$29;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$29;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1934
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click History"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1931
    :cond_4b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "history"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doLogOut(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1976
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1978
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Log Out"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :goto_25
    return-void

    .line 1984
    :cond_26
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "menu"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Log In"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public doLuckyDraw(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1817
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1819
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WinnerCategoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1820
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "header_en"

    const v2, 0x7f090209

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    const-string/jumbo v1, "mode"

    const-string/jumbo v2, "cat"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1822
    const-string/jumbo v1, "list_config"

    sget-object v2, Lcom/bzbs/data/AppSetting;->CAT_WINNER_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1823
    const-string/jumbo v1, "cat"

    sget v2, Lcom/bzbs/data/AppSetting;->CAT_WINNER:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1826
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Winner"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    return-void
.end method

.method public doMarketPlace(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1810
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1811
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1813
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Marketplace"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    return-void
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1608
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->openDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1610
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Menu Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    return-void
.end method

.method public doMyAccount(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1893
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1894
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1913
    :goto_10
    return-void

    .line 1896
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1897
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1898
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1900
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$28;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$28;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1911
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click My Account Settings"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1908
    :cond_4b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "account"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doNotification(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1778
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1779
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1797
    :goto_10
    return-void

    .line 1781
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1783
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1785
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$26;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$26;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1795
    :goto_41
    const-string/jumbo v1, "Main Page"

    const-string/jumbo v2, "Click Notifications Icon"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1792
    :cond_4b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "notification"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doPointCaption(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1991
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1992
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1999
    :goto_13
    return-void

    .line 1995
    :cond_14
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "point_caption"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    const-string/jumbo v1, "Main Page"

    const-string/jumbo v2, "Click You Are Not Logged In"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public doPointQuestion(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogMyPoint;->showDialogMyPoint(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2004
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click My Points"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    return-void
.end method

.method public doRequestHelp(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1939
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1940
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1959
    :goto_10
    return-void

    .line 1942
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1943
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1944
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1946
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$30;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$30;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1957
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Request Help"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1954
    :cond_4b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "help"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doScanQRCode(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1830
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1831
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1876
    :goto_10
    return-void

    .line 1833
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1835
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1837
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$27;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$27;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1874
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Scan QR Code"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1871
    :cond_4b
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "qr"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method public doSearch(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogSearch;->showDialogSearch(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1802
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Search Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    return-void
.end method

.method public doSpecialDeal(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1807
    return-void
.end method

.method public getPoints()V
    .registers 9

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v1, :cond_60

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 1562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "api/profile/me/updated_points?token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1563
    .local v4, "url":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPoints="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1565
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1566
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$20;

    invoke-direct {v6, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$20;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    invoke-virtual {v0, v5, v4, v6}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1605
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    .end local v4    # "url":Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public initialPoint()V
    .registers 10

    .prologue
    const v8, 0x7f090273

    .line 1474
    const v6, 0x7f100171

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1475
    .local v4, "textHeaderPoint":Landroid/widget/TextView;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "###,###,###"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v2

    .line 1478
    .local v2, "points":J
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1479
    .local v1, "strPoints":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1480
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_ab

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    .line 1481
    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-ltz v6, :cond_75

    .line 1482
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</big></font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090275

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1495
    :goto_74
    return-void

    .line 1487
    :cond_75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <font color=\'#3ba9f6\'><big>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</big></font> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f090274

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74

    .line 1493
    :cond_ab
    const v6, 0x7f090279

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74
.end method

.method public networkAvailable()V
    .registers 5

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$18;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$18;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1337
    return-void
.end method

.method public networkUnavailable()V
    .registers 1

    .prologue
    .line 1342
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 371
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 372
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    if-ne v0, v1, :cond_1a

    .line 1212
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 1233
    :cond_19
    :goto_19
    return v2

    .line 1213
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    if-ne v0, v1, :cond_32

    .line 1214
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1215
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    if-ne v0, v1, :cond_4b

    .line 1216
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1217
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    if-ne v0, v1, :cond_64

    .line 1218
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1219
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    if-ne v0, v1, :cond_7d

    .line 1220
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1221
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    if-ne v0, v1, :cond_96

    .line 1222
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1223
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    if-ne v0, v1, :cond_b0

    .line 1224
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1225
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    if-ne v0, v1, :cond_ca

    .line 1226
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1227
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    if-ne v0, v1, :cond_e5

    .line 1228
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1229
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    if-ne v0, v1, :cond_19

    .line 1230
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    :try_start_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_17

    .line 144
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string/jumbo v11, "#6A75BA"

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_222

    .line 150
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 154
    const v10, 0x7f040035

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->setContentView(I)V

    .line 155
    const v10, 0x10300f0

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->setTheme(I)V

    .line 157
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    .line 158
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 159
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 162
    :try_start_52
    new-instance v10, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v10}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    .line 163
    iget-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v10, p0}, Lcom/bzbs/event/NetworkStateReceiver;->addListener(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 164
    iget-object v10, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10, v11}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6b} :catch_21f

    .line 169
    :goto_6b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialFont()V

    .line 171
    if-nez p1, :cond_1fd

    .line 187
    :goto_70
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    .line 190
    :try_start_73
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "messageGCM"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/bzbs/bean/MessageGCM;

    .line 191
    .local v8, "paramMessageGCM":Lcom/bzbs/bean/MessageGCM;
    if-eqz v8, :cond_8a

    .line 192
    new-instance v10, Lcom/samsung/privilege/activity/MainPagerActivity$1;

    invoke-direct {v10, p0, v8}, Lcom/samsung/privilege/activity/MainPagerActivity$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    :cond_8a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "messageGCM"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_94} :catch_21c

    .line 208
    .end local v8    # "paramMessageGCM":Lcom/bzbs/bean/MessageGCM;
    :goto_94
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "402705486466922"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_202

    .line 209
    const v10, 0x7f10016f

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 210
    const v10, 0x7f100172

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_bb
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v10, v11, :cond_d3

    .line 229
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/samsung/privilege/service/BeaconStarterService;

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v6, "intentBeacon":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    .end local v6    # "intentBeacon":Landroid/content/Intent;
    :cond_d3
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "from_noti"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 234
    .local v7, "is_from_noti":Z
    const/4 v10, 0x1

    if-ne v7, v10, :cond_1d2

    .line 235
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "from_noti_type"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "from_noti_type":Ljava/lang/String;
    if-eqz v5, :cond_1d2

    const-string/jumbo v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d2

    .line 238
    const-string/jumbo v10, "cat"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_138

    .line 239
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "category_noti"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "categoryID":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "from_noti_alert"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "categoryName":Ljava/lang/String;
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Category"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v0    # "categoryID":Ljava/lang/String;
    .end local v1    # "categoryName":Ljava/lang/String;
    :cond_138
    const-string/jumbo v10, "dashboard"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_178

    .line 245
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "dashboard_key"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, "dashboard_key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "from_noti_alert"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "from_noti_alert":Ljava/lang/String;
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Dashboard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v2    # "dashboard_key":Ljava/lang/String;
    .end local v4    # "from_noti_alert":Ljava/lang/String;
    :cond_178
    const-string/jumbo v10, "badge"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18a

    .line 251
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Badge"

    invoke-static {v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_18a
    const-string/jumbo v10, "message"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19c

    .line 255
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Msg"

    invoke-static {v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_19c
    const-string/jumbo v10, "message_beacon"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1ae

    .line 259
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Msg Beacon"

    invoke-static {v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1ae
    const-string/jumbo v10, "ewallet_pay"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c0

    .line 263
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Wallet Paid Success"

    invoke-static {v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_1c0
    const-string/jumbo v10, "ewallet_refund"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d2

    .line 267
    const-string/jumbo v10, "Push Notification"

    const-string/jumbo v11, "Click Wallet Refund Success"

    invoke-static {v10, v11}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .end local v5    # "from_noti_type":Ljava/lang/String;
    :cond_1d2
    const v10, 0x7f10016a

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout;

    .line 273
    .local v3, "drawer_layout":Landroid/support/v4/widget/DrawerLayout;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xc

    if-lt v10, v11, :cond_1e9

    .line 274
    new-instance v10, Lcom/samsung/privilege/activity/MainPagerActivity$2;

    invoke-direct {v10, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v3, v10}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 297
    :cond_1e9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "token":Ljava/lang/String;
    if-eqz v9, :cond_1fc

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1fc

    .line 303
    :cond_1fc
    return-void

    .line 174
    .end local v3    # "drawer_layout":Landroid/support/v4/widget/DrawerLayout;
    .end local v7    # "is_from_noti":Z
    .end local v9    # "token":Ljava/lang/String;
    :cond_1fd
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_70

    .line 212
    :cond_202
    const v10, 0x7f10016f

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v10, 0x7f100172

    invoke-virtual {p0, v10}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_bb

    .line 204
    :catch_21c
    move-exception v10

    goto/16 :goto_94

    .line 165
    :catch_21f
    move-exception v10

    goto/16 :goto_6b

    .line 146
    :catch_222
    move-exception v10

    goto/16 :goto_17
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

    .line 1173
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1174
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 1175
    const v0, 0x7f090248

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1176
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 1177
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1179
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 1180
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1182
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 1183
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1185
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 1186
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1188
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 1189
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1191
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 1192
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1194
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 1195
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1197
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 1198
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1200
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 1201
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1203
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 1204
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1207
    :cond_14d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 402
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3b

    .line 409
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 410
    .local v0, "is_from_noti":Z
    if-ne v0, v2, :cond_17

    .line 413
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 429
    .end local v0    # "is_from_noti":Z
    :goto_16
    return v2

    .line 415
    .restart local v0    # "is_from_noti":Z
    :cond_17
    const v3, 0x7f100173

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 416
    .local v1, "viewPager":Landroid/support/v4/view/ViewPager;
    if-eqz v1, :cond_36

    .line 417
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-nez v3, :cond_32

    .line 418
    const-string/jumbo v3, "Do you want to exit?"

    const-string/jumbo v4, "Click \"Yes\" to exit."

    invoke-direct {p0, v3, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 421
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedDashboard()V

    goto :goto_16

    .line 425
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16

    .line 429
    .end local v0    # "is_from_noti":Z
    .end local v1    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 761
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 765
    :try_start_3
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_f

    .line 770
    :goto_8
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 771
    invoke-static {}, Lcom/bzbs/event/NotiEvents;->clearNotiListener()V

    .line 772
    return-void

    .line 766
    :catch_f
    move-exception v0

    goto :goto_8
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 310
    sparse-switch p1, :sswitch_data_2c

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 332
    :goto_7
    return-void

    .line 312
    :sswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_12

    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/SkipLoginUtil;->doLoginDeviceSkip(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_7

    .line 317
    :cond_12
    const-string/jumbo v0, "Please allow the permission to login with \'Smile Privilege\'."

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogErrorPermissions(Ljava/lang/String;)V

    goto :goto_7

    .line 321
    :sswitch_19
    aget v0, p3, v1

    if-nez v0, :cond_21

    .line 323
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V

    goto :goto_7

    .line 326
    :cond_21
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 310
    :sswitch_data_2c
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_19
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 388
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onResume()V
    .registers 39

    .prologue
    .line 478
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 480
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_5f

    .line 484
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const-class v34, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 485
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v33, 0x4000000

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    const v33, 0x7f100173

    :try_start_3e
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/support/v4/view/ViewPager;

    .line 488
    .local v32, "viewPager":Landroid/support/v4/view/ViewPager;
    const-string/jumbo v33, "current_tab"

    invoke-virtual/range {v32 .. v32}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v34

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_548

    .line 492
    .end local v32    # "viewPager":Landroid/support/v4/view/ViewPager;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 757
    .end local v15    # "intent":Landroid/content/Intent;
    :goto_5e
    return-void

    .line 498
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, ""

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_be

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_be

    .line 500
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const-class v34, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .restart local v15    # "intent":Landroid/content/Intent;
    const/high16 v33, 0x4000000

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 503
    const v33, 0x7f100173

    :try_start_9d
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/support/v4/view/ViewPager;

    .line 504
    .restart local v32    # "viewPager":Landroid/support/v4/view/ViewPager;
    const-string/jumbo v33, "current_tab"

    invoke-virtual/range {v32 .. v32}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v34

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b5} :catch_545

    .line 508
    .end local v32    # "viewPager":Landroid/support/v4/view/ViewPager;
    :goto_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_5e

    .line 515
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_be
    sput-object p0, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 517
    new-instance v33, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static/range {v33 .. v33}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 518
    new-instance v33, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static/range {v33 .. v33}, Lcom/bzbs/event/NotiEvents;->addNotiListener(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialPoint()V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPoints()V

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialMenuContent()V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setRedNoti()V

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    const-string/jumbo v34, "action"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_109

    const-string/jumbo v33, ""

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_109

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->refreshLayoutAfterLogin(Ljava/lang/String;)V

    .line 532
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkAndShowDialogMessagePopup()V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v33

    if-nez v33, :cond_12c

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    const/16 v34, 0x1

    invoke-static/range {v33 .. v34}, Lcom/bzbs/data/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogWelcome;->showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V

    .line 540
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v29

    .line 541
    .local v29, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v29, :cond_1c9

    const-string/jumbo v33, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_1c9

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 560
    :goto_156
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x9

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_1ad

    .line 561
    const-string/jumbo v33, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1ad

    .line 562
    const/16 v16, 0x0

    .line 564
    .local v16, "isLoggedIn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 565
    .local v30, "tokenBuzzebees":Ljava/lang/String;
    if-eqz v30, :cond_18c

    const-string/jumbo v33, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_18c

    .line 566
    const/16 v16, 0x1

    .line 569
    :cond_18c
    if-nez v16, :cond_227

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v34, v0

    const-string/jumbo v35, "Menu"

    const-string/jumbo v36, "nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v16    # "isLoggedIn":Z
    .end local v30    # "tokenBuzzebees":Ljava/lang/String;
    :cond_1ad
    :goto_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    new-instance v34, Lcom/samsung/privilege/activity/MainPagerActivity$8;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$8;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v36, 0x1388

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5e

    .line 545
    :cond_1c9
    :try_start_1c9
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x17

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_218

    .line 546
    const-string/jumbo v33, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v13

    .line 547
    .local v13, "hasPermissionReadStorage":I
    if-eqz v13, :cond_209

    .line 548
    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string/jumbo v35, "android.permission.READ_PHONE_STATE"

    aput-object v35, v33, v34

    const/16 v34, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1fa} :catch_1fc

    goto/16 :goto_156

    .line 555
    .end local v13    # "hasPermissionReadStorage":I
    :catch_1fc
    move-exception v11

    .line 556
    .local v11, "ex":Ljava/lang/Exception;
    const-string/jumbo v33, "Can not access permission: READ_PHONE_STATE!"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogErrorPermissions(Ljava/lang/String;)V

    goto/16 :goto_156

    .line 550
    .end local v11    # "ex":Ljava/lang/Exception;
    .restart local v13    # "hasPermissionReadStorage":I
    :cond_209
    :try_start_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/SkipLoginUtil;->doLoginDeviceSkip(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_156

    .line 553
    .end local v13    # "hasPermissionReadStorage":I
    :cond_218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/SkipLoginUtil;->doLoginDeviceSkip(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_225} :catch_1fc

    goto/16 :goto_156

    .line 572
    .restart local v16    # "isLoggedIn":Z
    .restart local v30    # "tokenBuzzebees":Ljava/lang/String;
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/util/NfcUtils;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v20

    .line 573
    .local v20, "messages":[Landroid/nfc/NdefMessage;
    const/16 v33, 0x0

    aget-object v33, v20, v33

    invoke-virtual/range {v33 .. v33}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v33 .. v33}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v26

    .line 574
    .local v26, "payload":[B
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 576
    .local v28, "strTasks":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    move/from16 v33, v0

    if-nez v33, :cond_1ad

    .line 577
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 579
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v12, "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    const/4 v7, 0x0

    .line 583
    .local v7, "blnIsAdmin":Z
    :try_start_25e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_25e .. :try_end_265} :catch_297

    move-result v33

    if-eqz v33, :cond_269

    .line 584
    const/4 v7, 0x1

    .line 591
    :cond_269
    :goto_269
    :try_start_269
    new-instance v19, Lorg/json/JSONArray;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 592
    .local v19, "jsonRoot":Lorg/json/JSONArray;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_273
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I
    :try_end_276
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_276} :catch_2f0

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_312

    .line 594
    :try_start_27b
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 595
    .local v18, "jsonAction":Lorg/json/JSONObject;
    new-instance v33, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v34, "nfc"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_294
    .catch Lorg/json/JSONException; {:try_start_27b .. :try_end_294} :catch_2ba
    .catch Ljava/lang/Exception; {:try_start_27b .. :try_end_294} :catch_2f0

    .line 592
    .end local v18    # "jsonAction":Lorg/json/JSONObject;
    :goto_294
    add-int/lit8 v14, v14, 0x1

    goto :goto_273

    .line 586
    .end local v14    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONArray;
    :catch_297
    move-exception v10

    .line 587
    .local v10, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Exception := "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_269

    .line 596
    .end local v10    # "e2":Ljava/lang/Exception;
    .restart local v14    # "i":I
    .restart local v19    # "jsonRoot":Lorg/json/JSONArray;
    :catch_2ba
    move-exception v9

    .line 597
    .local v9, "e":Lorg/json/JSONException;
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v7, v0, :cond_3c9

    .line 598
    :try_start_2c1
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Invalid NFC Action:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "\r\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V
    :try_end_2ef
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2ef} :catch_2f0

    goto :goto_294

    .line 604
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v14    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONArray;
    :catch_2f0
    move-exception v9

    .line 605
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Invalid NFC Task:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_312
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-nez v33, :cond_3ea

    .line 610
    const-string/jumbo v33, "\""

    const-string/jumbo v34, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 612
    .local v27, "strEncrpt":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v34, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "api/nfc"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 613
    .local v31, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "CheckNFC="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    new-instance v25, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v25 .. v25}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 616
    .local v25, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v33, "token"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v33, "nfc_token"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v8, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 620
    .local v8, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v33, ""

    const v34, 0x7f09026f

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x1

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v33

    new-instance v34, Lcom/samsung/privilege/activity/MainPagerActivity$7;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$7;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v25

    move-object/from16 v3, v34

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_1ad

    .line 600
    .end local v8    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v25    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v27    # "strEncrpt":Ljava/lang/String;
    .end local v31    # "url":Ljava/lang/String;
    .local v9, "e":Lorg/json/JSONException;
    .restart local v14    # "i":I
    .restart local v19    # "jsonRoot":Lorg/json/JSONArray;
    :cond_3c9
    :try_start_3c9
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Invalid NFC Action:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V
    :try_end_3e8
    .catch Ljava/lang/Exception; {:try_start_3c9 .. :try_end_3e8} :catch_2f0

    goto/16 :goto_294

    .line 681
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v14    # "i":I
    .end local v19    # "jsonRoot":Lorg/json/JSONArray;
    :cond_3ea
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3eb
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v14, v0, :cond_1ad

    .line 682
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/bzbs/bean/NFCTag;

    .line 684
    .local v21, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/16 v17, 0x0

    .line 685
    .local v17, "isSkip":Z
    if-lez v14, :cond_437

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "ReDeem"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_437

    .line 686
    add-int/lit8 v33, v14, -0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/bzbs/bean/NFCTag;

    .line 687
    .local v23, "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "Share"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_437

    .line 688
    const/16 v17, 0x1

    .line 692
    .end local v23    # "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    :cond_437
    if-nez v17, :cond_45f

    .line 693
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "Status"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_462

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 681
    :cond_45f
    :goto_45f
    add-int/lit8 v14, v14, 0x1

    goto :goto_3eb

    .line 695
    :cond_462
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "Share"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4b9

    .line 696
    const/16 v24, 0x0

    .line 698
    .local v24, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    add-int/lit8 v33, v14, 0x1

    :try_start_47d
    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    move-object/from16 v24, v0

    .line 699
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "ReDeem"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_49d
    .catch Ljava/lang/Exception; {:try_start_47d .. :try_end_49d} :catch_4b5

    move-result v33

    if-eqz v33, :cond_4b2

    .line 707
    :goto_4a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_45f

    .line 702
    :cond_4b2
    const/16 v24, 0x0

    goto :goto_4a0

    .line 704
    :catch_4b5
    move-exception v11

    .line 705
    .restart local v11    # "ex":Ljava/lang/Exception;
    const/16 v24, 0x0

    goto :goto_4a0

    .line 708
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v24    # "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    :cond_4b9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "CheckIn"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4e0

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v33, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_45f

    .line 710
    :cond_4e0
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    const-string/jumbo v34, "ReDeem"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_520

    .line 712
    add-int/lit8 v33, v14, 0x1

    :try_start_4f9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_517

    .line 713
    add-int/lit8 v33, v14, 0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/bzbs/bean/NFCTag;

    .line 714
    .local v22, "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    if-eqz v22, :cond_517

    .line 715
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_517
    .catch Ljava/lang/Exception; {:try_start_4f9 .. :try_end_517} :catch_543

    .line 721
    .end local v22    # "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    :cond_517
    :goto_517
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_1ad

    .line 726
    :cond_520
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Invalid NFC ActionName:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_45f

    .line 718
    :catch_543
    move-exception v33

    goto :goto_517

    .line 505
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "blnIsAdmin":Z
    .end local v12    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    .end local v14    # "i":I
    .end local v16    # "isLoggedIn":Z
    .end local v17    # "isSkip":Z
    .end local v20    # "messages":[Landroid/nfc/NdefMessage;
    .end local v21    # "objNFCTag":Lcom/bzbs/bean/NFCTag;
    .end local v26    # "payload":[B
    .end local v28    # "strTasks":Ljava/lang/String;
    .end local v29    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v30    # "tokenBuzzebees":Ljava/lang/String;
    .restart local v15    # "intent":Landroid/content/Intent;
    :catch_545
    move-exception v33

    goto/16 :goto_b5

    .line 489
    :catch_548
    move-exception v33

    goto/16 :goto_56
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 376
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    const-string/jumbo v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    const-string/jumbo v0, "gCurrentLanguage"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string/jumbo v0, "gCurrentCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public refreshLayoutAfterLogin(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    .line 1415
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    .line 1417
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialPoint()V

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPoints()V

    .line 1419
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialMenuContent()V

    .line 1421
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    .line 1423
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkAndShowDialogMessagePopup()V

    .line 1425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1427
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$19;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1452
    return-void
.end method

.method public setRedNoti()V
    .registers 5

    .prologue
    .line 776
    const v2, 0x7f10016d

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 777
    .local v0, "layoutRedNoti":Landroid/widget/RelativeLayout;
    const v2, 0x7f10016e

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 779
    .local v1, "tvRedNoti":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_28

    .line 780
    const-string/jumbo v2, " 0 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 796
    .end local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .end local v1    # "tvRedNoti":Landroid/widget/TextView;
    :goto_27
    return-void

    .line 785
    .restart local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .restart local v1    # "tvRedNoti":Landroid/widget/TextView;
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_41

    .line 787
    const-string/jumbo v2, "9+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_27

    .line 793
    .end local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .end local v1    # "tvRedNoti":Landroid/widget/TextView;
    :catch_3f
    move-exception v2

    goto :goto_27

    .line 790
    .restart local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .restart local v1    # "tvRedNoti":Landroid/widget/TextView;
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_3f

    goto :goto_27
.end method

.method public setSelectedDashboard()V
    .registers 3

    .prologue
    .line 2631
    const v1, 0x7f100173

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2632
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2633
    return-void
.end method

.method public setSelectedTabByCat(Ljava/lang/String;)V
    .registers 7
    .param p1, "param_cat"    # Ljava/lang/String;

    .prologue
    .line 2579
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 2581
    :try_start_9
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2582
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "cat"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2583
    const v3, 0x7f100173

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 2584
    .local v2, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_2d

    .line 2592
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2c
    return-void

    .line 2588
    :catch_2d
    move-exception v3

    .line 2579
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setSelectedTabByDashboard(Ljava/lang/String;)V
    .registers 10
    .param p1, "param_dashboard_key"    # Ljava/lang/String;

    .prologue
    .line 2595
    const/4 v4, 0x0

    .line 2596
    .local v4, "isFoundDashboard":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_2e

    .line 2598
    :try_start_a
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v6, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2599
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "dashboard_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 2600
    const v6, 0x7f100173

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 2601
    .local v5, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_65

    .line 2603
    const/4 v4, 0x1

    .line 2611
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2e
    if-nez v4, :cond_64

    .line 2612
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "from_noti_alert"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2614
    .local v1, "from_noti_alert":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2615
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "header_en"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2616
    const-string/jumbo v6, "header"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2617
    const-string/jumbo v6, "cat"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2618
    const-string/jumbo v6, "dashboard_key"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2619
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2621
    .end local v1    # "from_noti_alert":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_64
    return-void

    .line 2607
    :catch_65
    move-exception v6

    .line 2596
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setSelectedTabByIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 2624
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 2625
    const v1, 0x7f100173

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2626
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2628
    .end local v0    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_14
    return-void
.end method

.method public showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "is_auto_login_fb"    # Z

    .prologue
    .line 931
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_74

    .line 932
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 934
    .local v2, "dialogConfirm":Landroid/app/Dialog;
    const v0, 0x7f040109

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 936
    const v0, 0x7f100152

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 937
    .local v8, "tvMessage":Landroid/widget/TextView;
    const v0, 0x7f100559

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 938
    .local v3, "imgOk":Landroid/widget/ImageView;
    const v0, 0x7f100534

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 939
    .local v9, "tvOk":Landroid/widget/TextView;
    const v0, 0x7f10055a

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 941
    .local v7, "imgNo":Landroid/widget/ImageView;
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4b

    .line 944
    const v0, 0x7f09031c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    :cond_4b
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/MainPagerActivity$12;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 960
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$13;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$13;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 970
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 971
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 973
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 975
    .end local v2    # "dialogConfirm":Landroid/app/Dialog;
    .end local v3    # "imgOk":Landroid/widget/ImageView;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "imgNo":Landroid/widget/ImageView;
    .end local v8    # "tvMessage":Landroid/widget/TextView;
    .end local v9    # "tvOk":Landroid/widget/TextView;
    :cond_74
    return-void
.end method

.method public showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 848
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 849
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 851
    .local v1, "dialog":Landroid/app/Dialog;
    const v4, 0x7f04010b

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 853
    const v4, 0x7f100152

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 855
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    const v4, 0x7f100156

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 858
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$9;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$9;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 867
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 868
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 869
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 871
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 873
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "layoutClose":Landroid/widget/RelativeLayout;
    .end local v3    # "tvMessage":Landroid/widget/TextView;
    :cond_4a
    return-void
.end method

.method public showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 978
    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 979
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x1030010

    invoke-direct {v1, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 981
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v5, 0x7f040112

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 983
    const v5, 0x7f100152

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 985
    .local v4, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    const v5, 0x7f100533

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 988
    .local v3, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$14;

    invoke-direct {v5, p0, v1, v3, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$14;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    const v5, 0x7f10055e

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1002
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$15;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1012
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1013
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1015
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1017
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "layoutNo":Landroid/widget/RelativeLayout;
    .end local v3    # "layoutOk":Landroid/widget/RelativeLayout;
    .end local v4    # "tvMessage":Landroid/widget/TextView;
    :cond_5b
    return-void
.end method

.method public showDialogPointTransferConfirm(Landroid/content/Context;)V
    .registers 10
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 1020
    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_88

    .line 1021
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1023
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v7, 0x7f040112

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 1025
    const v7, 0x7f100152

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1026
    .local v4, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f100534

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1027
    .local v6, "tvOk":Landroid/widget/TextView;
    const v7, 0x7f10055b

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1029
    .local v5, "tvNo":Landroid/widget/TextView;
    const v7, 0x7f09032b

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    const v7, 0x7f09031a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    const v7, 0x7f090325

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    const v7, 0x7f100533

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1034
    .local v3, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {v7, p0, v1, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$16;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1069
    const v7, 0x7f10055e

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1070
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/MainPagerActivity$17;

    invoke-direct {v7, p0, v1, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$17;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1102
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1103
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1105
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1107
    .end local v0    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "dialogPoint":Landroid/app/Dialog;
    .end local v2    # "layoutNo":Landroid/widget/RelativeLayout;
    .end local v3    # "layoutOk":Landroid/widget/RelativeLayout;
    .end local v4    # "tvMessage":Landroid/widget/TextView;
    .end local v5    # "tvNo":Landroid/widget/TextView;
    .end local v6    # "tvOk":Landroid/widget/TextView;
    :cond_88
    return-void
.end method

.method public showDialogTerm(Landroid/content/Context;)V
    .registers 15
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 876
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_99

    .line 877
    new-instance v8, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v8, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 878
    .local v8, "dialogTerm":Landroid/app/Dialog;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 879
    const v1, 0x7f040120

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 881
    const v1, 0x7f1001cd

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 882
    .local v0, "webView1":Landroid/webkit/WebView;
    const v1, 0x7f1005da

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 883
    .local v10, "imgCancel":Landroid/widget/ImageView;
    const v1, 0x7f1005db

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 886
    .local v9, "imgAccept":Landroid/widget/ImageView;
    :try_start_36
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 887
    .local v12, "res":Landroid/content/res/Resources;
    const v1, 0x7f080003

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 889
    .local v11, "in_s":Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v7, v1, [B

    .line 890
    .local v7, "b":[B
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    .line 894
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 895
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 896
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 899
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_73} :catch_9a

    .line 904
    .end local v7    # "b":[B
    .end local v11    # "in_s":Ljava/io/InputStream;
    .end local v12    # "res":Landroid/content/res/Resources;
    :goto_73
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$10;

    invoke-direct {v1, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$10;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$11;

    invoke-direct {v1, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$11;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 923
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 924
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 926
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 928
    .end local v0    # "webView1":Landroid/webkit/WebView;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "dialogTerm":Landroid/app/Dialog;
    .end local v9    # "imgAccept":Landroid/widget/ImageView;
    .end local v10    # "imgCancel":Landroid/widget/ImageView;
    :cond_99
    return-void

    .line 900
    .restart local v0    # "webView1":Landroid/webkit/WebView;
    .restart local v8    # "dialogTerm":Landroid/app/Dialog;
    .restart local v9    # "imgAccept":Landroid/widget/ImageView;
    .restart local v10    # "imgCancel":Landroid/widget/ImageView;
    :catch_9a
    move-exception v1

    goto :goto_73
.end method
