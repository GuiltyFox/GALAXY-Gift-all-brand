.class Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;
.super Ljava/lang/Object;
.source "CampaignDetailAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->doLike(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1144
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lic/buzzebeeslib/LibUserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1145
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_76

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 1146
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    sget v4, Lic/buzzebeeslib/R$idCampaignDetailAd;->pbImgLike:I

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 1147
    .local v0, "pbImgLike":Landroid/widget/ProgressBar;
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1150
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-boolean v3, v3, Lic/buzzebeeslib/bean/Campaign;->IsLike:Z

    if-eqz v3, :cond_77

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/likes?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "url":Ljava/lang/String;
    const-string v3, "campaign.ad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(UNLIKE)url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {v3, v4, v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Z)V

    invoke-static {v2, v6, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_DELETE(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    .line 1164
    .end local v0    # "pbImgLike":Landroid/widget/ProgressBar;
    .end local v2    # "url":Ljava/lang/String;
    :cond_76
    :goto_76
    return-void

    .line 1159
    .restart local v0    # "pbImgLike":Landroid/widget/ProgressBar;
    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "api/campaign/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$7(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/likes?token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    .restart local v2    # "url":Ljava/lang/String;
    const-string v3, "campaign.ad"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(LIKE)url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    new-instance v3, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;

    iget-object v4, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$14;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Z)V

    invoke-static {v2, v6, v3, v6}, Lic/buzzebeeslib/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lic/buzzebeeslib/util/http/RQListener;Ljava/lang/Object;)V

    goto :goto_76
.end method
