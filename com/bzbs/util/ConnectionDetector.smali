.class public Lcom/bzbs/util/ConnectionDetector;
.super Ljava/lang/Object;
.source "ConnectionDetector.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/bzbs/util/ConnectionDetector;->a:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 16
    iget-object v0, p0, Lcom/bzbs/util/ConnectionDetector;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 17
    if-eqz v0, :cond_23

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 19
    if-eqz v2, :cond_23

    move v0, v1

    .line 20
    :goto_15
    array-length v3, v2

    if-ge v0, v3, :cond_23

    .line 21
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_24

    .line 22
    const/4 v1, 0x1

    .line 26
    :cond_23
    return v1

    .line 20
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_15
.end method
