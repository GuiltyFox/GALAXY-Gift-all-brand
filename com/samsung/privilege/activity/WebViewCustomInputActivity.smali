.class public Lcom/samsung/privilege/activity/WebViewCustomInputActivity;
.super Landroid/app/Activity;
.source "WebViewCustomInputActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gUrl:Ljava/lang/String;

.field private gWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-class v0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initialParam()V
    .registers 11

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 41
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 44
    :try_start_d
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 47
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{uuid}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 48
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{imei}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 49
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{return_url}"

    const-string/jumbo v6, "bzbs_return_url"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 50
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{cancel_url}"

    const-string/jumbo v6, "bzbs_cancel_url"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 51
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{locale}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 52
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{user_id}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 53
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{campaign_id}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_ba} :catch_36a

    .line 58
    .end local v1    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_ba
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 61
    .restart local v1    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :try_start_c3
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{version}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getAppVersionName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d9} :catch_208

    .line 68
    :goto_d9
    :try_start_d9
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{imie}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getRealDeviceId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_ef} :catch_236

    .line 75
    :goto_ef
    :try_start_ef
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{model}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_105} :catch_264

    .line 82
    :goto_105
    :try_start_105
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{manufacturer}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_11b} :catch_292

    .line 89
    :goto_11b
    :try_start_11b
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{androidid}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_131} :catch_2c0

    .line 96
    :goto_131
    :try_start_131
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{macaddress}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getWifiAddress()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_147} :catch_2ee

    .line 110
    :goto_147
    :try_start_147
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{serialno}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_15d} :catch_31c

    .line 117
    :goto_15d
    :try_start_15d
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{bztoken}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{bztoken2}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBeesForBuyPoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{fbtoken}"

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 120
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{fbid}"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{fbname}"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 124
    .local v0, "date":Ljava/util/Date;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{times}"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_207} :catch_34a

    .line 128
    .end local v0    # "date":Ljava/util/Date;
    :goto_207
    return-void

    .line 62
    :catch_208
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{version}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 64
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|version := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d9

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_236
    move-exception v2

    .line 70
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{imie}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 71
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|imie := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_264
    move-exception v2

    .line 77
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{model}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|model := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_105

    .line 83
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_292
    move-exception v2

    .line 84
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{manufacturer}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|manufacturer := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2c0
    move-exception v2

    .line 91
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{androidid}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 92
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|androidid := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2ee
    move-exception v2

    .line 98
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{macaddress}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 99
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|macaddress := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_147

    .line 111
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_31c
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    const-string/jumbo v5, "{serialno}"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|serialno := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_34a
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception|xxx := "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_207

    .line 54
    .end local v1    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_36a
    move-exception v4

    goto/16 :goto_ba
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    .line 332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v4, 0x7f04015c

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setContentView(I)V

    .line 134
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gHandler:Landroid/os/Handler;

    .line 135
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->initialParam()V

    .line 138
    const v4, 0x7f1001f0

    :try_start_18
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 139
    .local v2, "tvPageHeader":Landroid/widget/TextView;
    if-eqz v2, :cond_37

    .line 140
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 141
    .local v0, "font":Landroid/graphics/Typeface;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_37} :catch_ce

    .line 147
    .end local v0    # "font":Landroid/graphics/Typeface;
    .end local v2    # "tvPageHeader":Landroid/widget/TextView;
    :cond_37
    :goto_37
    const v4, 0x7f1004ae

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    .line 149
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 150
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 151
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 152
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 153
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 154
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_60

    .line 155
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 156
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 159
    :cond_60
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$1;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 169
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 176
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 250
    :try_start_84
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nativeheader=false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a1

    .line 251
    const v4, 0x7f100162

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 252
    .local v1, "layoutHeader":Landroid/widget/RelativeLayout;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a1} :catch_cc

    .line 258
    .end local v1    # "layoutHeader":Landroid/widget/RelativeLayout;
    :cond_a1
    :goto_a1
    if-eqz p1, :cond_a9

    .line 259
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 266
    :goto_a8
    return-void

    .line 261
    :cond_a9
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadUrl gUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    iget-object v5, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_a8

    .line 254
    :catch_cc
    move-exception v4

    goto :goto_a1

    .line 143
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :catch_ce
    move-exception v4

    goto/16 :goto_37
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "enable_webview_back":Z
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "bp=true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_14

    .line 286
    const/4 v0, 0x1

    .line 289
    :cond_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1d

    .line 290
    packed-switch p1, :pswitch_data_78

    .line 315
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_21
    return v3

    .line 292
    :pswitch_22
    if-ne v0, v4, :cond_5a

    .line 293
    const v3, 0x7f100178

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    .line 294
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 295
    iget-object v3, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    :goto_3c
    move v3, v4

    .line 303
    goto :goto_21

    .line 297
    :cond_3e
    const-string/jumbo v3, "content://someURI"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 298
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 299
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "bzbs_return_url"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v6, v1}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_3c

    .line 305
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5a
    const-string/jumbo v3, "content://someURI"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 306
    .restart local v2    # "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "bzbs_return_url"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v6, v1}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    move v3, v4

    .line 310
    goto :goto_21

    .line 290
    nop

    :pswitch_data_78
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 328
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->gWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    return-void
.end method
