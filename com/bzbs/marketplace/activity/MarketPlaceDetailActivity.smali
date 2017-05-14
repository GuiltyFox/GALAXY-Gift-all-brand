.class public Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "MarketPlaceDetailActivity.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a:Z

    return v0
.end method

.method private h()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->j()V

    .line 81
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->b(I)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->c(Z)V

    .line 85
    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->b(Z)V

    .line 86
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->o()V

    .line 87
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->m()V

    .line 88
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->n()V

    .line 89
    return-void
.end method

.method private o()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->C:Landroid/os/Bundle;

    .line 93
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->C:Landroid/os/Bundle;

    const-string/jumbo v1, "ItemMarketPlace"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ItemMarketPlace"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 95
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a:Z

    .line 97
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->D:Landroid/support/v4/app/Fragment;

    .line 98
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->C:Landroid/os/Bundle;

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    const v2, 0x7f04014e

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0, v4, v4}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->a(ZI)V

    .line 106
    :goto_48
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->D:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->C:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 109
    :try_start_4f
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100193

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->D:Landroid/support/v4/app/Fragment;

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_7c

    .line 115
    :goto_63
    return-void

    .line 101
    :cond_64
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceDetailFragment;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->D:Landroid/support/v4/app/Fragment;

    .line 102
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->C:Landroid/os/Bundle;

    const-string/jumbo v1, "BaseMarketDetail::Layout"

    const v2, 0x7f04014d

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_48

    .line 112
    :catch_7c
    move-exception v0

    goto :goto_63
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_noti"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 45
    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 48
    :try_start_f
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ItemMarketPlace"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    .line 49
    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->getID()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_noti_alert"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string/jumbo v2, "Push Notification"

    const-string/jumbo v3, "Click Bzbs Campaign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_54} :catch_5b

    .line 57
    :cond_54
    :goto_54
    const-string/jumbo v0, "BZB Campaign Details"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 58
    return-void

    .line 52
    :catch_5b
    move-exception v0

    goto :goto_54
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->b(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;)V

    .line 129
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V
    .registers 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Lcom/bzbs/marketplace/model/dialog/ConfirmOnDialogDealsGetModel;)V

    .line 133
    return-void
.end method

.method public a(Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->a(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public f()I
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 38
    const v0, 0x7f04003c

    return v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->D:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onDestroy()V

    .line 142
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->h()V

    .line 65
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->x:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity$1;-><init>(Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 74
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 75
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v1, 0x7f090252

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :cond_2d
    return-void
.end method
