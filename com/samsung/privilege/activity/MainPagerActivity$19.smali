.class Lcom/samsung/privilege/activity/MainPagerActivity$19;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1484
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1485
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1486
    const-string/jumbo v1, "force_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1487
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1504
    :cond_26
    :goto_26
    return-void

    .line 1489
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1490
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1491
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    const-string/jumbo v1, "qr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1492
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V

    goto :goto_26

    .line 1493
    :cond_4d
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1494
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doMyAccount(Landroid/view/View;)V

    goto :goto_26

    .line 1495
    :cond_5e
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1496
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doHistory(Landroid/view/View;)V

    goto :goto_26

    .line 1497
    :cond_6f
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    const-string/jumbo v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1498
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doRequestHelp(Landroid/view/View;)V

    goto :goto_26

    .line 1499
    :cond_80
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->a:Ljava/lang/String;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1500
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_26
.end method
