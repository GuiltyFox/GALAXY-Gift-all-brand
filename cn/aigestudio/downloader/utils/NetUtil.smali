.class public Lcn/aigestudio/downloader/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 2
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/aigestudio/downloader/utils/NetUtil;->buildConnection(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static buildConnection(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;
    .registers 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 43
    .local v0, "connection":Ljava/net/HttpURLConnection;
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->POST:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 44
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->CONNECT_TIMEOUT:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT_RANGE:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->ACCEPT_LANGUAGE:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->CHARSET:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->CHARSET:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_56

    .line 50
    sget-object v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v1, v1, Lcn/aigestudio/downloader/cons/HttpConnPars;->header:Ljava/lang/String;

    sget-object v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->KEEP_CONNECT:Lcn/aigestudio/downloader/cons/HttpConnPars;

    iget-object v2, v2, Lcn/aigestudio/downloader/cons/HttpConnPars;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_56
    return-object v0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "type":I
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 66
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "typeName":Ljava/lang/String;
    const-string/jumbo v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 68
    const/4 v3, 0x4

    .line 76
    .end local v4    # "typeName":Ljava/lang/String;
    :cond_24
    :goto_24
    return v3

    .line 69
    .restart local v4    # "typeName":Ljava/lang/String;
    :cond_25
    const-string/jumbo v5, "MOBILE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 70
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "proxyHost":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {p0}, Lcn/aigestudio/downloader/utils/NetUtil;->isFastMobileNetwork(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v3, 0x3

    :goto_3f
    goto :goto_24

    :cond_40
    const/4 v3, 0x2

    goto :goto_3f

    :cond_42
    const/4 v3, 0x1

    goto :goto_3f
.end method

.method private static isFastMobileNetwork(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 87
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_28

    .line 121
    :goto_12
    :pswitch_12
    return v1

    :pswitch_13
    move v1, v2

    .line 95
    goto :goto_12

    :pswitch_15
    move v1, v2

    .line 97
    goto :goto_12

    :pswitch_17
    move v1, v2

    .line 101
    goto :goto_12

    :pswitch_19
    move v1, v2

    .line 103
    goto :goto_12

    :pswitch_1b
    move v1, v2

    .line 105
    goto :goto_12

    :pswitch_1d
    move v1, v2

    .line 107
    goto :goto_12

    :pswitch_1f
    move v1, v2

    .line 109
    goto :goto_12

    :pswitch_21
    move v1, v2

    .line 111
    goto :goto_12

    :pswitch_23
    move v1, v2

    .line 113
    goto :goto_12

    :pswitch_25
    move v1, v2

    .line 117
    goto :goto_12

    .line 87
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_1d
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_12
        :pswitch_17
        :pswitch_1b
        :pswitch_19
        :pswitch_12
        :pswitch_21
        :pswitch_25
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method
