.class public Lcom/samsung/privilege/activity/WebViewCustomInputActivity;
.super Landroid/app/Activity;
.source "WebViewCustomInputActivity.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-class v0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 7

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 45
    :try_start_d
    new-instance v0, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{token}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{uuid}"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{imei}"

    invoke-virtual {v0}, Lcom/bzbs/util/DeviceHelper;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{return_url}"

    const-string/jumbo v2, "bzbs_return_url"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{cancel_url}"

    const-string/jumbo v2, "bzbs_cancel_url"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{locale}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{user_id}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{campaign_id}"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_ba} :catch_36a

    .line 59
    :goto_ba
    new-instance v1, Lcom/bzbs/util/DeviceHelper;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 62
    :try_start_c3
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{version}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d9} :catch_208

    .line 69
    :goto_d9
    :try_start_d9
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{imie}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_ef} :catch_236

    .line 76
    :goto_ef
    :try_start_ef
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{model}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->g()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_105} :catch_264

    .line 83
    :goto_105
    :try_start_105
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{manufacturer}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->h()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_11b} :catch_292

    .line 90
    :goto_11b
    :try_start_11b
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{androidid}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->i()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_131} :catch_2c0

    .line 97
    :goto_131
    :try_start_131
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{macaddress}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->f()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_147} :catch_2ee

    .line 111
    :goto_147
    :try_start_147
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{serialno}"

    invoke-virtual {v1}, Lcom/bzbs/util/DeviceHelper;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_15d} :catch_31c

    .line 118
    :goto_15d
    :try_start_15d
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{bztoken}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{bztoken2}"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{fbtoken}"

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{fbid}"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "{fbname}"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{times}"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_207} :catch_34a

    .line 129
    :goto_207
    return-void

    .line 63
    :catch_208
    move-exception v0

    .line 64
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{version}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|version := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d9

    .line 70
    :catch_236
    move-exception v0

    .line 71
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{imie}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 72
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|imie := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ef

    .line 77
    :catch_264
    move-exception v0

    .line 78
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{model}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 79
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|model := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_105

    .line 84
    :catch_292
    move-exception v0

    .line 85
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{manufacturer}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|manufacturer := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 91
    :catch_2c0
    move-exception v0

    .line 92
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{androidid}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 93
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|androidid := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 98
    :catch_2ee
    move-exception v0

    .line 99
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "{macaddress}"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception|macaddress := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_147

    .line 112
    :catch_31c
    move-exception v0

    .line 113
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    const-string/jumbo v2, "{serialno}"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception|serialno := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 126
    :catch_34a
    move-exception v0

    .line 127
    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception|xxx := "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_207

    .line 55
    :catch_36a
    move-exception v0

    goto/16 :goto_ba
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    .line 316
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f040131

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setContentView(I)V

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->d:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a()V

    .line 148
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 153
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 154
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3e

    .line 156
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 157
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 160
    :cond_3e
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$1;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$2;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity$3;-><init>(Lcom/samsung/privilege/activity/WebViewCustomInputActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 234
    :try_start_62
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nativeheader=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7f

    .line 235
    const v0, 0x7f100269

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 236
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7f} :catch_aa

    .line 242
    :cond_7f
    :goto_7f
    if-eqz p1, :cond_87

    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 250
    :goto_86
    return-void

    .line 245
    :cond_87
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUrl gUrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_86

    .line 238
    :catch_aa
    move-exception v0

    goto :goto_7f
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 268
    const/4 v0, 0x0

    .line 269
    iget-object v2, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "bp=true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    move v0, v1

    .line 273
    :cond_14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1d

    .line 274
    packed-switch p1, :pswitch_data_76

    .line 299
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_21
    return v1

    .line 276
    :pswitch_22
    if-ne v0, v1, :cond_59

    .line 277
    const v0, 0x7f10018c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    .line 278
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 279
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_21

    .line 281
    :cond_3d
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 282
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 283
    const-string/jumbo v0, "bzbs_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v4, v2}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_21

    .line 289
    :cond_59
    const-string/jumbo v0, "content://someURI"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 290
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    const-string/jumbo v0, "bzbs_return_url"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v4, v2}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->finish()V

    goto :goto_21

    .line 274
    nop

    :pswitch_data_76
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 312
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/privilege/activity/WebViewCustomInputActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 306
    return-void
.end method
