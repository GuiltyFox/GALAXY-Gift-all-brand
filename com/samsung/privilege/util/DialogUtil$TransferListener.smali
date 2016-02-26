.class public Lcom/samsung/privilege/util/DialogUtil$TransferListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/DialogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransferListener"
.end annotation


# instance fields
.field private gActivityContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    .line 251
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 284
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->onSuccess(ILjava/lang/String;)V

    .line 285
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 290
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 11
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 260
    # getter for: Lcom/samsung/privilege/util/DialogUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/DialogUtil;->access$0()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(TransferListener|onComplete)response={"

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

    .line 262
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_3c

    .line 263
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    const v7, 0x7f0902ad

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    sget-object v5, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v5, :cond_3b

    .line 266
    sget-object v5, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V

    .line 280
    :cond_3b
    :goto_3b
    return-void

    .line 270
    :cond_3c
    :try_start_3c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "json_result":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 272
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "id":Ljava/lang/String;
    const-string v5, "message"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_58} :catch_59

    goto :goto_3b

    .line 275
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "json_result":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    :catch_59
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    const v6, 0x7f0902ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/util/DialogUtil$TransferListener;->gActivityContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3b
.end method
