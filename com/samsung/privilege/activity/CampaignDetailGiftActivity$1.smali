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
    .line 298
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
    .line 321
    :try_start_0
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 322
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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_ef

    .line 327
    .end local v4    # "endTime":J
    :goto_1f
    const-string/jumbo v10, ""

    .line 329
    .local v10, "response_text":Ljava/lang/String;
    :try_start_22
    new-instance v11, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_a9

    .line 330
    .end local v10    # "response_text":Ljava/lang/String;
    .local v11, "response_text":Ljava/lang/String;
    :try_start_29
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

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
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_51} :catch_ec

    move-object v10, v11

    .line 335
    .end local v11    # "response_text":Ljava/lang/String;
    .restart local v10    # "response_text":Ljava/lang/String;
    :goto_52
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 338
    :try_start_5d
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    .local v8, "json_result":Lorg/json/JSONObject;
    const-string/jumbo v12, "error"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 340
    .local v7, "json_error":Lorg/json/JSONObject;
    const-string/jumbo v12, "id"

    invoke-static {v7, v12}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, "id":Ljava/lang/String;
    const-string/jumbo v12, "message"

    invoke-static {v7, v12}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 342
    .local v9, "message":Ljava/lang/String;
    const-string/jumbo v12, "1411"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e4

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v12}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/bzbs/data/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v14, 0x7f09031e

    invoke-virtual {v13, v14}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/bzbs/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_a8} :catch_d0

    .line 355
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    :goto_a8
    return-void

    .line 331
    .end local v9    # "message":Ljava/lang/String;
    :catch_a9
    move-exception v3

    .line 332
    .local v3, "ex":Ljava/lang/Exception;
    :goto_aa
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

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

    goto :goto_52

    .line 346
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "json_error":Lorg/json/JSONObject;
    .restart local v8    # "json_result":Lorg/json/JSONObject;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cf} :catch_d0

    goto :goto_a8

    .line 351
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    :catch_d0
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v13, 0x7f0900cf

    invoke-virtual {v12, v13}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 353
    .restart local v9    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a8

    .line 349
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "json_error":Lorg/json/JSONObject;
    .restart local v8    # "json_result":Lorg/json/JSONObject;
    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v12, v9}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_eb} :catch_d0

    goto :goto_a8

    .line 331
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "json_error":Lorg/json/JSONObject;
    .end local v8    # "json_result":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "response_text":Ljava/lang/String;
    .restart local v11    # "response_text":Ljava/lang/String;
    :catch_ec
    move-exception v3

    move-object v10, v11

    .end local v11    # "response_text":Ljava/lang/String;
    .restart local v10    # "response_text":Ljava/lang/String;
    goto :goto_aa

    .line 323
    .end local v10    # "response_text":Ljava/lang/String;
    :catch_ef
    move-exception v12

    goto/16 :goto_1f
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 302
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 303
    .local v0, "endTime":J
    const-string/jumbo v3, "Campaign"

    const-string/jumbo v4, "redeemCampaignCustomInput"

    const-string/jumbo v5, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_5a

    .line 308
    .end local v0    # "endTime":J
    :goto_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 309
    .local v2, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

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

    .line 311
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 313
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V

    .line 315
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$1;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 316
    return-void

    .line 304
    .end local v2    # "response_text":Ljava/lang/String;
    :catch_5a
    move-exception v3

    goto :goto_19
.end method
