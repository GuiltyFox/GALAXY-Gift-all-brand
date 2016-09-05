.class public Lcn/aigestudio/downloader/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 66
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 68
    const/4 v0, 0x4

    .line 76
    :goto_24
    return v0

    .line 69
    :cond_25
    const-string/jumbo v2, "MOBILE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 70
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {p0}, Lcn/aigestudio/downloader/utils/NetUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x3

    goto :goto_24

    :cond_40
    const/4 v0, 0x2

    goto :goto_24

    :cond_42
    const/4 v0, 0x1

    goto :goto_24

    :cond_44
    move v0, v1

    goto :goto_24
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/aigestudio/downloader/utils/NetUtil;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .registers 5

    .prologue
    .line 42
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 43
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->a:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->f:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->b:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->b:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->d:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->d:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->c:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->c:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->e:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->e:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_56

    .line 50
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->g:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->j:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->g:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_56
    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    move v0, v1

    .line 121
    :goto_13
    return v0

    :pswitch_14
    move v0, v1

    .line 89
    goto :goto_13

    :pswitch_16
    move v0, v1

    .line 91
    goto :goto_13

    :pswitch_18
    move v0, v1

    .line 93
    goto :goto_13

    :pswitch_1a
    move v0, v2

    .line 95
    goto :goto_13

    :pswitch_1c
    move v0, v2

    .line 97
    goto :goto_13

    :pswitch_1e
    move v0, v1

    .line 99
    goto :goto_13

    :pswitch_20
    move v0, v2

    .line 101
    goto :goto_13

    :pswitch_22
    move v0, v2

    .line 103
    goto :goto_13

    :pswitch_24
    move v0, v2

    .line 105
    goto :goto_13

    :pswitch_26
    move v0, v2

    .line 107
    goto :goto_13

    :pswitch_28
    move v0, v2

    .line 109
    goto :goto_13

    :pswitch_2a
    move v0, v2

    .line 111
    goto :goto_13

    :pswitch_2c
    move v0, v2

    .line 113
    goto :goto_13

    :pswitch_2e
    move v0, v1

    .line 115
    goto :goto_13

    :pswitch_30
    move v0, v2

    .line 117
    goto :goto_13

    :pswitch_32
    move v0, v1

    .line 119
    goto :goto_13

    .line 87
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_32
        :pswitch_1e
        :pswitch_18
        :pswitch_26
        :pswitch_16
        :pswitch_1a
        :pswitch_1c
        :pswitch_14
        :pswitch_20
        :pswitch_24
        :pswitch_22
        :pswitch_2e
        :pswitch_2a
        :pswitch_30
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method
