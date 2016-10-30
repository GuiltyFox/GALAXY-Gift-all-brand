.class public Lcom/samsung/privilege/activity/SplashScreenAdsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SplashScreenAdsActivity.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_91

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gift"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    :goto_37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->finish()V

    .line 218
    return-void

    .line 196
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bzbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/bzbs/marketplace/activity/MarketPlaceDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    new-instance v1, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;

    invoke-direct {v1}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;-><init>()V

    .line 199
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/model/marketplace/list/MarketPlaceListModel;->setID(Ljava/lang/String;)V

    .line 200
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    const-string/jumbo v3, "ItemMarketPlace"

    invoke-static {v1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 202
    const-string/jumbo v1, "ItemMarketPlace::Ads::Ins"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 206
    :cond_7c
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 212
    :cond_91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_37
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->i()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 7

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cache_dashboard_gift_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LocalFileHelper;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 70
    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cache_dashboard_gift_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/util/LocalFileHelper;->c(Ljava/lang/String;Landroid/content/Context;)J

    .line 72
    const-wide/16 v2, 0x0

    .line 73
    sget v0, Lcom/bzbs/data/AppSetting;->aa:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_83

    .line 74
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->h()V

    .line 101
    :goto_82
    return-void

    .line 76
    :cond_83
    const/4 v0, 0x0

    .line 78
    :try_start_84
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8c} :catch_d8

    move-result v0

    .line 84
    :goto_8d
    if-lez v0, :cond_d0

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/DashboardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string/jumbo v2, "header_en"

    const-string/jumbo v3, "ADS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v2, "header"

    const-string/jumbo v3, "ADS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string/jumbo v2, "cat"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string/jumbo v2, "dashboard_key"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v2, "dashboard_json"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->finish()V

    goto :goto_82

    .line 95
    :cond_d0
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->i()V

    goto :goto_82

    .line 99
    :cond_d4
    invoke-direct {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->h()V

    goto :goto_82

    .line 80
    :catch_d8
    move-exception v2

    goto :goto_8d
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 104
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    .line 105
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 106
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 107
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->c:Landroid/app/ProgressDialog;

    const v1, 0x7f040120

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/dashboard/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadDashboard->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 114
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 115
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 118
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$2;-><init>(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    .line 119
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 170
    return-void
.end method

.method private i()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign_id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 174
    if-lez v0, :cond_1a

    .line 175
    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->a(I)V

    .line 186
    :goto_19
    return-void

    .line 177
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 178
    invoke-static {p0, v2}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    goto :goto_19

    .line 180
    :cond_33
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->startActivity(Landroid/content/Intent;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->finish()V

    goto :goto_19
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040171

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->setContentView(I)V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->b:Landroid/os/Handler;

    .line 46
    const/high16 v0, 0x7f050000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->overridePendingTransition(II)V

    .line 48
    iget-object v0, p0, Lcom/samsung/privilege/activity/SplashScreenAdsActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/SplashScreenAdsActivity$1;-><init>(Lcom/samsung/privilege/activity/SplashScreenAdsActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
