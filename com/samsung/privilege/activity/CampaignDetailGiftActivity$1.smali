.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showRedeem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->val$startTime:J

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 23
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 322
    :try_start_0
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 323
    .local v4, "endTime":J
    const-string/jumbo v12, "Campaign"

    const-string/jumbo v13, "redeemCampaignCustomInput"

    const-string/jumbo v14, "Failure"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->val$startTime:J

    move-wide/from16 v16, v0

    sub-long v16, v4, v16

    move-wide/from16 v0, v16

    invoke-static {v12, v13, v14, v0, v1}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_f7

    .line 328
    .end local v4    # "endTime":J
    :goto_1f
    const-string/jumbo v10, ""

    .line 330
    .local v10, "response_text":Ljava/lang/String;
    :try_start_22
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_ad

    .line 331
    .end local v10    # "response_text":Ljava/lang/String;
    .local v11, "response_text":Ljava/lang/String;
    :try_start_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(doRedeem|onFailure)response_code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",response="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_55} :catch_f4

    move-object v10, v11

    .line 336
    .end local v11    # "response_text":Ljava/lang/String;
    .restart local v10    # "response_text":Ljava/lang/String;
    :goto_56
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 339
    :try_start_61
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 340
    .local v8, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v12, "error"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 341
    .local v7, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v12, "id"

    invoke-static {v7, v12}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "id":Ljava/lang/String;
    const-string/jumbo v12, "message"

    invoke-static {v7, v12}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "message":Ljava/lang/String;
    const-string/jumbo v12, "1411"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ec

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v14, 0x7f09031d

    invoke-virtual {v13, v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/bzbs/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_ac} :catch_d8

    .line 356
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    :goto_ac
    return-void

    .line 332
    .end local v9    # "message":Ljava/lang/String;
    :catch_ad
    move-exception v3

    .line 333
    .local v3, "ex":Ljava/lang/Exception;
    :goto_ae
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "(doRedeem|onFailure)response_code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 347
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "json_error":Lorg/json/JSONObject;
    .restart local v8    # "json_result":Lorg/json/JSONObject;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_d0
    :try_start_d0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d7} :catch_d8

    goto :goto_ac

    .line 352
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    :catch_d8
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v13, 0x7f0900ce

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 354
    .restart local v9    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_ac

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "json_error":Lorg/json/JSONObject;
    .restart local v8    # "json_result":Lorg/json/JSONObject;
    :cond_ec
    :try_start_ec
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_f3} :catch_d8

    goto :goto_ac

    .line 332
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "response_text":Ljava/lang/String;
    .restart local v11    # "response_text":Ljava/lang/String;
    :catch_f4
    move-exception v3

    move-object v10, v11

    .end local v11    # "response_text":Ljava/lang/String;
    .restart local v10    # "response_text":Ljava/lang/String;
    goto :goto_ae

    .line 324
    .end local v10    # "response_text":Ljava/lang/String;
    :catch_f7
    move-exception v12

    goto/16 :goto_1f
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 303
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 304
    .local v0, "endTime":J
    const-string/jumbo v3, "Campaign"

    const-string/jumbo v4, "redeemCampaignCustomInput"

    const-string/jumbo v5, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_5c

    .line 309
    .end local v0    # "endTime":J
    :goto_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 310
    .local v2, "response_text":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(doRedeem|onComplete)response_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    .line 316
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 317
    return-void

    .line 305
    .end local v2    # "response_text":Ljava/lang/String;
    :catch_5c
    move-exception v3

    goto :goto_19
.end method
