.class Lcom/samsung/privilege/activity/CampaignDetailActivity$5;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity;->getPoints()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1054
    const/4 v1, 0x0

    .line 1055
    .local v1, "isGetPoints":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 1075
    return-void

    .line 1057
    :cond_4
    :try_start_4
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-virtual {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    .local v2, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v2, :cond_51

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 1059
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "api/profile/me/point?token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1060
    .local v3, "url":Ljava/lang/String;
    const-string v4, "campaign.detail"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getPoints="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$5;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$GetPointsListener;-><init>(Lcom/samsung/privilege/activity/CampaignDetailActivity;)V

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_71

    .line 1062
    const/4 v1, 0x1

    .line 1069
    .end local v2    # "strTokenBuzzeBees":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_51
    :goto_51
    const-wide/16 v4, 0x3e8

    :try_start_53
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_56
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_1

    .line 1070
    :catch_57
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "campaign.detail"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(InterruptedException|getPoints):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1064
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_71
    move-exception v0

    .line 1065
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "campaign.detail"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(Exception|getPoints):"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method
