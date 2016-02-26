.class public Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "placesRequestListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gLoadMore:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;ZLjava/lang/String;)V
    .registers 5
    .param p2, "pLoadMore"    # Z
    .param p3, "pCacheName"    # Ljava/lang/String;

    .prologue
    .line 3442
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 3440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 3443
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->gLoadMore:Z

    .line 3444
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 3445
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Z
    .registers 2

    .prologue
    .line 3439
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailActivity;
    .registers 2

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 3449
    const-string v1, "campaign.detail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(placesRequestListener|onComplete)response={"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_55

    .line 3452
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3472
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3480
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gListBranch:Lcom/samsung/privilege/control/PullToRefreshListView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$22(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/control/PullToRefreshListView;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$3;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener$3;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;)V

    .line 3485
    const-wide/16 v4, 0x3e8

    .line 3480
    invoke-virtual {v1, v2, v4, v5}, Lcom/samsung/privilege/control/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3487
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$25(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3488
    :goto_54
    return-void

    .line 3464
    :cond_55
    const-string v0, "Error: nearby places could not be fetched"

    .line 3465
    .local v0, "err_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 3466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3468
    :cond_7a
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    goto :goto_54
.end method
