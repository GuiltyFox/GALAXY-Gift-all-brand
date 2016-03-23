.class Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;
.super Ljava/lang/Object;
.source "PostAsyncUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->val$response:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 903
    .local v4, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v8, "RowKey"

    invoke-static {v4, v8}, Lcom/bzbs/lib/survey/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "id":Ljava/lang/String;
    const/4 v7, 0x0

    .line 906
    .local v7, "points":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_132

    .line 910
    .local v0, "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    :try_start_15
    const-string/jumbo v8, "buzzebees"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 911
    .local v6, "json_buzzebees":Lorg/json/JSONObject;
    const-string/jumbo v8, "points"

    invoke-static {v6, v8}, Lcom/bzbs/lib/survey/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_22} :catch_47

    move-result v7

    .line 920
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :goto_23
    :try_start_23
    const-string/jumbo v8, "buzzebees"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 921
    .restart local v6    # "json_buzzebees":Lorg/json/JSONObject;
    const-string/jumbo v8, "badges"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 922
    .local v5, "json_badges":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_b7

    .line 923
    new-instance v8, Lcom/bzbs/lib/survey/bean/BadgeAlert;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/bzbs/lib/survey/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_96

    .line 922
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 915
    .end local v2    # "i":I
    .end local v5    # "json_badges":Lorg/json/JSONArray;
    .end local v6    # "json_buzzebees":Lorg/json/JSONObject;
    :catch_47
    move-exception v1

    .line 916
    .local v1, "e":Ljava/lang/Exception;
    :try_start_48
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AsyncHttpResponseHandler|onSuccess|error no point :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_68} :catch_69

    goto :goto_23

    .line 952
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_69
    move-exception v1

    .line 954
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6a
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AsyncHttpResponseHandler|Exception|1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 956
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v9, v9, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_95} :catch_132

    .line 963
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :goto_95
    return-void

    .line 925
    .restart local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v7    # "points":I
    :catch_96
    move-exception v1

    .line 926
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_97
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AsyncHttpResponseHandler|onSuccess|error no badges :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_b7} :catch_69

    .line 931
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b7
    :try_start_b7
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->notificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget v9, v9, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->IntNotification_posting_number:I

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c2} :catch_110

    .line 938
    :goto_c2
    :try_start_c2
    # getter for: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$200()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "#4|badgeAlerts "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {v4, v7, v0}, Lcom/bzbs/lib/survey/util/async/PostEvents;->onPostSuccessReview(Lorg/json/JSONObject;ILjava/util/ArrayList;)V

    .line 942
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v10, v10, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_photo.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->DeleteFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    .line 943
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v9, v9, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->filepath:Ljava/lang/String;

    const/4 v10, 0x1

    # invokes: Lcom/bzbs/lib/survey/util/PostAsyncUtil;->MoveFileAndPhoto(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v8, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->access$400(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_95

    .line 933
    :catch_110
    move-exception v1

    .line 934
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "StatusPostListener:cancel notification:exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_131} :catch_69

    goto :goto_c2

    .line 959
    .end local v0    # "badgeAlerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/bzbs/lib/survey/bean/BadgeAlert;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    .end local v7    # "points":I
    :catch_132
    move-exception v1

    .line 960
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener$1;->this$0:Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;

    iget-object v8, v8, Lcom/bzbs/lib/survey/util/PostAsyncUtil$AsyncHttpResponseListener;->gAppContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AsyncHttpResponseHandler|Exception|2"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v11}, Lcom/bzbs/lib/survey/util/PostAsyncUtil;->LOGCONSOLE(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_95
.end method
