.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    .line 2342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 2345
    move-object/from16 v0, p0

    iget v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b0

    .line 2347
    const-string v13, ""

    .line 2350
    .local v13, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2352
    .local v14, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "PrivilegeMessage"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2353
    .local v9, "privilegeMessage":Ljava/lang/String;
    const-string v2, "Serial"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2356
    .local v8, "serial":Ljava/lang/String;
    const-string v2, "ExpireIn"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 2376
    .local v6, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v11

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v11

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 2378
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9d} :catch_9e

    .line 2404
    .end local v6    # "longExpireIn":J
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v13    # "error_message":Ljava/lang/String;
    .end local v14    # "jsonRoot":Lorg/json/JSONObject;
    :goto_9d
    return-void

    .line 2379
    .restart local v13    # "error_message":Ljava/lang/String;
    :catch_9e
    move-exception v12

    .line 2380
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 2381
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v13, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 2387
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "error_message":Ljava/lang/String;
    :cond_b0
    const-string v17, ""

    .line 2390
    .local v17, "message":Ljava/lang/String;
    :try_start_b2
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2391
    .local v16, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 2392
    .local v15, "json_error":Lorg/json/JSONObject;
    const-string v2, "message"

    invoke-static {v15, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ca} :catch_ea

    move-result-object v17

    .line 2397
    .end local v15    # "json_error":Lorg/json/JSONObject;
    .end local v16    # "json_result":Lorg/json/JSONObject;
    :goto_cb
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 2401
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 2393
    :catch_ea
    move-exception v2

    goto :goto_cb
.end method
