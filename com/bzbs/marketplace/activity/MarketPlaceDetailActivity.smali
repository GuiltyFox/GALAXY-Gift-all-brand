.class public Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "MarketPlaceDetailActivity.java"


# static fields
.field public static final SCREEN:Ljava/lang/String; = "Campaign detail"


# instance fields
.field private isAds:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->isAds:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->isAds:Z

    return v0
.end method

.method private initFragment()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->arguments:Landroid/os/Bundle;

    .line 94
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "ItemMarketPlace"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ItemMarketPlace"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->isAds:Z

    .line 98
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 99
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    const v2, 0x7f040127

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {p0, v4, v4}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setBtnBasket(ZI)V

    .line 107
    :goto_48
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100173

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 112
    return-void

    .line 102
    :cond_64
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 103
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    const v2, 0x7f040126

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_48
.end method

.method private setToolbar()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setToolbarShowHome()V

    .line 82
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setToolbarTitle(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setActionBarIcon(I)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->callCountCart(Z)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->hideLayoutPoint(Z)V

    .line 87
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->initFragment()V

    .line 88
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setHideSmartTab()V

    .line 89
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setHideSearch()V

    .line 90
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 46
    .local v2, "is_from_noti":Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_54

    .line 49
    :try_start_f
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "ItemMarketPlace"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-static {v4}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 50
    .local v3, "objMarketPlaceListModel":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "campaignID":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "from_noti_alert"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "campaignName":Ljava/lang/String;
    const-string/jumbo v4, "Push Notification"

    const-string/jumbo v5, "Click Bzbs Campaign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_5b

    .line 58
    .end local v0    # "campaignID":Ljava/lang/String;
    .end local v1    # "campaignName":Ljava/lang/String;
    .end local v3    # "objMarketPlaceListModel":Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;
    :cond_54
    :goto_54
    const-string/jumbo v4, "BZB Campaign Details"

    invoke-static {v4}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsScreen(Ljava/lang/String;)V

    .line 59
    return-void

    .line 53
    :catch_5b
    move-exception v4

    goto :goto_54
.end method

.method public getDialogConfirmDealsGet(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 4
    .param p1, "itemPlaceDetailModel"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogConfirmDealsGet(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 122
    return-void
.end method

.method public getDialogError(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V
    .registers 5
    .param p1, "itemPlaceDetailModel"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogError(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public getDialogSentByPost(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 4
    .param p1, "itemPlaceDetailModel"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogSentByPost(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 126
    return-void
.end method

.method public getDialogShowCode(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V
    .registers 5
    .param p1, "itemPlaceDetailModel"    # Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;
    .param p2, "confirmDialogDeals"    # Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getDialogShowCode(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V

    .line 130
    return-void
.end method

.method public getLayoutResource()I
    .registers 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 39
    const v0, 0x7f040037

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onDestroy()V

    .line 139
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    .line 63
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->setToolbar()V

    .line 66
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->gHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 76
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    :cond_2d
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method
