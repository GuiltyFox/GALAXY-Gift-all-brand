.class public Lcom/bzbs/event/NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->a:Ljava/util/List;

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    .line 20
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;

    .line 40
    invoke-direct {p0, v0}, Lcom/bzbs/event/NetworkStateReceiver;->b(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    goto :goto_6

    .line 41
    :cond_16
    return-void
.end method

.method private b(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 51
    :cond_6
    :goto_6
    return-void

    .line 47
    :cond_7
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 48
    invoke-interface {p1}, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;->f_()V

    goto :goto_6

    .line 50
    :cond_14
    invoke-interface {p1}, Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;->g_()V

    goto :goto_6
.end method


# virtual methods
.method public a(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-direct {p0, p1}, Lcom/bzbs/event/NetworkStateReceiver;->b(Lcom/bzbs/event/NetworkStateReceiver$NetworkStateReceiverListener;)V

    .line 56
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 23
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    .line 36
    :cond_8
    :goto_8
    return-void

    .line 26
    :cond_9
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2b

    .line 30
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    .line 35
    :cond_27
    :goto_27
    invoke-direct {p0}, Lcom/bzbs/event/NetworkStateReceiver;->a()V

    goto :goto_8

    .line 31
    :cond_2b
    const-string/jumbo v0, "noConnectivity"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/event/NetworkStateReceiver;->b:Ljava/lang/Boolean;

    goto :goto_27
.end method
