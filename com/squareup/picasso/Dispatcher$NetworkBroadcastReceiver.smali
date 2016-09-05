.class Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Dispatcher.java"


# instance fields
.field private final a:Lcom/squareup/picasso/Dispatcher;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Dispatcher;)V
    .registers 2

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 550
    iput-object p1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a:Lcom/squareup/picasso/Dispatcher;

    .line 551
    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a:Lcom/squareup/picasso/Dispatcher;

    iget-boolean v1, v1, Lcom/squareup/picasso/Dispatcher;->o:Z

    if-eqz v1, :cond_17

    .line 557
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    :cond_17
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a:Lcom/squareup/picasso/Dispatcher;

    iget-object v1, v1, Lcom/squareup/picasso/Dispatcher;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 569
    if-nez p2, :cond_3

    .line 582
    :cond_2
    :goto_2
    return-void

    .line 572
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 573
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 574
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a:Lcom/squareup/picasso/Dispatcher;

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Dispatcher;->a(Z)V

    goto :goto_2

    .line 578
    :cond_27
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    const-string/jumbo v0, "connectivity"

    invoke-static {p1, v0}, Lcom/squareup/picasso/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 580
    iget-object v1, p0, Lcom/squareup/picasso/Dispatcher$NetworkBroadcastReceiver;->a:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Dispatcher;->a(Landroid/net/NetworkInfo;)V

    goto :goto_2
.end method
