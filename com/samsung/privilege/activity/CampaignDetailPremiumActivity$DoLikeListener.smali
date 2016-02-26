.class public Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "CampaignDetailPremiumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V
    .registers 4
    .param p2, "pIsLike"    # Z

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->gIsLike:Z

    .line 1146
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->gIsLike:Z

    .line 1147
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 13
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1151
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(gIsLike="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->gIsLike:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")response_code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",response_text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/16 v6, 0xc8

    if-ne p1, v6, :cond_7f

    .line 1154
    :try_start_2e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v6, "Like"

    invoke-static {v1, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_71

    move-result v3

    .line 1156
    .local v3, "like":I
    const/4 v4, 0x0

    .line 1158
    .local v4, "points":I
    :try_start_3a
    const-string v6, "buzzebees"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1159
    .local v2, "json_buzzebees":Lorg/json/JSONObject;
    const-string v6, "points"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 1160
    if-lez v4, :cond_55

    .line 1161
    const-string v5, "like"

    .line 1162
    .local v5, "strFrom":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    invoke-static {v4, v5, v6, v7}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_55} :catch_5b

    .line 1176
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v3    # "like":I
    .end local v4    # "points":I
    .end local v5    # "strFrom":Ljava/lang/String;
    :cond_55
    :goto_55
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getPoints()V
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$9(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    .line 1177
    return-void

    .line 1164
    .restart local v1    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v3    # "like":I
    .restart local v4    # "points":I
    :catch_5b
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5c
    const-string v6, "campaign.detail"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ExceptionLike= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_70} :catch_71

    goto :goto_55

    .line 1167
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "like":I
    .end local v4    # "points":I
    :catch_71
    move-exception v0

    .line 1168
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const-string v7, "Like campaign error!"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    .line 1169
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$13(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    goto :goto_55

    .line 1172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7f
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const-string v7, "Like campaign error!"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    .line 1173
    iget-object v6, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$DoLikeListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->processLikeAction()V
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$13(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)V

    goto :goto_55
.end method
