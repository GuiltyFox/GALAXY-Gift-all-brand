.class Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->val$response:Ljava/lang/String;

    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    .line 1586
    const-string v3, ""

    .line 1587
    .local v3, "id":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1588
    .local v8, "points":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v0, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    :try_start_9
    new-instance v4, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v4, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v4, "jsonRoot":Lorg/json/JSONObject;
    const-string v10, "id"

    invoke-static {v4, v10}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_d5

    move-result-object v3

    .line 1594
    :try_start_16
    const-string v10, "buzzebees"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1595
    .local v6, "json_buzzebees":Lorg/json/JSONObject;
    const-string v10, "points"

    invoke-static {v6, v10}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v8

    .line 1596
    const-string v9, "comment"

    .line 1597
    .local v9, "strFrom":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v10

    sget-object v11, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v8, v9, v10, v11}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2d} :catch_bb

    .line 1606
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v9    # "strFrom":Ljava/lang/String;
    :goto_2d
    :try_start_2d
    const-string v10, "buzzebees"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1607
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    const-string v10, "badges"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1608
    .local v5, "json_badges":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3d} :catch_fe

    move-result v10

    if-lt v2, v10, :cond_ee

    .line 1616
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_40
    :try_start_40
    const-string v10, "buzzebees"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1617
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    const-string v10, "new_user_rank"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1618
    .local v7, "json_user_rank":Lorg/json/JSONObject;
    sget-object v10, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    if-eqz v10, :cond_5b

    .line 1619
    sget-object v10, Lcom/samsung/privilege/AppSetting;->APP_CONTEXT:Landroid/content/Context;

    const-string v11, "rank"

    invoke-static {v7, v11}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/UserLogin;->SetRank(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_5b} :catch_118

    .line 1630
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v7    # "json_user_rank":Lorg/json/JSONObject;
    :cond_5b
    :goto_5b
    :try_start_5b
    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v10, v10, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v11, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget v11, v11, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->IntNotification_posting_number:I

    invoke-virtual {v10, v11}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_66} :catch_132

    .line 1636
    :goto_66
    const-string v10, "PONGSAK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PostCommentListener response="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->val$response:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    const-string v10, "PONGSAK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "PostCommentListener AppSetting.QUEUE_POINTS.size()="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    invoke-interface {v12}, Ljava/util/Queue;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    invoke-static {v3, v8, v0}, Lcom/facebook/android/PostEvents;->onPostSuccess(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1642
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v11, v11, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_photo.jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$5(Ljava/lang/String;)V

    .line 1643
    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;

    iget-object v10, v10, Lcom/samsung/privilege/util/PostAsyncUtil$PostCommentListener;->filepath:Ljava/lang/String;

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v10, v13}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 1653
    return-void

    .line 1601
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    :catch_bb
    move-exception v1

    .line 1602
    .local v1, "e":Ljava/lang/Exception;
    :try_start_bc
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostCommentListener:point:exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d3} :catch_d5

    goto/16 :goto_2d

    .line 1624
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    :catch_d5
    move-exception v1

    .line 1625
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostCommentListener:main:exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_5b

    .line 1609
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "json_badges":Lorg/json/JSONArray;
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :cond_ee
    :try_start_ee
    new-instance v10, Lcom/samsung/privilege/bean/BadgeAlert;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_fa} :catch_fe

    .line 1608
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    .line 1611
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_fe
    move-exception v1

    .line 1612
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_ff
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostCommentListener:badge:exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_40

    .line 1621
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_118
    move-exception v1

    .line 1622
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostCommentListener:userrank:exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_130} :catch_d5

    goto/16 :goto_5b

    .line 1632
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    :catch_132
    move-exception v1

    .line 1633
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostCommentListener:cancel notification:exception:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_66
.end method
