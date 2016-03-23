.class public Lcom/bzbs/event/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;
    }
.end annotation


# instance fields
.field protected connected:Ljava/lang/Boolean;

.field protected listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->listeners:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->connected:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method private notifyState(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->connected:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 51
    :cond_6
    :goto_6
    return-void

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->connected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 48
    invoke-interface {p1}, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;->networkAvailable()V

    goto :goto_6

    .line 50
    :cond_14
    invoke-interface {p1}, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;->networkUnavailable()V

    goto :goto_6
.end method

.method private notifyStateToAll()V
    .registers 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/bzbs/event/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;

    .line 40
    .local v0, "listener":Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;
    invoke-direct {p0, v0}, Lcom/bzbs/event/NetworkStateReceiver;->notifyState(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    goto :goto_6

    .line 41
    .end local v0    # "listener":Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;
    :cond_16
    return-void
.end method


# virtual methods
.method public addListener(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p1}, Lcom/bzbs/event/NetworkStateReceiver;->notifyState(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 56
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_9

    .line 36
    :cond_8
    :goto_8
    return-void

    .line 26
    :cond_9
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .local v0, "manager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 29
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2b

    .line 30
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/event/NetworkStateReceiver;->connected:Ljava/lang/Boolean;

    .line 35
    :cond_27
    :goto_27
    invoke-direct {p0}, Lcom/bzbs/event/NetworkStateReceiver;->notifyStateToAll()V

    goto :goto_8

    .line 31
    :cond_2b
    const-string/jumbo v2, "noConnectivity"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 32
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/bzbs/event/NetworkStateReceiver;->connected:Ljava/lang/Boolean;

    goto :goto_27
.end method

.method public removeListener(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .registers 3
    .param p1, "l"    # Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method
