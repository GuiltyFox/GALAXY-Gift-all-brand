.class Lcom/samsung/privilege/activity/MainPagerActivity$20;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1670
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    if-eqz v0, :cond_26

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1672
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "qr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1673
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V

    .line 1690
    :cond_26
    :goto_26
    return-void

    .line 1674
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1675
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doMyAccount(Landroid/view/View;)V

    goto :goto_26

    .line 1676
    :cond_38
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1677
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doHistory(Landroid/view/View;)V

    goto :goto_26

    .line 1678
    :cond_49
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1679
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->doRequestHelp(Landroid/view/View;)V

    goto :goto_26

    .line 1680
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1681
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->f(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_26

    .line 1682
    :cond_71
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->a:Ljava/lang/String;

    const-string/jumbo v1, "dashboard_click"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1683
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Ljava/lang/Object;

    if-eqz v0, :cond_26

    .line 1684
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->b:Ljava/lang/Object;

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 1685
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$20;->c:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v2, v0, Lcom/bzbs/bean/DashboardItem;->cat:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->a(Ljava/lang/String;Lcom/bzbs/bean/DashboardItem;)V

    goto :goto_26
.end method
