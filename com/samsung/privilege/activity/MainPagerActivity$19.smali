.class Lcom/samsung/privilege/activity/MainPagerActivity$19;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->refreshLayoutAfterLogin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$action:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1430
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetIsCompleteProfileRequire(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1431
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1432
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "force_update"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1433
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1450
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_26
    :goto_26
    return-void

    .line 1435
    :cond_27
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1436
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_26

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1437
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    const-string/jumbo v3, "qr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1438
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->doScanQRCode(Landroid/view/View;)V

    goto :goto_26

    .line 1439
    :cond_4d
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    const-string/jumbo v3, "account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 1440
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->doMyAccount(Landroid/view/View;)V

    goto :goto_26

    .line 1441
    :cond_5e
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    const-string/jumbo v3, "history"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 1442
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->doHistory(Landroid/view/View;)V

    goto :goto_26

    .line 1443
    :cond_6f
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    const-string/jumbo v3, "help"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1444
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-virtual {v2, v4}, Lcom/samsung/privilege/activity/MainPagerActivity;->doRequestHelp(Landroid/view/View;)V

    goto :goto_26

    .line 1445
    :cond_80
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->val$action:Ljava/lang/String;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1446
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$19;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$900(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/DialogNotification;->showDialogNotification(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_26
.end method
