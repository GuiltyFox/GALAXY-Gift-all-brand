.class Lcom/samsung/privilege/activity/CampaignDetailActivity$29;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->fetchPlaces(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

.field private final synthetic val$pLoadMore:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->val$pLoadMore:Z

    .line 3374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 3377
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "api/campaign/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$10(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/places?token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&access_token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetTokenFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3379
    .local v1, "url":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->val$pLoadMore:Z

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c0

    .line 3380
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->val$pLoadMore:Z

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$49(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3381
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gCampaignBranches:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$48(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/bean/PlaceNewDetail;

    iget v2, v2, Lcom/samsung/privilege/bean/PlaceNewDetail;->rank:I

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$50(Lcom/samsung/privilege/activity/CampaignDetailActivity;J)V

    .line 3382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&lastRank="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gLastRank:J
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$51(Lcom/samsung/privilege/activity/CampaignDetailActivity;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3388
    :goto_9d
    const/4 v0, 0x0

    .line 3389
    .local v0, "cache_name":Ljava/lang/String;
    const-string v2, "campaign.detail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    new-instance v2, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-boolean v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->val$pLoadMore:Z

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity$placesRequestListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;ZLjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 3391
    return-void

    .line 3384
    .end local v0    # "cache_name":Ljava/lang/String;
    :cond_c0
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    iget-boolean v3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->val$pLoadMore:Z

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$49(Lcom/samsung/privilege/activity/CampaignDetailActivity;Z)V

    .line 3385
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$52(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/util/ArrayList;)V

    goto :goto_9d
.end method
