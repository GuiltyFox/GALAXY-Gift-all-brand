.class public Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;
.super Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;
.source "MarketPlaceAdsInsFragment.java"


# instance fields
.field btnAds:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004d4
    .end annotation
.end field

.field btnError:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004d2
    .end annotation
.end field

.field mainDlPb1:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004d5
    .end annotation
.end field

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field textViewPoint:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004b5
    .end annotation
.end field

.field textViewSubtitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004d3
    .end annotation
.end field

.field tvPercentLoader:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f10029d
    .end annotation
.end field

.field private u:Landroid/app/ProgressDialog;

.field private v:Ljava/io/File;

.field viewShadow:Landroid/view/View;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1004d6
    .end annotation
.end field

.field private w:[Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;-><init>()V

    .line 68
    const-string/jumbo v0, "photogallery"

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->s:Ljava/lang/String;

    .line 69
    const-class v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->t:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->x:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

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

    sget-object v1, Lcom/bzbs/data/AppSetting;->al:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->z:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->z:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 5

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

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 198
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    if-nez v0, :cond_e

    .line 251
    :cond_d
    :goto_d
    return-void

    .line 201
    :cond_e
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraSurvey:Lcom/bzbs/bean/CampaignExtraSurvey;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraSurvey;->ArrayCampaignExtraSurveyPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8d

    .line 202
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtraAction;->and_link:Ljava/lang/String;

    const-string/jumbo v2, "{token}"

    .line 205
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{campaign_id}"

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v3, v3, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    .line 205
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string/jumbo v2, "{advertising_id}"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{imei}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v1, v1, Lcom/bzbs/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAction:Lcom/bzbs/bean/CampaignExtraAction;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignExtraAction;->and_ns:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 209
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 214
    :cond_89
    invoke-direct {p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(Ljava/lang/String;)V

    goto :goto_d

    .line 215
    :cond_8d
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 216
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "333"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Size:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 219
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 220
    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_115

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_115

    .line 221
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    const v2, 0x7f090277

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;->a(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0901ac

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;

    invoke-direct {v4, p0, v0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$2;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09019d

    .line 229
    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->b()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_d

    .line 240
    :cond_115
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->g()V

    goto/16 :goto_d

    .line 243
    :cond_11a
    const-string/jumbo v0, "OAT"

    const-string/jumbo v1, "444"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    invoke-virtual {v2}, Lcom/bzbs/bean/CampaignView;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_d
.end method

.method static synthetic a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 451
    const-string/jumbo v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appInstalledOrNot= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 455
    const/4 v2, 0x1

    :try_start_22
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_25} :catch_26

    .line 461
    :goto_25
    return v0

    .line 457
    :catch_26
    move-exception v0

    .line 458
    const-string/jumbo v1, "OAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "errorAppInstalledOrNot= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$4;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method static synthetic b(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;I)V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 466
    const-string/jumbo v0, ""

    .line 467
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 469
    :try_start_a
    const-string/jumbo v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 470
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 471
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_a5

    move-result-object v0

    .line 476
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/campaign/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v2, v2, Lcom/bzbs/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/redeem?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&info1=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f090257

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]&info2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 481
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, ""

    const v4, 0x7f090018

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->u:Landroid/app/ProgressDialog;

    .line 483
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$7;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 541
    return-void

    .line 472
    :catch_a5
    move-exception v1

    .line 473
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1a
.end method

.method static synthetic c(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->j()V

    return-void
.end method

.method static synthetic d(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->u:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 108
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    if-nez v0, :cond_c

    .line 160
    :cond_b
    :goto_b
    return-void

    .line 111
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d8

    .line 113
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getCustomCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_28
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->layoutShared:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getAgencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09025d

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->h:Ljava/text/DecimalFormat;

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v3}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getPointPerUnit()F

    move-result v3

    float-to-double v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :goto_7c
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->f()V

    .line 131
    :try_start_7f
    new-instance v0, Lcom/bzbs/bean/CampaignView;

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bzbs/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_7f .. :try_end_96} :catch_10d

    .line 136
    :goto_96
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V

    .line 138
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-nez v0, :cond_112

    .line 139
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V

    .line 152
    :cond_a4
    :goto_a4
    invoke-static {}, Lcom/bzbs/util/BBUtil;->a()Z

    move-result v0

    if-nez v0, :cond_b

    .line 153
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->viewShadow:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    const-string/jumbo v1, "#f23d43"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 158
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnError:Landroid/widget/Button;

    const v1, 0x7f09021b

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 114
    :cond_d8
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 115
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    const v1, 0x7f09025c

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 117
    :cond_f5
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->btnAds:Landroid/widget/Button;

    const-string/jumbo v1, "Install"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 126
    :cond_ff
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->textViewPoint:Landroid/widget/TextView;

    const v1, 0x7f09025e

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7c

    .line 132
    :catch_10d
    move-exception v0

    .line 133
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_96

    .line 141
    :cond_112
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    if-eqz v0, :cond_a4

    .line 142
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->Type:Ljava/lang/String;

    const-string/jumbo v1, "photogallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 143
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V

    goto/16 :goto_a4

    .line 145
    :cond_12e
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->k()V

    .line 146
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->v:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 147
    invoke-direct {p0, v6}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->b(I)V

    goto/16 :goto_a4
.end method

.method private j()V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v0, v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->J:Lcom/tbruyelle/rxpermissions/RxPermissions;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->a([Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$$Lambda$1;->a(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lrx/Observable;->a(Lrx/functions/Action1;)Lrx/Subscription;

    .line 252
    return-void
.end method

.method private k()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 268
    :goto_b
    return-void

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

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

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->w:[Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Caption:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->w:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_48

    .line 261
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->w:[Ljava/lang/String;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->w:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    .line 263
    :cond_48
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    .line 267
    :cond_71
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->z:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->v:Ljava/io/File;

    goto :goto_b
.end method

.method private l()V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 351
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 352
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->d:Landroid/view/View;

    new-instance v1, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$5;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 362
    return-void
.end method


# virtual methods
.method protected b()V
    .registers 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->c()V

    .line 97
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->i()V

    .line 98
    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->i()V

    .line 103
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->e()V

    .line 104
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->l()V

    .line 105
    return-void
.end method

.method public g()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->k()V

    .line 273
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->v:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    const-class v2, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 275
    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->v:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bzbs/bean/CampaignView;->campaignExtra_video_download_uri:Ljava/lang/String;

    .line 276
    const-string/jumbo v1, "campaign"

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    invoke-virtual {v2}, Lcom/bzbs/bean/CampaignView;->convertCampaign()Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0, v3}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    :goto_2e
    return-void

    .line 281
    :cond_2f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->mainDlPb1:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 282
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->r:Lcom/bzbs/bean/CampaignView;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignView;->campaignExtra:Lcom/bzbs/bean/CampaignExtra;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtra;->campaignExtraAd:Lcom/bzbs/bean/CampaignExtraAd;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAd;->ArrayCampaignExtraAdItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/CampaignExtraAdItem;

    iget-object v0, v0, Lcom/bzbs/bean/CampaignExtraAdItem;->Src:Ljava/lang/String;

    iput-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->x:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Landroid/content/Context;)Lcn/aigestudio/downloader/bizs/DLManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->z:Ljava/lang/String;

    new-instance v3, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$3;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcn/aigestudio/downloader/bizs/DLManager;->a(Ljava/lang/String;Ljava/lang/String;Lcn/aigestudio/downloader/interfaces/DLTaskListener;)V

    goto :goto_2e
.end method

.method public h()V
    .registers 6

    .prologue
    .line 372
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_46

    .line 375
    if-eqz v0, :cond_46

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/redeem?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mode=uninstall&format=json&type=list2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->a:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$6;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;)V

    invoke-virtual {v1, v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 448
    :cond_46
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 593
    invoke-super {p0, p1, p2, p3}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onActivityResult(IILandroid/content/Intent;)V

    .line 594
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    if-eqz v0, :cond_10

    .line 595
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;->l()V

    .line 596
    :cond_10
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 366
    invoke-super {p0}, Lcom/bzbs/marketplace/fragment/market_detail/BaseMarketDetail;->onResume()V

    .line 367
    invoke-virtual {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->h()V

    .line 368
    return-void
.end method

.method public onSubmit(Landroid/view/View;)V
    .registers 8
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f1004d4
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 165
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_3c

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 168
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    if-eqz v0, :cond_1e

    .line 175
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 191
    :cond_1e
    :goto_1e
    return-void

    .line 179
    :cond_1f
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->isConditionPass()Z

    move-result v0

    if-nez v0, :cond_33

    .line 180
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->m:Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;

    invoke-virtual {v1}, Lcom/bzbs/marketplace/model/marketplace/detail/MarketPlaceDetailModel;->getConditionAlert()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    goto :goto_1e

    .line 184
    :cond_33
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->l(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->j()V

    goto :goto_1e

    .line 188
    :cond_3c
    new-instance v0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;

    invoke-direct {v0, p0, v5}, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$UserLoginListener;-><init>(Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 189
    iget-object v0, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->f:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bzbs/marketplace/fragment/market_detail/MarketPlaceAdsInsFragment;->a:Landroid/app/Activity;

    check-cast v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->F:Lcom/facebook/CallbackManager;

    const-string/jumbo v3, "BZB Campaign Ads"

    const-string/jumbo v4, "market_ads"

    invoke-static/range {v0 .. v5}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e
.end method
