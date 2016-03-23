.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.source "MarketPlaceAdsInsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TYPE_PHOTOGRAPHY:Ljava/lang/String;

.field private arrTemp:[Ljava/lang/String;

.field btnAds:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f6
    .end annotation
.end field

.field btnError:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f3
    .end annotation
.end field

.field private destUri:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private fileName:Ljava/lang/String;

.field private mDialog:Landroid/app/ProgressDialog;

.field mainDlPb1:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f7
    .end annotation
.end field

.field textViewPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005d6
    .end annotation
.end field

.field textViewSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f5
    .end annotation
.end field

.field tvPercentLoader:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001fe
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field viewShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1005f4
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;-><init>()V

    .line 68
    const-string/jumbo v0, "photogallery"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->TYPE_PHOTOGRAPHY:Ljava/lang/String;

    .line 69
    const-class v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->TAG:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->url:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/data/AppSetting;->PATH_ROOT_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "AdVideo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->destUri:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->setProgressDownload(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->destUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->visibleProgress(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->checkWifi()V

    return-void
.end method

.method static synthetic access$600(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->lambda$checkWifi$5(Ljava/lang/Boolean;)V

    return-void
.end method

.method private appInstalledOrNot(Ljava/lang/String;)Z
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string/jumbo v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appInstalledOrNot= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 453
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 455
    .local v0, "app_installed":Z
    const/4 v3, 0x1

    :try_start_22
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_25} :catch_27

    .line 456
    const/4 v0, 0x1

    .line 461
    :goto_26
    return v0

    .line 457
    :catch_27
    move-exception v1

    .line 458
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "OAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "errorAppInstalledOrNot= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private checkFileExists()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 268
    :goto_b
    return-void

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->arrTemp:[Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->arrTemp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_48

    .line 261
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->arrTemp:[Ljava/lang/String;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->arrTemp:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    .line 263
    :cond_48
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    .line 267
    :cond_71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->destUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->file:Ljava/io/File;

    goto :goto_b
.end method

.method private checkWifi()V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$Lambda$1;->lambdaFactory$(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 252
    return-void
.end method

.method private doActionInstall(Ljava/lang/String;)V
    .registers 14
    .param p1, "strLink"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 466
    const-string/jumbo v5, ""

    .line 467
    .local v5, "strAcc":Ljava/lang/String;
    iget-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 469
    .local v3, "manager":Landroid/accounts/AccountManager;
    :try_start_a
    const-string/jumbo v7, "com.google"

    invoke-virtual {v3, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 470
    .local v1, "accounts":[Landroid/accounts/Account;
    const/4 v7, 0x0

    aget-object v0, v1, v7

    .line 471
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_a5

    move-result-object v5

    .line 476
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :goto_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "api/campaign/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v8, v8, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/redeem?token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&info1=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f090383

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]&info2="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    new-instance v4, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v4}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 481
    .local v4, "params":Lcom/loopj/android/http/RequestParams;
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const-string/jumbo v8, ""

    const v9, 0x7f090018

    invoke-virtual {p0, v9}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mDialog:Landroid/app/ProgressDialog;

    .line 483
    new-instance v7, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v8, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    sget-object v9, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v7, v8, v6, v4, v9}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v8, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;

    invoke-direct {v8, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 541
    return-void

    .line 472
    .end local v4    # "params":Lcom/loopj/android/http/RequestParams;
    .end local v6    # "url":Ljava/lang/String;
    :catch_a5
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method private synthetic lambda$checkWifi$5(Ljava/lang/Boolean;)V
    .registers 17
    .param p1, "granted"    # Ljava/lang/Boolean;

    .prologue
    .line 197
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 198
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    if-nez v12, :cond_d

    .line 251
    :cond_c
    :goto_c
    return-void

    .line 201
    :cond_d
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/bean/CampaignExtraSurvey;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_8c

    .line 202
    new-instance v3, Lcom/bzbs/util/DeviceHelper;

    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v12}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-static {}, Lcheat/FoxCore;->ranImei()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "device_id":Ljava/lang/String;
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    const-string/jumbo v13, "{token}"

    .line 205
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-static {v14}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 204
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "{campaign_id}"

    iget-object v14, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v14, v14, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    .line 205
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 206
    .local v9, "strOriginalLink":Ljava/lang/String;
    const-string/jumbo v12, "{advertising_id}"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/bzbs/data/UserLogin;->GetAdsId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "{imei}"

    invoke-virtual {v12, v13, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "strLink":Ljava/lang/String;
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v10, v12, Lcom/bzbs/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    .line 208
    .local v10, "strPackage":Ljava/lang/String;
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->appInstalledOrNot(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_88

    .line 209
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    .local v0, "LaunchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 214
    .end local v0    # "LaunchIntent":Landroid/content/Intent;
    :cond_88
    invoke-direct {p0, v8}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->doActionInstall(Ljava/lang/String;)V

    goto :goto_c

    .line 215
    .end local v3    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v4    # "device_id":Ljava/lang/String;
    .end local v8    # "strLink":Ljava/lang/String;
    .end local v9    # "strOriginalLink":Ljava/lang/String;
    .end local v10    # "strPackage":Ljava/lang/String;
    :cond_8c
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v13, "video"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11b

    .line 216
    const-string/jumbo v12, "OAT"

    const-string/jumbo v13, "333"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v12, v12, Lcom/bzbs/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    invoke-static {v12}, Lcom/bzbs/util/BBUtil;->CTypeLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 219
    .local v6, "lgFileSize":J
    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 220
    .local v11, "wManager":Landroid/net/wifi/WifiManager;
    const-wide/32 v12, 0xa00000

    cmp-long v12, v6, v12

    if-lez v12, :cond_116

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-nez v12, :cond_116

    .line 221
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v12}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v2, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v12, 0x7f090140

    invoke-virtual {p0, v12}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f090333

    invoke-virtual {p0, v13}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;

    invoke-direct {v14, p0, v11}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f090324

    .line 229
    invoke-virtual {p0, v13}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;

    invoke-direct {v14, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v12, v13, v14}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 238
    .local v1, "alert":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_c

    .line 240
    .end local v1    # "alert":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_116
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startDownload()V

    goto/16 :goto_c

    .line 243
    .end local v6    # "lgFileSize":J
    .end local v11    # "wManager":Landroid/net/wifi/WifiManager;
    :cond_11b
    const-string/jumbo v12, "OAT"

    const-string/jumbo v13, "444"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v5, Landroid/content/Intent;

    iget-object v12, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    const-class v13, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v5, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "campaign"

    iget-object v13, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    invoke-virtual {v13}, Lcom/bzbs/bean/CampaignView;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    const/4 v12, 0x0

    invoke-virtual {p0, v5, v12}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_c
.end method

.method private setProgressDownload(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->tvPercentLoader:Landroid/widget/TextView;

    if-nez v0, :cond_9

    .line 337
    :cond_8
    :goto_8
    return-void

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 336
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->tvPercentLoader:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method private setupBackPress()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->rootView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 352
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->rootView:Landroid/view/View;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 362
    return-void
.end method

.method private setupWidget()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 108
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    if-nez v1, :cond_c

    .line 160
    :cond_b
    :goto_b
    return-void

    .line 111
    :cond_c
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d8

    .line 113
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_28
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->layoutShared:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewSubtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 125
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900b3

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->formatterPercent:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v4}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_7c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->checkLike()V

    .line 131
    :try_start_7f
    new-instance v1, Lcom/bzbs/bean/CampaignView;

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bzbs/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_96} :catch_10d

    .line 136
    :goto_96
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->visibleProgress(I)V

    .line 138
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v1

    if-nez v1, :cond_112

    .line 139
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->visibleProgress(I)V

    .line 152
    :cond_a4
    :goto_a4
    invoke-static {}, Lcom/bzbs/util/BBUtil;->IsSamsungMobile()Z

    move-result v1

    if-nez v1, :cond_b

    .line 153
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    const-string/jumbo v2, "#f23d43"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 158
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    const v2, 0x7f09036d

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 114
    :cond_d8
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 115
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 117
    :cond_f5
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    const-string/jumbo v2, "Install"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 126
    :cond_ff
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    const v2, 0x7f0900b4

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7c

    .line 132
    :catch_10d
    move-exception v0

    .line 133
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_96

    .line 141
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_112
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    if-eqz v1, :cond_a4

    .line 142
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v2, "photogallery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 143
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->visibleProgress(I)V

    goto/16 :goto_a4

    .line 145
    :cond_12e
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->checkFileExists()V

    .line 146
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 147
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->visibleProgress(I)V

    goto/16 :goto_a4
.end method

.method private visibleProgress(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method


# virtual methods
.method protected createLayoutBase(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->setupWidget()V

    .line 103
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->loadData()V

    .line 104
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->setupBackPress()V

    .line 105
    return-void
.end method

.method public getVerify()V
    .registers 7

    .prologue
    .line 372
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 375
    if-eqz v0, :cond_46

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "api/redeem?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&mode=uninstall&format=json&type=list2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    sget-object v5, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->GET:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 448
    .end local v1    # "url":Ljava/lang/String;
    :cond_46
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 578
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onActivityResult(IILandroid/content/Intent;)V

    .line 579
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_10

    .line 580
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getPoints()V

    .line 581
    :cond_10
    return-void
.end method

.method protected onLoadFromUrl()V
    .registers 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->setupWidgetBase()V

    .line 97
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->setupWidget()V

    .line 98
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 366
    invoke-super {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onResume()V

    .line 367
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getVerify()V

    .line 368
    return-void
.end method

.method public onSubmit(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1005f6
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_3b

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 168
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v1, :cond_1d

    .line 175
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->getNotUserFunction(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 191
    :cond_1d
    :goto_1d
    return-void

    .line 179
    :cond_1e
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v1

    if-nez v1, :cond_32

    .line 180
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->itemMarketDetail:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlert()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1d

    .line 184
    :cond_32
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->checkWifi()V

    goto :goto_1d

    .line 188
    :cond_3b
    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;)V

    invoke-static {v1}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 189
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v1, v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v4, "BZB Campaign Ads"

    const-string/jumbo v5, "market_ads"

    invoke-static {v2, v3, v1, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public startDownload()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->checkFileExists()V

    .line 273
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 276
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    invoke-virtual {v2}, Lcom/bzbs/bean/CampaignView;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_2e
    return-void

    .line 281
    :cond_2f
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 282
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->paramCampaign:Lcom/bzbs/bean/CampaignView;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->url:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcn/aigestudio/downloader/bizs/DLManager;->getInstance(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DLManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->destUri:Ljava/lang/String;

    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;

    invoke-direct {v4, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcn/aigestudio/downloader/bizs/DLManager;->dlStart(Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    goto :goto_2e
.end method
