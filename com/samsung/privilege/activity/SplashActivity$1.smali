.class Lcom/samsung/privilege/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/SplashActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/SplashActivity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 31
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "campaign_id"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    .local v0, "campaign_id":I
    if-lez v0, :cond_1e

    .line 33
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    # invokes: Lcom/samsung/privilege/activity/SplashActivity;->gotoCampaignDetail(I)V
    invoke-static {v2, v0}, Lcom/samsung/privilege/activity/SplashActivity;->access$000(Lcom/samsung/privilege/activity/SplashActivity;I)V

    .line 78
    :goto_1d
    return-void

    .line 35
    :cond_1e
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetIsLoginBegin(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3d

    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetIsLoginComplete(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 36
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-static {v2, v4}, Lcom/bzbs/data/UserLogin;->Logout(Landroid/content/Context;Z)V

    goto :goto_1d

    .line 38
    :cond_3d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 41
    iget-object v2, p0, Lcom/samsung/privilege/activity/SplashActivity$1;->this$0:Lcom/samsung/privilege/activity/SplashActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/SplashActivity;->finish()V

    goto :goto_1d
.end method
