.class public Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "placesRequestListener"
.end annotation


# instance fields
.field private gCacheName:Ljava/lang/String;

.field private gLoadMore:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;ZLjava/lang/String;)V
    .registers 5
    .param p2, "pLoadMore"    # Z
    .param p3, "pCacheName"    # Ljava/lang/String;

    .prologue
    .line 2419
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 2417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 2420
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->gLoadMore:Z

    .line 2421
    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->gCacheName:Ljava/lang/String;

    .line 2422
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)Z
    .registers 2

    .prologue
    .line 2416
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->gLoadMore:Z

    return v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    .registers 2

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 2426
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

    .line 2428
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_45

    .line 2429
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;

    invoke-direct {v2, p0, p2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2449
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2464
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$23(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 2465
    :goto_44
    return-void

    .line 2441
    :cond_45
    const-string v0, "Error: nearby places could not be fetched"

    .line 2442
    .local v0, "err_message":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 2443
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

    .line 2445
    :cond_6a
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$placesRequestListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto :goto_44
.end method
