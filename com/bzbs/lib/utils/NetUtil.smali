.class public final Lcom/bzbs/lib/utils/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 21
    .line 22
    const-string/jumbo v0, "connectivity"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    if-eqz v0, :cond_21

    .line 26
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 27
    if-eqz v2, :cond_21

    move v0, v1

    .line 28
    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_21

    .line 30
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_22

    .line 32
    const/4 v1, 0x1

    .line 38
    :cond_21
    return v1

    .line 28
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
