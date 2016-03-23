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

    .line 106
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 108
    const-class v0, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    .line 119
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    .line 122
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 125
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gScreenHeight:I

    .line 126
    iput v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gScreenWidth:I

    .line 265
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->REQUEST_CODE_ASK_PERMISSIONS_QR:I

    .line 698
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 1060
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    .line 1061
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    .line 1062
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    .line 1063
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    .line 1064
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    .line 1065
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    .line 1066
    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    .line 1067
    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    .line 1068
    const/16 v0, 0x9

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    .line 1069
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->saveLanguageToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->processJsonCategory(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/samsung/privilege/activity/MainPagerActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/privilege/activity/MainPagerActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/MainPagerActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCResult;)Lcom/bzbs/bean/NFCResult;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;
    .param p1, "x1"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "x2"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/privilege/activity/MainPagerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkMyGiftReload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkCacheAndLoadNew()V
    .registers 7

    .prologue
    .line 1943
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

    .line 1944
    .local v0, "cacheName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bzbs/util/LocalFileHelper;->readCatchFromSD(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1945
    .local v1, "catch_category":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1947
    const/4 v4, 0x0

    :try_start_41
    invoke-direct {p0, v1, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->processJsonCategory(Ljava/lang/String;Z)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_5a

    .line 1952
    :goto_44
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bzbs/util/LocalFileHelper;->getCatchFileAge(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 1953
    .local v2, "times_sec":J
    const-wide/16 v4, 0xe10

    cmp-long v4, v2, v4

    if-lez v4, :cond_55

    .line 1954
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->loadCampaignCategory()V

    .line 1959
    .end local v2    # "times_sec":J
    :cond_55
    :goto_55
    return-void

    .line 1957
    :cond_56
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->loadCampaignCategory()V

    goto :goto_55

    .line 1948
    :catch_5a
    move-exception v4

    goto :goto_44
.end method

.method private checkMyGiftReload()Z
    .registers 8

    .prologue
    .line 1193
    const/4 v3, 0x0

    .line 1194
    .local v3, "is_show_mygift":Z
    :try_start_1
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1195
    .local v5, "my_model":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetShowMyGiftOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v4, "json_show_mygift_on":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_22

    .line 1201
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "allow_model":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_26

    move-result v6

    if-eqz v6, :cond_23

    .line 1203
    const/4 v3, 0x1

    .line 1210
    .end local v0    # "allow_model":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "is_show_mygift":Z
    .end local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .end local v5    # "my_model":Ljava/lang/String;
    :cond_22
    :goto_22
    return v3

    .line 1196
    .restart local v0    # "allow_model":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "is_show_mygift":Z
    .restart local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .restart local v5    # "my_model":Ljava/lang/String;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1209
    .end local v0    # "allow_model":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "json_show_mygift_on":Lorg/json/JSONArray;
    .end local v5    # "my_model":Ljava/lang/String;
    :catch_26
    move-exception v1

    .line 1210
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_22
.end method

.method private checkNFC()V
    .registers 10

    .prologue
    .line 2495
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_1b

    .line 2496
    const-string/jumbo v6, "nfc"

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/NfcManager;

    .line 2498
    .local v4, "manager":Landroid/nfc/NfcManager;
    invoke-virtual {v4}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 2500
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1b

    .line 2501
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2537
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_1b
    :goto_1b
    return-void

    .line 2504
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .restart local v4    # "manager":Landroid/nfc/NfcManager;
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetIsNFCWarning(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 2505
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/bzbs/data/UserLogin;->SetIsNFCWarning(Landroid/content/Context;Z)Z

    .line 2507
    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$37;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$37;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 2524
    .local v2, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2526
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v5, ""

    .line 2528
    .local v5, "strNfc_warning_disable":Ljava/lang/String;
    const v6, 0x7f090249

    :try_start_3e
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_58

    move-result-object v5

    .line 2532
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

    .line 2529
    :catch_58
    move-exception v3

    .line 2530
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
    .line 1933
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$33;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$33;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V
    .registers 10
    .param p1, "nfcPlan"    # Lcom/bzbs/bean/NFCPlan;
    .param p2, "nfcResult"    # Lcom/bzbs/bean/NFCResult;

    .prologue
    const v6, 0x7f090243

    .line 1137
    const-string/jumbo v3, ""

    .line 1138
    .local v3, "token_facebook":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 1139
    .local v2, "token":Lcom/facebook/AccessToken;
    if-eqz v2, :cond_10

    .line 1140
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 1143
    :cond_10
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "checkin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1144
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=checkin"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    if-eqz v3, :cond_48

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 1146
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v4, p0, v5}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 1189
    :goto_47
    return-void

    .line 1148
    :cond_48
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1150
    :cond_52
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "post"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1151
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=post"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    if-eqz v3, :cond_8a

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1153
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

    .line 1155
    :cond_8a
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_47

    .line 1157
    :cond_94
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "share"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    .line 1158
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=share"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    new-instance v0, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v4, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, p1, p2, v5}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    .line 1160
    .local v0, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/4 v1, 0x0

    .line 1161
    .local v1, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    iget-object v4, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    if-eqz v4, :cond_cf

    .line 1162
    iget-object v4, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    iget-object v4, v4, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    const-string/jumbo v5, "ReDeem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 1163
    iget-object v1, v0, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;

    .line 1166
    :cond_cf
    if-eqz v3, :cond_e1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e1

    .line 1167
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v0, v1, p0, v4}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto/16 :goto_47

    .line 1169
    :cond_e1
    sget-object v4, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1171
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

    .line 1172
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=openapp"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenApp(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1174
    :cond_118
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "link"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1175
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=link"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1177
    :cond_144
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_170

    .line 1178
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=video"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_OpenUrl(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1180
    :cond_170
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "campaign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 1181
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=campaign"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1183
    :cond_19c
    iget-object v4, p1, Lcom/bzbs/bean/NFCPlan;->Type:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "redeem"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 1184
    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "NFCType=redeem"

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    new-instance v4, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v5, "nfc"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p1, p2, v6}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_47

    .line 1187
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
    .line 1351
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1353
    .local v0, "fontSamsung":Landroid/graphics/Typeface;
    const v1, 0x7f1000b7

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1354
    const v1, 0x7f10062c

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1355
    const v1, 0x7f10062d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1357
    const v1, 0x7f100630

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1358
    const v1, 0x7f100633

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1359
    const v1, 0x7f100636

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1360
    const v1, 0x7f100639

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1361
    const v1, 0x7f10063b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1362
    const v1, 0x7f10063d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1363
    const v1, 0x7f10063f

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1364
    const v1, 0x7f100641

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1365
    const v1, 0x7f100645

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1366
    return-void
.end method

.method private initialMenuContent()V
    .registers 9

    .prologue
    const v7, 0x7f100631

    const v6, 0x7f10062d

    const v5, 0x7f1000b7

    const/16 v4, 0x8

    .line 1393
    const v2, 0x7f100645

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1394
    .local v0, "textLogOut":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_156

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_156

    .line 1396
    const v2, 0x7f0901e0

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    :goto_31
    const v2, 0x7f10062e

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 1403
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1412
    :goto_54
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 1413
    const v2, 0x7f100642

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1414
    const v2, 0x7f100643

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    :cond_6e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 1418
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Thailand"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    :goto_8b
    const v2, 0x7f10062c

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090102

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1429
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1033"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1fd

    .line 1430
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 1431
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090106

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_d0
    :goto_d0
    const v2, 0x7f100633

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e2

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1446
    const v2, 0x7f100636

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090208

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1447
    const v2, 0x7f100639

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ea

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    const v2, 0x7f10063b

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e3

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1449
    const v2, 0x7f10063d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901e4

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    const v2, 0x7f10063f

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901eb

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1451
    const v2, 0x7f100641

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901db

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1452
    return-void

    .line 1398
    :cond_156
    const v2, 0x7f0901df

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_31

    .line 1407
    :cond_162
    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_54

    .line 1419
    :cond_16b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18a

    .line 1420
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Laos"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1421
    :cond_18a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 1422
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift Myanmar"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1424
    :cond_1a9
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Galaxy Gift"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8b

    .line 1433
    :cond_1b7
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "768830479847872"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1da

    .line 1434
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090104

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1436
    :cond_1da
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1437
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090105

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0

    .line 1441
    :cond_1fd
    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090103

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d0
.end method

.method private loadCampaignCategory()V
    .registers 8

    .prologue
    .line 1963
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

    .line 1965
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1966
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

    .line 1967
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1968
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$34;

    invoke-direct {v5, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$34;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 2028
    return-void
.end method

.method private openDrawerRunnable()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 1923
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$32;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$32;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    return-object v0
.end method

.method private processJsonCategory(Ljava/lang/String;Z)V
    .registers 29
    .param p1, "response_text"    # Ljava/lang/String;
    .param p2, "is_from_cache"    # Z

    .prologue
    .line 2031
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2093
    .local v12, "listCats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/CampaignCategory;>;"
    :try_start_5
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2094
    .local v11, "jsonRoot":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_f9

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_fa

    .line 2096
    :try_start_15
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 2097
    .local v10, "jsonItem":Lorg/json/JSONObject;
    new-instance v13, Lcom/bzbs/bean/CampaignCategory;

    const-string/jumbo v22, "name"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Lcom/bzbs/bean/CampaignCategory;-><init>(Ljava/lang/String;)V

    .line 2098
    .local v13, "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    const-string/jumbo v22, "id"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->id:Ljava/lang/String;

    .line 2099
    const-string/jumbo v22, "mode"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->mode:Ljava/lang/String;

    .line 2100
    const-string/jumbo v22, "tags"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->tags:Ljava/lang/String;

    .line 2101
    const-string/jumbo v22, "name_en"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->name_en:Ljava/lang/String;

    .line 2102
    const-string/jumbo v22, "name_th"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->name_th:Ljava/lang/String;

    .line 2103
    const-string/jumbo v22, "id"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Lcom/bzbs/bean/CampaignCategory;->cat:I

    .line 2104
    const-string/jumbo v22, "count"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v13, Lcom/bzbs/bean/CampaignCategory;->count:I

    .line 2105
    const-string/jumbo v22, "dashboard_key"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    .line 2106
    const-string/jumbo v22, "list_config"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->list_config:Ljava/lang/String;

    .line 2108
    const-string/jumbo v22, "image_url_active"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->image_url_active:Ljava/lang/String;

    .line 2109
    const-string/jumbo v22, "image_url_inactive"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v13, Lcom/bzbs/bean/CampaignCategory;->image_url_inactive:Ljava/lang/String;

    .line 2111
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 2112
    .local v19, "str_category_config":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v13, Lcom/bzbs/bean/CampaignCategory;->cat:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "=false]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f3

    .line 2094
    .end local v10    # "jsonItem":Lorg/json/JSONObject;
    .end local v13    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v19    # "str_category_config":Ljava/lang/String;
    :goto_ef
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    .line 2115
    .restart local v10    # "jsonItem":Lorg/json/JSONObject;
    .restart local v13    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .restart local v19    # "str_category_config":Ljava/lang/String;
    :cond_f3
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_f6} :catch_f7

    goto :goto_ef

    .line 2117
    .end local v10    # "jsonItem":Lorg/json/JSONObject;
    .end local v13    # "objCampaignCategory":Lcom/bzbs/bean/CampaignCategory;
    .end local v19    # "str_category_config":Ljava/lang/String;
    :catch_f7
    move-exception v22

    goto :goto_ef

    .line 2121
    .end local v7    # "i":I
    .end local v11    # "jsonRoot":Lorg/json/JSONArray;
    :catch_f9
    move-exception v22

    .line 2125
    :cond_fa
    const/4 v9, 0x0

    .line 2126
    .local v9, "isRefreshAdapter":Z
    const/4 v9, 0x1

    .line 2128
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_251

    .line 2129
    invoke-static/range {p0 .. p0}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;->with(Landroid/content/Context;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    move-result-object v15

    .line 2132
    .local v15, "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_107
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_156

    .line 2133
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/bzbs/bean/CampaignCategory;

    .line 2134
    .local v14, "objCat":Lcom/bzbs/bean/CampaignCategory;
    iget-object v0, v14, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_140

    iget-object v0, v14, Lcom/bzbs/bean/CampaignCategory;->dashboard_key:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_140

    .line 2136
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/bzbs/bean/CampaignCategory;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-class v23, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->add(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    .line 2132
    :goto_13d
    add-int/lit8 v7, v7, 0x1

    goto :goto_107

    .line 2138
    :cond_140
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/bzbs/bean/CampaignCategory;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bzbs/bean/CampaignCategory;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    const-class v23, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->add(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;

    goto :goto_13d

    .line 2142
    .end local v14    # "objCat":Lcom/bzbs/bean/CampaignCategory;
    :cond_156
    new-instance v22, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v23

    invoke-virtual {v15}, Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;->create()Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/support/v4/app/FragmentManager;Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems;Ljava/util/ArrayList;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    .line 2144
    const v22, 0x7f100171

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/ViewPager;

    .line 2145
    .local v20, "viewPager":Landroid/support/v4/view/ViewPager;
    sget-boolean v22, Lcom/bzbs/data/AppSetting;->CONFIG_PAGER_KEEP_MEMORY_ALL:Z

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_252

    .line 2146
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 2150
    :goto_195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2152
    const v22, 0x7f10016f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 2154
    .local v21, "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2155
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2156
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2157
    .local v5, "gScreenHeight":I
    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2158
    .local v6, "gScreenWidth":I
    div-int/lit8 v22, v6, 0x3

    const/16 v23, 0x0

    div-int/lit8 v24, v6, 0x3

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setPadding(IIII)V

    .line 2159
    new-instance v22, Lcom/samsung/privilege/activity/MainPagerActivity$35;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/samsung/privilege/activity/MainPagerActivity$35;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;)V

    invoke-virtual/range {v21 .. v22}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setCustomTabView(Lcom/ogaclejapan/smarttablayout/SmartTabLayout$TabProvider;)V

    .line 2220
    new-instance v22, Lcom/samsung/privilege/activity/MainPagerActivity$36;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v12, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$36;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/util/ArrayList;Lcom/ogaclejapan/smarttablayout/SmartTabLayout;)V

    invoke-virtual/range {v21 .. v22}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2288
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 2291
    :try_start_1f1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 2292
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "category_noti"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2293
    .local v16, "param_category_noti":Ljava/lang/String;
    if-eqz v16, :cond_214

    const-string/jumbo v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_214

    .line 2294
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByCat(Ljava/lang/String;)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_214} :catch_261

    .line 2301
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "param_category_noti":Ljava/lang/String;
    :cond_214
    :goto_214
    :try_start_214
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 2302
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "dashboard_key"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2303
    .local v18, "param_dashboard_key":Ljava/lang/String;
    if-eqz v18, :cond_237

    const-string/jumbo v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_237

    .line 2304
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByDashboard(Ljava/lang/String;)V
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_237} :catch_25f

    .line 2311
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v18    # "param_dashboard_key":Ljava/lang/String;
    :cond_237
    :goto_237
    :try_start_237
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 2312
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "current_tab"

    const/16 v23, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2313
    .local v17, "param_current_tab":I
    if-ltz v17, :cond_251

    .line 2314
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedTabByIndex(I)V
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_251} :catch_25d

    .line 2320
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "gScreenHeight":I
    .end local v6    # "gScreenWidth":I
    .end local v7    # "i":I
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v15    # "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .end local v17    # "param_current_tab":I
    .end local v20    # "viewPager":Landroid/support/v4/view/ViewPager;
    .end local v21    # "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    :cond_251
    :goto_251
    return-void

    .line 2148
    .restart local v7    # "i":I
    .restart local v15    # "objCreator":Lcom/ogaclejapan/smarttablayout/utils/v4/FragmentPagerItems$Creator;
    .restart local v20    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_252
    const/16 v22, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto/16 :goto_195

    .line 2316
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v5    # "gScreenHeight":I
    .restart local v6    # "gScreenWidth":I
    .restart local v21    # "viewPagerTab":Lcom/ogaclejapan/smarttablayout/SmartTabLayout;
    :catch_25d
    move-exception v22

    goto :goto_251

    .line 2306
    :catch_25f
    move-exception v22

    goto :goto_237

    .line 2296
    :catch_261
    move-exception v22

    goto :goto_214
.end method

.method private requestOpenQR()V
    .registers 4

    .prologue
    .line 1766
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/QRLandingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1767
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1768
    return-void
.end method

.method private restartActivity()V
    .registers 4

    .prologue
    .line 1510
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1511
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1513
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1514
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1515
    const-string/jumbo v1, "current_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1516
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1517
    const-string/jumbo v1, "messageGCM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1518
    const-string/jumbo v1, "from_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1519
    const-string/jumbo v1, "from_noti_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v1, "category_noti"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1521
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1522
    const-string/jumbo v1, "dashboard_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v1, "from_noti_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1524
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1528
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5e} :catch_5f

    .line 1532
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_5e
    return-void

    .line 1529
    :catch_5f
    move-exception v1

    goto :goto_5e
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 320
    const-string/jumbo v0, "gIsNFCRedeem"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 321
    const-string/jumbo v0, "gCurrentLanguage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 322
    const-string/jumbo v0, "gCurrentCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 324
    :cond_2c
    return-void
.end method

.method private saveLanguageToServer(Ljava/lang/String;)V
    .registers 11
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1622
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/bzbs/data/UserLogin;->SetLocale(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1624
    new-instance v0, Lcom/bzbs/util/ConnectionDetector;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 1625
    .local v0, "cd":Lcom/bzbs/util/ConnectionDetector;
    invoke-virtual {v0}, Lcom/bzbs/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v5

    if-ne v5, v8, :cond_78

    .line 1626
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1628
    .local v3, "tokenBzBs":Ljava/lang/String;
    if-eqz v3, :cond_74

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 1629
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

    .line 1630
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 1631
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v5, "token"

    invoke-virtual {v2, v5, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    const-string/jumbo v5, "locale"

    invoke-virtual {v2, v5, p1}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1635
    .local v1, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v5, ""

    const v6, 0x7f09026e

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {p0, v5, v6, v8, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 1636
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$23;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$23;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v1, v5, v4, v2, v6}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1670
    .end local v1    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v3    # "tokenBzBs":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    :goto_73
    return-void

    .line 1665
    .restart local v3    # "tokenBzBs":Ljava/lang/String;
    :cond_74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    goto :goto_73

    .line 1668
    .end local v3    # "tokenBzBs":Ljava/lang/String;
    :cond_78
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->restartActivity()V

    goto :goto_73
.end method

.method private showDialogExit(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_35

    .line 362
    :try_start_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "Yes"

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$4;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$4;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string/jumbo v4, "No"

    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$3;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    .line 389
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 395
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    .line 400
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_35
    :goto_35
    return-void

    .line 396
    :catch_36
    move-exception v2

    .line 397
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
    .line 1893
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1895
    .local v1, "dialogSerial":Landroid/app/Dialog;
    const v4, 0x7f040107

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1897
    const v4, 0x7f10054d

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1898
    .local v3, "layoutYes":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$30;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$30;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1908
    const v4, 0x7f10054f

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 1909
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$31;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$31;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1915
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1916
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1917
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1919
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1920
    return-void
.end method

.method private showMessageOKCancel(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1771
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1772
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    .line 1773
    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Cancel"

    const/4 v2, 0x0

    .line 1774
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1776
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1777
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$2;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 2324
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2326
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

    .line 701
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    if-nez v2, :cond_3d

    .line 702
    iput-boolean v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 705
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetAndRemoveQueueMessagePopup(Landroid/content/Context;)Lcom/bzbs/bean/MessagePopup;

    move-result-object v1

    .line 706
    .local v1, "messagePopup":Lcom/bzbs/bean/MessagePopup;
    if-eqz v1, :cond_d8

    .line 708
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 709
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    if-eqz v2, :cond_59

    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 710
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, "2043"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 711
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 745
    .end local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_3d
    :goto_3d
    return-void

    .line 712
    .restart local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_3e
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_id:Ljava/lang/String;

    const-string/jumbo v3, "2045"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 713
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4e} :catch_4f

    goto :goto_3d

    .line 741
    .end local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :catch_4f
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    goto :goto_3d

    .line 715
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "messagePopup":Lcom/bzbs/bean/MessagePopup;
    :cond_53
    :try_start_53
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 718
    :cond_59
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_text:Ljava/lang/String;

    invoke-virtual {p0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3d

    .line 720
    :cond_5f
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "point"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 721
    iget v2, v1, Lcom/bzbs/bean/MessagePopup;->point_number:I

    iget-object v3, v1, Lcom/bzbs/bean/MessagePopup;->point_from:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, v4, p0}, Lcom/samsung/privilege/util/AnimationPointGift;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    goto :goto_3d

    .line 722
    :cond_74
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "badge"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 723
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v2, v2, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v3, "Newbie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 724
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 725
    :cond_94
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v2, v2, Lcom/bzbs/bean/BadgeAlert;->name:Ljava/lang/String;

    const-string/jumbo v3, "GALAXY Newbie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 726
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 728
    :cond_a9
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->badgeAlert:Lcom/bzbs/bean/BadgeAlert;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v3, p0}, Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3d

    .line 730
    :cond_b1
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "welcome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 731
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v2}, Lcom/samsung/privilege/util/DialogWelcome;->showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_3d

    .line 732
    :cond_c3
    iget-object v2, v1, Lcom/bzbs/bean/MessagePopup;->message_type:Ljava/lang/String;

    const-string/jumbo v3, "term"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 733
    invoke-virtual {p0, p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogTerm(Landroid/content/Context;)V

    goto/16 :goto_3d

    .line 735
    :cond_d3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    goto/16 :goto_3d

    .line 738
    :cond_d8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsShowingMessage:Z

    .line 739
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkNFC()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_de} :catch_4f

    goto/16 :goto_3d
.end method

.method public doAboutUs(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1849
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1851
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$29;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$29;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1859
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click About Us"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    return-void
.end method

.method public doChangeLanguage(Landroid/view/View;)V
    .registers 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f10053c

    const v7, 0x7f100537

    const v6, 0x7f020357

    const v5, 0x7f02027e

    const/16 v4, 0x8

    .line 1535
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1536
    .local v1, "dialog":Landroid/app/Dialog;
    const v2, 0x7f040104

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 1539
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "402705486466922"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 1540
    const v2, 0x7f100535

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901ab

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    const v2, 0x7f100541

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    :cond_59
    :goto_59
    const v2, 0x7f100536

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1557
    const v2, 0x7f10053b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1558
    const v2, 0x7f100540

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1559
    const v2, 0x7f100545

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1560
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1033"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 1561
    const v2, 0x7f100536

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1570
    :cond_a6
    :goto_a6
    const v2, 0x7f100532

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$19;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$19;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1581
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$20;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$20;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1592
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$21;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$21;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    const v2, 0x7f100541

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/MainPagerActivity$22;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$22;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1615
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1616
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1618
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1619
    return-void

    .line 1544
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

    .line 1545
    const v2, 0x7f100535

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901a9

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1546
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    const v2, 0x7f100541

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1549
    :cond_132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "517155661760483"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1550
    const v2, 0x7f100535

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0901aa

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1551
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1552
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1553
    const v2, 0x7f100541

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_59

    .line 1562
    :cond_171
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1054"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 1563
    const v2, 0x7f10053b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1564
    :cond_190
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 1565
    const v2, 0x7f100540

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a6

    .line 1566
    :cond_1af
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1109"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1567
    const v2, 0x7f100545

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
    .line 1803
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1804
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1823
    :goto_10
    return-void

    .line 1806
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1808
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1810
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$27;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$27;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1821
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click History"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1818
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
    .line 1863
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1864
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 1865
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {p0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Log Out"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    :goto_25
    return-void

    .line 1869
    :cond_26
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "menu"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Log In"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25
.end method

.method public doLuckyDraw(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1711
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/WinnersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1713
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Winner"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public doMarketPlace(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1705
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1707
    const-string/jumbo v0, "Menu"

    const-string/jumbo v1, "Click Marketplace"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    return-void
.end method

.method public doMenu(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1503
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->openDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1505
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Menu Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    return-void
.end method

.method public doMyAccount(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1780
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1781
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1800
    :goto_10
    return-void

    .line 1783
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1784
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1785
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1787
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$26;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$26;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1798
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click My Account Settings"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1795
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
    .line 1673
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1674
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1692
    :goto_10
    return-void

    .line 1676
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1677
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1678
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1680
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$24;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$24;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1690
    :goto_41
    const-string/jumbo v1, "Main Page"

    const-string/jumbo v2, "Click Notifications Icon"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1687
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
    .line 1876
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1877
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1884
    :goto_13
    return-void

    .line 1880
    :cond_14
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "Menu"

    const-string/jumbo v4, "point_caption"

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string/jumbo v1, "Main Page"

    const-string/jumbo v2, "Click You Are Not Logged In"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public doPointQuestion(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogMyPoint;->showDialogMyPoint(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1889
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click My Points"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    return-void
.end method

.method public doRequestHelp(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1826
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1827
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1846
    :goto_10
    return-void

    .line 1829
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1831
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1833
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$28;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$28;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1844
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Request Help"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1841
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
    .line 1717
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1718
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1763
    :goto_10
    return-void

    .line 1720
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_4b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 1722
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1724
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/privilege/activity/MainPagerActivity$25;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$25;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1761
    :goto_41
    const-string/jumbo v1, "Menu"

    const-string/jumbo v2, "Click Scan QR Code"

    invoke-static {v1, v2}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 1758
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
    .line 1695
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/samsung/privilege/util/DialogSearch;->showDialogSearch(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1697
    const-string/jumbo v0, "Main Page"

    const-string/jumbo v1, "Click Search Icon"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    return-void
.end method

.method public doSpecialDeal(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1702
    return-void
.end method

.method public getPoints()V
    .registers 9

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    .local v1, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v1, :cond_60

    const-string/jumbo v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_60

    .line 1457
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

    .line 1458
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

    .line 1459
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 1460
    .local v0, "client":Lcom/loopj/android/http/AsyncHttpClient;
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1461
    .local v2, "startTime":J
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/samsung/privilege/activity/MainPagerActivity$18;

    invoke-direct {v6, p0, v2, v3}, Lcom/samsung/privilege/activity/MainPagerActivity$18;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;J)V

    invoke-virtual {v0, v5, v4, v6}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 1500
    .end local v0    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v2    # "startTime":J
    .end local v4    # "url":Ljava/lang/String;
    :cond_60
    return-void
.end method

.method public initialPoint()V
    .registers 10

    .prologue
    const v8, 0x7f090272

    .line 1369
    const v6, 0x7f100170

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1370
    .local v4, "textHeaderPoint":Landroid/widget/TextView;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "###,###,###"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v0, "formatter":Ljava/text/NumberFormat;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v2

    .line 1373
    .local v2, "points":J
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 1374
    .local v1, "strPoints":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1375
    .local v5, "token":Ljava/lang/String;
    if-eqz v5, :cond_ab

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ab

    .line 1376
    const-wide/16 v6, 0x2

    cmp-long v6, v2, v6

    if-ltz v6, :cond_75

    .line 1377
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

    .line 1390
    :goto_74
    return-void

    .line 1382
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

    const v7, 0x7f090273

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

    .line 1388
    :cond_ab
    const v6, 0x7f090278

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_74
.end method

.method public networkAvailable()V
    .registers 5

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$16;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$16;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1237
    return-void
.end method

.method public networkUnavailable()V
    .registers 1

    .prologue
    .line 1242
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 296
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 298
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mi"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_1:I

    if-ne v0, v1, :cond_1a

    .line 1112
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    .line 1133
    :cond_19
    :goto_19
    return v2

    .line 1113
    :cond_1a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    if-ne v0, v1, :cond_32

    .line 1114
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1115
    :cond_32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    if-ne v0, v1, :cond_4b

    .line 1116
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1117
    :cond_4b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    if-ne v0, v1, :cond_64

    .line 1118
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1119
    :cond_64
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    if-ne v0, v1, :cond_7d

    .line 1120
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1121
    :cond_7d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    if-ne v0, v1, :cond_96

    .line 1122
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto :goto_19

    .line 1123
    :cond_96
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_7:I

    if-ne v0, v1, :cond_b0

    .line 1124
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1125
    :cond_b0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_8:I

    if-ne v0, v1, :cond_ca

    .line 1126
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1127
    :cond_ca
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_9:I

    if-ne v0, v1, :cond_e5

    .line 1128
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    invoke-direct {p0, v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->doActionNFC(Lcom/bzbs/bean/NFCPlan;Lcom/bzbs/bean/NFCResult;)V

    goto/16 :goto_19

    .line 1129
    :cond_e5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_10:I

    if-ne v0, v1, :cond_19

    .line 1130
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
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f10016e

    const/4 v10, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    :try_start_7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1b

    .line 140
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-string/jumbo v8, "#6A75BA"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c5

    .line 146
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    .line 150
    const v7, 0x7f040035

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->setContentView(I)V

    .line 151
    const v7, 0x10300f0

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->setTheme(I)V

    .line 153
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 155
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 158
    :try_start_56
    new-instance v7, Lcom/bzbs/event/NetworkStateReceiver;

    invoke-direct {v7}, Lcom/bzbs/event/NetworkStateReceiver;-><init>()V

    iput-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    .line 159
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    invoke-virtual {v7, p0}, Lcom/bzbs/event/NetworkStateReceiver;->addListener(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 160
    iget-object v7, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->networkStateReceiver:Lcom/bzbs/event/NetworkStateReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/samsung/privilege/activity/MainPagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6f} :catch_1c2

    .line 165
    :goto_6f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialFont()V

    .line 167
    if-nez p1, :cond_1af

    .line 183
    :goto_74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    .line 186
    :try_start_77
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "messageGCM"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/bzbs/bean/MessageGCM;

    .line 187
    .local v6, "paramMessageGCM":Lcom/bzbs/bean/MessageGCM;
    if-eqz v6, :cond_8e

    .line 188
    new-instance v7, Lcom/samsung/privilege/activity/MainPagerActivity$1;

    invoke-direct {v7, p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/bzbs/bean/MessageGCM;)V

    invoke-virtual {p0, v7}, Lcom/samsung/privilege/activity/MainPagerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    :cond_8e
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "messageGCM"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_98} :catch_1bf

    .line 204
    .end local v6    # "paramMessageGCM":Lcom/bzbs/bean/MessageGCM;
    :goto_98
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/bzbs/data/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "402705486466922"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b4

    .line 205
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :goto_b0
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "from_noti"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 226
    .local v5, "is_from_noti":Z
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1ae

    .line 227
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "from_noti_type"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "from_noti_type":Ljava/lang/String;
    if-eqz v4, :cond_1ae

    const-string/jumbo v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1ae

    .line 230
    const-string/jumbo v7, "cat"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_114

    .line 231
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "category_noti"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "categoryID":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "from_noti_alert"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "categoryName":Ljava/lang/String;
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Category"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "categoryID":Ljava/lang/String;
    .end local v1    # "categoryName":Ljava/lang/String;
    :cond_114
    const-string/jumbo v7, "dashboard"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_154

    .line 237
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "dashboard_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "dashboard_key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "from_noti_alert"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "from_noti_alert":Ljava/lang/String;
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Dashboard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v2    # "dashboard_key":Ljava/lang/String;
    .end local v3    # "from_noti_alert":Ljava/lang/String;
    :cond_154
    const-string/jumbo v7, "badge"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_166

    .line 243
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Badge"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_166
    const-string/jumbo v7, "message"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_178

    .line 247
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Msg"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_178
    const-string/jumbo v7, "message_beacon"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18a

    .line 251
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Msg Beacon"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_18a
    const-string/jumbo v7, "ewallet_pay"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19c

    .line 255
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Wallet Paid Success"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_19c
    const-string/jumbo v7, "ewallet_refund"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ae

    .line 259
    const-string/jumbo v7, "Push Notification"

    const-string/jumbo v8, "Click Wallet Refund Success"

    invoke-static {v7, v8}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v4    # "from_noti_type":Ljava/lang/String;
    :cond_1ae
    return-void

    .line 170
    .end local v5    # "is_from_noti":Z
    :cond_1af
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity;->restoreInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_74

    .line 207
    :cond_1b4
    invoke-virtual {p0, v11}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b0

    .line 200
    :catch_1bf
    move-exception v7

    goto/16 :goto_98

    .line 161
    :catch_1c2
    move-exception v7

    goto/16 :goto_6f

    .line 142
    :catch_1c5
    move-exception v7

    goto/16 :goto_1b
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

    .line 1073
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1074
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14d

    .line 1075
    const v0, 0x7f090247

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1076
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_3a

    .line 1077
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

    .line 1079
    :cond_3a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v5, :cond_57

    .line 1080
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_2:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1082
    :cond_57
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v6, :cond_74

    .line 1083
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_3:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1085
    :cond_74
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v7, :cond_91

    .line 1086
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_4:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1088
    :cond_91
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v8, :cond_ae

    .line 1089
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_5:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1091
    :cond_ae
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_cc

    .line 1092
    iget v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    iget v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->MENU_PLAN_6:I

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/NFCPlan;

    iget-object v0, v0, Lcom/bzbs/bean/NFCPlan;->PlanDetail:Ljava/lang/String;

    invoke-interface {p1, v4, v1, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1094
    :cond_cc
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_eb

    .line 1095
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

    .line 1097
    :cond_eb
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_10b

    .line 1098
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

    .line 1100
    :cond_10b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_12c

    .line 1101
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

    .line 1103
    :cond_12c
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gNfcResult:Lcom/bzbs/bean/NFCResult;

    iget-object v0, v0, Lcom/bzbs/bean/NFCResult;->planes_promp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_14d

    .line 1104
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

    .line 1107
    :cond_14d
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 328
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3b

    .line 335
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_noti"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 336
    .local v0, "is_from_noti":Z
    if-ne v0, v2, :cond_17

    .line 339
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 355
    .end local v0    # "is_from_noti":Z
    :goto_16
    return v2

    .line 341
    .restart local v0    # "is_from_noti":Z
    :cond_17
    const v3, 0x7f100171

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    .line 342
    .local v1, "viewPager":Landroid/support/v4/view/ViewPager;
    if-eqz v1, :cond_36

    .line 343
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-nez v3, :cond_32

    .line 344
    const-string/jumbo v3, "Do you want to exit?"

    const-string/jumbo v4, "Click \"Yes\" to exit."

    invoke-direct {p0, v3, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogExit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 347
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setSelectedDashboard()V

    goto :goto_16

    .line 351
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16

    .line 355
    .end local v0    # "is_from_noti":Z
    .end local v1    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_3b
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_16
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 669
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 670
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 671
    invoke-static {}, Lcom/bzbs/event/NotiEvents;->clearNotiListener()V

    .line 672
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 269
    packed-switch p1, :pswitch_data_1c

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 282
    :goto_7
    return-void

    .line 271
    :pswitch_8
    aget v0, p3, v1

    if-nez v0, :cond_10

    .line 273
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->requestOpenQR()V

    goto :goto_7

    .line 276
    :cond_10
    const-string/jumbo v0, "PERMISSION CAMERA Denied"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 269
    nop

    :pswitch_data_1c
    .packed-switch 0x64
        :pswitch_8
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public onResume()V
    .registers 37

    .prologue
    .line 404
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5f

    .line 410
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const-class v32, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v31, 0x4000000

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    const v31, 0x7f100171

    :try_start_3e
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/support/v4/view/ViewPager;

    .line 414
    .local v30, "viewPager":Landroid/support/v4/view/ViewPager;
    const-string/jumbo v31, "current_tab"

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_56} :catch_4d1

    .line 418
    .end local v30    # "viewPager":Landroid/support/v4/view/ViewPager;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    .line 665
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_5e
    return-void

    .line 424
    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_be

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/bzbs/data/UserLogin;->GetCategoryConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_be

    .line 426
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const-class v32, Lcom/samsung/privilege/activity/MainPagerActivity;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .restart local v14    # "intent":Landroid/content/Intent;
    const/high16 v31, 0x4000000

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 429
    const v31, 0x7f100171

    :try_start_9d
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/support/v4/view/ViewPager;

    .line 430
    .restart local v30    # "viewPager":Landroid/support/v4/view/ViewPager;
    const-string/jumbo v31, "current_tab"

    invoke-virtual/range {v30 .. v30}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_b5} :catch_4ce

    .line 434
    .end local v30    # "viewPager":Landroid/support/v4/view/ViewPager;
    :goto_b5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->finish()V

    goto :goto_5e

    .line 441
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_be
    sput-object p0, Lcom/bzbs/data/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 443
    new-instance v31, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static/range {v31 .. v31}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 444
    new-instance v31, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$UserNotiListener;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Lcom/samsung/privilege/activity/MainPagerActivity$1;)V

    invoke-static/range {v31 .. v31}, Lcom/bzbs/event/NotiEvents;->addNotiListener(Lcom/bzbs/event/NotiEvents$NotiListener;)V

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialPoint()V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPoints()V

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialMenuContent()V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->setRedNoti()V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v31

    const-string/jumbo v32, "action"

    invoke-virtual/range {v31 .. v32}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_109

    const-string/jumbo v31, ""

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_109

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->refreshLayoutAfterLogin(Ljava/lang/String;)V

    .line 458
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkAndShowDialogMessagePopup()V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/data/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v31

    if-nez v31, :cond_12c

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x1

    invoke-static/range {v31 .. v32}, Lcom/bzbs/data/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogWelcome;->showDialogWelcome(Landroid/content/Context;Landroid/os/Handler;)V

    .line 466
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Handler;Z)V

    .line 468
    sget v31, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v32, 0x9

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_194

    .line 469
    const-string/jumbo v31, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_194

    .line 470
    const/4 v15, 0x0

    .line 472
    .local v15, "isLoggedIn":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 473
    .local v28, "tokenBuzzebees":Ljava/lang/String;
    if-eqz v28, :cond_173

    const-string/jumbo v31, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_173

    .line 474
    const/4 v15, 0x1

    .line 477
    :cond_173
    if-nez v15, :cond_1b0

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Menu"

    const-string/jumbo v34, "nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    .end local v15    # "isLoggedIn":Z
    .end local v28    # "tokenBuzzebees":Ljava/lang/String;
    :cond_194
    :goto_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    new-instance v32, Lcom/samsung/privilege/activity/MainPagerActivity$6;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$6;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    const-wide/16 v34, 0x1388

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5e

    .line 480
    .restart local v15    # "isLoggedIn":Z
    .restart local v28    # "tokenBuzzebees":Ljava/lang/String;
    :cond_1b0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/util/NfcUtils;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v19

    .line 481
    .local v19, "messages":[Landroid/nfc/NdefMessage;
    const/16 v31, 0x0

    aget-object v31, v19, v31

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v31, v31, v32

    invoke-virtual/range {v31 .. v31}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v25

    .line 482
    .local v25, "payload":[B
    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 484
    .local v27, "strTasks":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    move/from16 v31, v0

    if-nez v31, :cond_194

    .line 485
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    .line 487
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v12, "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    const/4 v7, 0x0

    .line 491
    .local v7, "blnIsAdmin":Z
    :try_start_1e7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1ee} :catch_220

    move-result v31

    if-eqz v31, :cond_1f2

    .line 492
    const/4 v7, 0x1

    .line 499
    :cond_1f2
    :goto_1f2
    :try_start_1f2
    new-instance v18, Lorg/json/JSONArray;

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 500
    .local v18, "jsonRoot":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1fc
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1ff} :catch_279

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_29b

    .line 502
    :try_start_204
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 503
    .local v17, "jsonAction":Lorg/json/JSONObject;
    new-instance v31, Lcom/bzbs/bean/NFCTag;

    const-string/jumbo v32, "nfc"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/bzbs/bean/NFCTag;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_21d
    .catch Lorg/json/JSONException; {:try_start_204 .. :try_end_21d} :catch_243
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_21d} :catch_279

    .line 500
    .end local v17    # "jsonAction":Lorg/json/JSONObject;
    :goto_21d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1fc

    .line 494
    .end local v13    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONArray;
    :catch_220
    move-exception v10

    .line 495
    .local v10, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Exception := "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f2

    .line 504
    .end local v10    # "e2":Ljava/lang/Exception;
    .restart local v13    # "i":I
    .restart local v18    # "jsonRoot":Lorg/json/JSONArray;
    :catch_243
    move-exception v9

    .line 505
    .local v9, "e":Lorg/json/JSONException;
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v7, v0, :cond_352

    .line 506
    :try_start_24a
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Invalid NFC Action:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "\r\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_24a .. :try_end_278} :catch_279

    goto :goto_21d

    .line 512
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v13    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONArray;
    :catch_279
    move-exception v9

    .line 513
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Invalid NFC Task:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_29b
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_373

    .line 518
    const-string/jumbo v31, "\""

    const-string/jumbo v32, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 520
    .local v26, "strEncrpt":Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v32, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "api/nfc"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 521
    .local v29, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "CheckNFC="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    new-instance v24, Lcom/loopj/android/http/RequestParams;

    invoke-direct/range {v24 .. v24}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 524
    .local v24, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v31, "token"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v31, "nfc_token"

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v8, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v8}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    .line 528
    .local v8, "client":Lcom/loopj/android/http/AsyncHttpClient;
    const-string/jumbo v31, ""

    const v32, 0x7f09026e

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/activity/MainPagerActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    new-instance v32, Lcom/samsung/privilege/activity/MainPagerActivity$5;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$5;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v32

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto/16 :goto_194

    .line 508
    .end local v8    # "client":Lcom/loopj/android/http/AsyncHttpClient;
    .end local v24    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v26    # "strEncrpt":Ljava/lang/String;
    .end local v29    # "url":Ljava/lang/String;
    .local v9, "e":Lorg/json/JSONException;
    .restart local v13    # "i":I
    .restart local v18    # "jsonRoot":Lorg/json/JSONArray;
    :cond_352
    :try_start_352
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Invalid NFC Action:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_371} :catch_279

    goto/16 :goto_21d

    .line 589
    .end local v9    # "e":Lorg/json/JSONException;
    .end local v13    # "i":I
    .end local v18    # "jsonRoot":Lorg/json/JSONArray;
    :cond_373
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_374
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v13, v0, :cond_194

    .line 590
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/bzbs/bean/NFCTag;

    .line 592
    .local v20, "objNFCTag":Lcom/bzbs/bean/NFCTag;
    const/16 v16, 0x0

    .line 593
    .local v16, "isSkip":Z
    if-lez v13, :cond_3c0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "ReDeem"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3c0

    .line 594
    add-int/lit8 v31, v13, -0x1

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/bzbs/bean/NFCTag;

    .line 595
    .local v22, "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "Share"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3c0

    .line 596
    const/16 v16, 0x1

    .line 600
    .end local v22    # "objNFCTagPrev":Lcom/bzbs/bean/NFCTag;
    :cond_3c0
    if-nez v16, :cond_3e8

    .line 601
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "Status"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3eb

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->Action_Status(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    .line 589
    :cond_3e8
    :goto_3e8
    add-int/lit8 v13, v13, 0x1

    goto :goto_374

    .line 603
    :cond_3eb
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "Share"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_442

    .line 604
    const/16 v23, 0x0

    .line 606
    .local v23, "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    add-int/lit8 v31, v13, 0x1

    :try_start_406
    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    check-cast v0, Lcom/bzbs/bean/NFCTag;

    move-object/from16 v23, v0

    .line 607
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "ReDeem"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_426
    .catch Ljava/lang/Exception; {:try_start_406 .. :try_end_426} :catch_43e

    move-result v31

    if-eqz v31, :cond_43b

    .line 615
    :goto_429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    move-object/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/util/NfcUtils;->Action_Share(Lcom/bzbs/bean/NFCTag;Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_3e8

    .line 610
    :cond_43b
    const/16 v23, 0x0

    goto :goto_429

    .line 612
    :catch_43e
    move-exception v11

    .line 613
    .local v11, "ex":Ljava/lang/Exception;
    const/16 v23, 0x0

    goto :goto_429

    .line 616
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v23    # "objNFCTagReDeem":Lcom/bzbs/bean/NFCTag;
    :cond_442
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "CheckIn"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_469

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity;->callbackManager:Lcom/facebook/CallbackManager;

    move-object/from16 v31, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/NfcUtils;->Action_CheckIn(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;Lcom/facebook/CallbackManager;)V

    goto :goto_3e8

    .line 618
    :cond_469
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v32, "ReDeem"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4a9

    .line 620
    add-int/lit8 v31, v13, 0x1

    :try_start_482
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_4a0

    .line 621
    add-int/lit8 v31, v13, 0x1

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/bzbs/bean/NFCTag;

    .line 622
    .local v21, "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    if-eqz v21, :cond_4a0

    .line 623
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/bzbs/bean/NFCTag;->NextNFCTag:Lcom/bzbs/bean/NFCTag;
    :try_end_4a0
    .catch Ljava/lang/Exception; {:try_start_482 .. :try_end_4a0} :catch_4cc

    .line 629
    .end local v21    # "objNFCTagNext":Lcom/bzbs/bean/NFCTag;
    :cond_4a0
    :goto_4a0
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/bzbs/util/NfcUtils;->Action_ReDeem(Lcom/bzbs/bean/NFCTag;Landroid/content/Context;)V

    goto/16 :goto_194

    .line 634
    :cond_4a9
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Invalid NFC ActionName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/bzbs/bean/NFCTag;->ActionName:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_3e8

    .line 626
    :catch_4cc
    move-exception v31

    goto :goto_4a0

    .line 431
    .end local v6    # "action":Ljava/lang/String;
    .end local v7    # "blnIsAdmin":Z
    .end local v12    # "gArrayNFCTag":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/bean/NFCTag;>;"
    .end local v13    # "i":I
    .end local v15    # "isLoggedIn":Z
    .end local v16    # "isSkip":Z
    .end local v19    # "messages":[Landroid/nfc/NdefMessage;
    .end local v20    # "objNFCTag":Lcom/bzbs/bean/NFCTag;
    .end local v25    # "payload":[B
    .end local v27    # "strTasks":Ljava/lang/String;
    .end local v28    # "tokenBuzzebees":Ljava/lang/String;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_4ce
    move-exception v31

    goto/16 :goto_b5

    .line 415
    :catch_4d1
    move-exception v31

    goto/16 :goto_56
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    const-string/jumbo v0, "gIsNFCRedeem"

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gIsNFCRedeem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 307
    const-string/jumbo v0, "gCurrentLanguage"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v0, "gCurrentCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gCurrentCategoryConfig:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public refreshLayoutAfterLogin(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedTab:Landroid/view/View;

    .line 1310
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gPreviousSelectedIndex:I

    .line 1312
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialPoint()V

    .line 1313
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getPoints()V

    .line 1314
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->initialMenuContent()V

    .line 1316
    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V

    .line 1318
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->checkAndShowDialogMessagePopup()V

    .line 1320
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->closeDrawerRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$17;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1347
    return-void
.end method

.method public setRedNoti()V
    .registers 5

    .prologue
    .line 676
    const v2, 0x7f10016c

    :try_start_3
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 677
    .local v0, "layoutRedNoti":Landroid/widget/RelativeLayout;
    const v2, 0x7f10016d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 679
    .local v1, "tvRedNoti":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_28

    .line 680
    const-string/jumbo v2, " 0 "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 696
    .end local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .end local v1    # "tvRedNoti":Landroid/widget/TextView;
    :goto_27
    return-void

    .line 685
    .restart local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .restart local v1    # "tvRedNoti":Landroid/widget/TextView;
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetNotificationUnReadCount(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_41

    .line 687
    const-string/jumbo v2, "9+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_27

    .line 693
    .end local v0    # "layoutRedNoti":Landroid/widget/RelativeLayout;
    .end local v1    # "tvRedNoti":Landroid/widget/TextView;
    :catch_3f
    move-exception v2

    goto :goto_27

    .line 690
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

    .line 691
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6b} :catch_3f

    goto :goto_27
.end method

.method public setSelectedDashboard()V
    .registers 3

    .prologue
    .line 2489
    const v1, 0x7f100171

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2490
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2491
    return-void
.end method

.method public setSelectedTabByCat(Ljava/lang/String;)V
    .registers 7
    .param p1, "param_cat"    # Ljava/lang/String;

    .prologue
    .line 2437
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 2439
    :try_start_9
    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v3, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2440
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "cat"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2441
    const v3, 0x7f100171

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 2442
    .local v2, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_2d

    .line 2450
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v2    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2c
    return-void

    .line 2446
    :catch_2d
    move-exception v3

    .line 2437
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setSelectedTabByDashboard(Ljava/lang/String;)V
    .registers 10
    .param p1, "param_dashboard_key"    # Ljava/lang/String;

    .prologue
    .line 2453
    const/4 v4, 0x0

    .line 2454
    .local v4, "isFoundDashboard":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_2e

    .line 2456
    :try_start_a
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v6, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2457
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "dashboard_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 2458
    const v6, 0x7f100171

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    .line 2459
    .local v5, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v5, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_65

    .line 2461
    const/4 v4, 0x1

    .line 2469
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v5    # "viewPager":Landroid/support/v4/view/ViewPager;
    :cond_2e
    if-nez v4, :cond_64

    .line 2470
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "from_noti_alert"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2472
    .local v1, "from_noti_alert":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2473
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "header_en"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2474
    const-string/jumbo v6, "header"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    const-string/jumbo v6, "cat"

    const-string/jumbo v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2476
    const-string/jumbo v6, "dashboard_key"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2477
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2479
    .end local v1    # "from_noti_alert":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_64
    return-void

    .line 2465
    :catch_65
    move-exception v6

    .line 2454
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public setSelectedTabByIndex(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 2482
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 2483
    const v1, 0x7f100171

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 2484
    .local v0, "viewPager":Landroid/support/v4/view/ViewPager;
    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 2486
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
    .line 831
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_74

    .line 832
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030010

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 834
    .local v2, "dialogConfirm":Landroid/app/Dialog;
    const v0, 0x7f040106

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 836
    const v0, 0x7f100151

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 837
    .local v8, "tvMessage":Landroid/widget/TextView;
    const v0, 0x7f10054a

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 838
    .local v3, "imgOk":Landroid/widget/ImageView;
    const v0, 0x7f100524

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 839
    .local v9, "tvOk":Landroid/widget/TextView;
    const v0, 0x7f10054b

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 841
    .local v7, "imgNo":Landroid/widget/ImageView;
    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4b

    .line 844
    const v0, 0x7f09031b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    :cond_4b
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$10;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/MainPagerActivity$10;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    new-instance v0, Lcom/samsung/privilege/activity/MainPagerActivity$11;

    invoke-direct {v0, p0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity$11;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 869
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 870
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v0, 0x11

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 871
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 873
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 875
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
    .line 748
    move-object v4, p1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_4a

    .line 749
    new-instance v1, Landroid/app/Dialog;

    const v4, 0x1030010

    invoke-direct {v1, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 751
    .local v1, "dialog":Landroid/app/Dialog;
    const v4, 0x7f040108

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 753
    const v4, 0x7f100151

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 755
    .local v3, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    const v4, 0x7f100155

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 758
    .local v2, "layoutClose":Landroid/widget/RelativeLayout;
    new-instance v4, Lcom/samsung/privilege/activity/MainPagerActivity$7;

    invoke-direct {v4, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$7;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 768
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 769
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 771
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 773
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
    .line 878
    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_5b

    .line 879
    new-instance v1, Landroid/app/Dialog;

    const v5, 0x1030010

    invoke-direct {v1, p1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 881
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v5, 0x7f04010e

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 883
    const v5, 0x7f100151

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 885
    .local v4, "tvMessage":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    const v5, 0x7f100523

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 888
    .local v3, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$12;

    invoke-direct {v5, p0, v1, v3, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$12;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 901
    const v5, 0x7f10054f

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 902
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v5, Lcom/samsung/privilege/activity/MainPagerActivity$13;

    invoke-direct {v5, p0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity$13;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 911
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 912
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 913
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 915
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 917
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
    .line 920
    move-object v7, p1

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_88

    .line 921
    new-instance v1, Landroid/app/Dialog;

    const v7, 0x1030010

    invoke-direct {v1, p1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 923
    .local v1, "dialogPoint":Landroid/app/Dialog;
    const v7, 0x7f04010e

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 925
    const v7, 0x7f100151

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 926
    .local v4, "tvMessage":Landroid/widget/TextView;
    const v7, 0x7f100524

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 927
    .local v6, "tvOk":Landroid/widget/TextView;
    const v7, 0x7f10054c

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 929
    .local v5, "tvNo":Landroid/widget/TextView;
    const v7, 0x7f09032a

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    const v7, 0x7f090319

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    const v7, 0x7f090324

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    const v7, 0x7f100523

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 934
    .local v3, "layoutOk":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/MainPagerActivity$14;

    invoke-direct {v7, p0, v1, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$14;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    const v7, 0x7f10054f

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 970
    .local v2, "layoutNo":Landroid/widget/RelativeLayout;
    new-instance v7, Lcom/samsung/privilege/activity/MainPagerActivity$15;

    invoke-direct {v7, p0, v1, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$15;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1002
    .local v0, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x11

    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1003
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1005
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1007
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
    .line 776
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_99

    .line 777
    new-instance v8, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v8, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 778
    .local v8, "dialogTerm":Landroid/app/Dialog;
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 779
    const v1, 0x7f04011b

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 781
    const v1, 0x7f1001c5

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 782
    .local v0, "webView1":Landroid/webkit/WebView;
    const v1, 0x7f1005c4

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 783
    .local v10, "imgCancel":Landroid/widget/ImageView;
    const v1, 0x7f1005c5

    invoke-virtual {v8, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 786
    .local v9, "imgAccept":Landroid/widget/ImageView;
    :try_start_36
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 787
    .local v12, "res":Landroid/content/res/Resources;
    const v1, 0x7f080004

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v11

    .line 789
    .local v11, "in_s":Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v7, v1, [B

    .line 790
    .local v7, "b":[B
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    .line 794
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 795
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 796
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 799
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_73} :catch_9a

    .line 804
    .end local v7    # "b":[B
    .end local v11    # "in_s":Ljava/io/InputStream;
    .end local v12    # "res":Landroid/content/res/Resources;
    :goto_73
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$8;

    invoke-direct {v1, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$8;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$9;

    invoke-direct {v1, p0, v8, p1}, Lcom/samsung/privilege/activity/MainPagerActivity$9;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 823
    .local v6, "WMLP":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x11

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 824
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 826
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 828
    .end local v0    # "webView1":Landroid/webkit/WebView;
    .end local v6    # "WMLP":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "dialogTerm":Landroid/app/Dialog;
    .end local v9    # "imgAccept":Landroid/widget/ImageView;
    .end local v10    # "imgCancel":Landroid/widget/ImageView;
    :cond_99
    return-void

    .line 800
    .restart local v0    # "webView1":Landroid/webkit/WebView;
    .restart local v8    # "dialogTerm":Landroid/app/Dialog;
    .restart local v9    # "imgAccept":Landroid/widget/ImageView;
    .restart local v10    # "imgCancel":Landroid/widget/ImageView;
    :catch_9a
    move-exception v1

    goto :goto_73
.end method
