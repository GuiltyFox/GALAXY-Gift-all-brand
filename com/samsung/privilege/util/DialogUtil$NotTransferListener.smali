.class public Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotTransferListener"
.end annotation


# instance fields
.field private gActivityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;->gActivityContext:Landroid/content/Context;

    .line 258
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 291
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;->onSuccess(ILjava/lang/String;)V

    .line 292
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 297
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 267
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(NotTransferListener|onComplete)response={"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_2e

    .line 272
    sget-object v5, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v5, :cond_2d

    .line 273
    sget-object v5, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V

    .line 287
    :cond_2d
    :goto_2d
    return-void

    .line 277
    :cond_2e
    :try_start_2e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 278
    .local v3, "json_result":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 279
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "id":Ljava/lang/String;
    const-string v5, "message"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4a} :catch_4b

    goto :goto_2d

    .line 282
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "json_result":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;->gActivityContext:Landroid/content/Context;

    const v6, 0x7f0a02af

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 284
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2d
.end method
