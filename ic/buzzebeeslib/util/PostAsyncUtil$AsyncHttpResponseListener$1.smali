.class Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

.field private final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 902
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 903
    .local v4, "jsonRoot":Lorg/json/JSONObject;
    const-string v8, "RowKey"

    invoke-static {v4, v8}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "id":Ljava/lang/String;
    const/4 v7, 0x0

    .line 906
    .local v7, "points":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_cc

    .line 910
    .local v0, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    :try_start_14
    const-string v8, "buzzebees"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 911
    .local v6, "json_buzzebees":Lorg/json/JSONObject;
    const-string v8, "points"

    invoke-static {v6, v8}, Lic/buzzebeeslib/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_86

    move-result v7

    .line 920
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_20
    :try_start_20
    const-string v8, "buzzebees"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 921
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    const-string v8, "badges"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 922
    .local v5, "json_badges":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_f8

    move-result v8

    if-lt v2, v8, :cond_e8

    .line 931
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_33
    :try_start_33
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v9, v9, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_116

    .line 938
    :goto_3e
    :try_start_3e
    # getter for: Lic/buzzebeeslib/util/PostAsyncUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$4()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "#4|badgeAlerts "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {v4, v7, v0}, Lic/buzzebeeslib/util/async/PostEvents;->onPostSuccessReview(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    .line 942
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v10, v10, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_photo.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v8, v9}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$5(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v9, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v9, v9, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v10, 0x1

    # invokes: Lic/buzzebeeslib/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v8, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->access$6(Landroid/content/Context;Ljava/lang/String;I)V

    .line 963
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :goto_85
    return-void

    .line 915
    .restart local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :catch_86
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

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

    invoke-static {v8, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_a2} :catch_a4

    goto/16 :goto_20

    .line 952
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_a4
    move-exception v1

    .line 954
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_a5
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

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

    invoke-static {v8, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 956
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v9, v9, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_cb} :catch_cc

    goto :goto_85

    .line 959
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :catch_cc
    move-exception v1

    .line 960
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "AsyncHttpResponseHandler|Exception|2"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_85

    .line 923
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lic/buzzebeeslib/bean/BadgeAlert;>;"
    .restart local v2    # "i":I
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v5    # "json_badges":Lorg/json/JSONArray;
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :cond_e8
    :try_start_e8
    new-instance v8, Lic/buzzebeeslib/bean/BadgeAlert;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lic/buzzebeeslib/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f4} :catch_f8

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2d

    .line 925
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_f8
    move-exception v1

    .line 926
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_f9
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

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

    invoke-static {v8, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_33

    .line 933
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_116
    move-exception v1

    .line 934
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$1:Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lic/buzzebeeslib/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

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

    invoke-static {v8, v9, v10}, Lic/buzzebeeslib/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_132} :catch_a4

    goto/16 :goto_3e
.end method
