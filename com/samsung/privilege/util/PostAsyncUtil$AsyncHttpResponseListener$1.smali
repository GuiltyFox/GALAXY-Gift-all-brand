.class Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 2004
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v4, "jsonRoot":Lorg/json/JSONObject;
    const-string v9, "RowKey"

    invoke-static {v4, v9}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2007
    .local v3, "id":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2008
    .local v7, "points":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_ac

    .line 2012
    .local v0, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    :try_start_14
    const-string v9, "buzzebees"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2013
    .local v6, "json_buzzebees":Lorg/json/JSONObject;
    const-string v9, "points"

    invoke-static {v6, v9}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v7

    .line 2014
    const-string v8, "comment"

    .line 2015
    .local v8, "strFrom":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/util/PostAsyncUtil;->gHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$4()Landroid/os/Handler;

    move-result-object v9

    sget-object v10, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    invoke-static {v7, v8, v9, v10}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2b} :catch_6f

    .line 2024
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v8    # "strFrom":Ljava/lang/String;
    :goto_2b
    :try_start_2b
    const-string v9, "buzzebees"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2025
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    const-string v9, "badges"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 2026
    .local v5, "json_badges":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3b} :catch_d4

    move-result v9

    if-lt v2, v9, :cond_c4

    .line 2035
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_3e
    :try_start_3e
    iget-object v9, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v9, v9, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v10, v10, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_49} :catch_ee

    .line 2042
    :goto_49
    :try_start_49
    invoke-static {v4, v7, v0}, Lcom/facebook/android/PostEvents;->onPostSuccessReview(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    .line 2045
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v10, v10, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_photo.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->DeleteFile(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$5(Ljava/lang/String;)V

    .line 2046
    iget-object v9, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v9, v9, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v10, 0x1

    # invokes: Lcom/samsung/privilege/util/PostAsyncUtil;->MoveFileAndPhoto(Ljava/lang/String;I)V
    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->access$6(Ljava/lang/String;I)V

    .line 2066
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :goto_6e
    return-void

    .line 2019
    .restart local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :catch_6f
    move-exception v1

    .line 2020
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AsyncHttpResponseHandler|onSuccess|error no point :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_87} :catch_88

    goto :goto_2b

    .line 2055
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_88
    move-exception v1

    .line 2057
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_89
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AsyncHttpResponseHandler|Exception|1"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    .line 2059
    iget-object v9, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v9, v9, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v10, p0, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v10, v10, Lcom/samsung/privilege/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_ab} :catch_ac

    goto :goto_6e

    .line 2062
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :catch_ac
    move-exception v1

    .line 2063
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AsyncHttpResponseHandler|Exception|2"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v11}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto :goto_6e

    .line 2027
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/BadgeAlert;>;"
    .restart local v2    # "i":I
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "json_badges":Lorg/json/JSONArray;
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :cond_c4
    :try_start_c4
    new-instance v9, Lcom/samsung/privilege/bean/BadgeAlert;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d0} :catch_d4

    .line 2026
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    .line 2029
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_d4
    move-exception v1

    .line 2030
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_d5
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AsyncHttpResponseHandler|onSuccess|error no badges :"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V

    goto/16 :goto_3e

    .line 2037
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_ee
    move-exception v1

    .line 2038
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "StatusPostListener:cancel notification:exception:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/privilege/util/PostAsyncUtil;->LOGCONSOLE(Ljava/lang/String;Z)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_106} :catch_88

    goto/16 :goto_49
.end method
