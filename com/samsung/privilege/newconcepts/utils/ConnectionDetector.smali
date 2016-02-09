.class public Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;
.super Ljava/lang/Object;
.source "ConnectionDetector.java"


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->_context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public isConnectingToInternet()Z
    .registers 6

    .prologue
    .line 16
    iget-object v3, p0, Lcom/samsung/privilege/newconcepts/utils/ConnectionDetector;->_context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_16

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 19
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_16

    .line 20
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v3, v2

    if-lt v1, v3, :cond_18

    .line 26
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_16
    const/4 v3, 0x0

    :goto_17
    return v3

    .line 21
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_18
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_24

    .line 22
    const/4 v3, 0x1

    goto :goto_17

    .line 20
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method
