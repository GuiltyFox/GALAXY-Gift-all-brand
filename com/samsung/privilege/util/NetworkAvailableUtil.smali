.class public Lcom/samsung/privilege/util/NetworkAvailableUtil;
.super Ljava/lang/Object;
.source "NetworkAvailableUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    const/4 v0, 0x0

    .line 13
    .local v0, "available":Z
    :try_start_1
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 14
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_15

    .line 15
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 16
    .local v4, "info":[Landroid/net/NetworkInfo;
    if-eqz v4, :cond_15

    .line 17
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    array-length v6, v4

    if-lt v3, v6, :cond_26

    .line 24
    .end local v3    # "i":I
    .end local v4    # "info":[Landroid/net/NetworkInfo;
    :cond_15
    if-nez v0, :cond_25

    .line 25
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 27
    .local v5, "wiMax":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 28
    const/4 v0, 0x1

    .line 34
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v5    # "wiMax":Landroid/net/NetworkInfo;
    :cond_25
    :goto_25
    return v0

    .line 18
    .restart local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v3    # "i":I
    .restart local v4    # "info":[Landroid/net/NetworkInfo;
    :cond_26
    aget-object v6, v4, v3

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_34

    if-ne v6, v7, :cond_31

    .line 19
    const/4 v0, 0x1

    .line 17
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 31
    .end local v1    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v3    # "i":I
    .end local v4    # "info":[Landroid/net/NetworkInfo;
    :catch_34
    move-exception v2

    .line 32
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method
