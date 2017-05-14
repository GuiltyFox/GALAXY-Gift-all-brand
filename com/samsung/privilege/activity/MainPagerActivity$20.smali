.class Lcom/samsung/privilege/activity/MainPagerActivity$20;
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
    .line 1620
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1628
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1630
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "qr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1631
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V

    .line 1643
    :cond_26
    :goto_26
    return-void

    .line 1632
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1633
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doMyAccount(Landroid/view/View;)V

    goto :goto_26

    .line 1634
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1635
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doHistory(Landroid/view/View;)V

    goto :goto_26

    .line 1636
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1637
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doRequestHelp(Landroid/view/View;)V

    goto :goto_26

    .line 1638
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1639
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_26
.end method
