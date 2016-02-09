.class public Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "CampaignDetailAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Z)V
    .registers 4
    .param p2, "pIsLike"    # Z

    .prologue
    .line 1172
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->gIsLike:Z

    .line 1173
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->gIsLike:Z

    .line 1174
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 14
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1180
    const-string v7, "campaign.ad"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(gIsLike="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->gIsLike:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")response_code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",response_text="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v8, "onComplete"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, " !isFinishing() "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_9a

    const/4 v7, 0x0

    :goto_3c
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-virtual {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->isFinishing()Z

    move-result v7

    if-nez v7, :cond_99

    .line 1185
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_bb

    .line 1187
    :try_start_53
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v7, "Like"

    invoke-static {v2, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_ad

    .line 1189
    const/4 v5, 0x0

    .line 1195
    .local v5, "points":I
    :try_start_5e
    const-string v7, "buzzebees"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_63} :catch_c8

    move-result-object v4

    .line 1198
    .local v4, "json_buzzebees":Lorg/json/JSONObject;
    :try_start_64
    const-string v7, "points"

    invoke-static {v4, v7}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 1199
    if-lez v5, :cond_82

    .line 1200
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1202
    const-string v6, "Like"

    .line 1203
    .local v6, "strFrom":Ljava/lang/String;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$4(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    invoke-static {v5, v6, v7, v8}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_82} :catch_cc

    .line 1211
    .end local v6    # "strFrom":Ljava/lang/String;
    :cond_82
    :goto_82
    :try_start_82
    const-string v7, "badges"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1212
    .local v3, "json_badges":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_89
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8c} :catch_ca

    move-result v7

    if-lt v1, v7, :cond_9c

    .line 1233
    .end local v1    # "i":I
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    :goto_8f
    :try_start_8f
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->playPointsAndBadge()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$10(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_94} :catch_c8

    .line 1240
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_94
    :try_start_94
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_99} :catch_ad

    .line 1253
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :cond_99
    :goto_99
    return-void

    .line 1182
    :cond_9a
    const/4 v7, 0x1

    goto :goto_3c

    .line 1213
    .restart local v1    # "i":I
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v3    # "json_badges":Lorg/json/JSONArray;
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :cond_9c
    :try_start_9c
    sget-object v7, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    new-instance v8, Lic/buzzebeeslib/bean/BadgeAlert;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lic/buzzebeeslib/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v7, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_aa} :catch_ca

    .line 1212
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 1242
    .end local v1    # "i":I
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    .end local v3    # "json_badges":Lorg/json/JSONArray;
    .end local v4    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v5    # "points":I
    :catch_ad
    move-exception v0

    .line 1243
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    .line 1244
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    goto :goto_99

    .line 1247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_bb
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    const-string v8, "Like campaign error!"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$5(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;Ljava/lang/String;)V

    .line 1248
    iget-object v7, p0, Lic/buzzebeeslib/activity/CampaignDetailAdActivity$DoLikeListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdActivity;

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->processLikeAction()V
    invoke-static {v7}, Lic/buzzebeeslib/activity/CampaignDetailAdActivity;->access$11(Lic/buzzebeeslib/activity/CampaignDetailAdActivity;)V

    goto :goto_99

    .line 1234
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "points":I
    :catch_c8
    move-exception v7

    goto :goto_94

    .line 1217
    .restart local v4    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_ca
    move-exception v7

    goto :goto_8f

    .line 1205
    :catch_cc
    move-exception v7

    goto :goto_82
.end method
