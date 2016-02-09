.class Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;
.super Ljava/lang/Object;
.source "CampaignListPullToRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 997
    const-wide/16 v2, 0x2710

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_24

    .line 1003
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gFoundLocation:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$36(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1004
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->gHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->access$13(Lcom/samsung/privilege/activity/CampaignListPullToRefresh;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2$1;-><init>(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_3e

    .line 1018
    :cond_23
    :goto_23
    return-void

    .line 998
    :catch_24
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "buzzebees.marketlist.fragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(Exception|getLocation|try):"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1011
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_3e
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    const v3, 0x7f0a0318

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    :cond_7f
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8$2;->this$1:Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;

    # getter for: Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->this$0:Lcom/samsung/privilege/activity/CampaignListPullToRefresh;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;->access$0(Lcom/samsung/privilege/activity/CampaignListPullToRefresh$8;)Lcom/samsung/privilege/activity/CampaignListPullToRefresh;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/CampaignListPullToRefresh;->showToast(Ljava/lang/String;)V

    goto :goto_23
.end method
