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

    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    .prologue
    .line 2343
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_b0

    .line 2345
    const-string v12, ""

    .line 2348
    .local v12, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2350
    .local v13, "jsonRoot":Lorg/json/JSONObject;
    const-string v1, "PrivilegeMessage"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2351
    .local v8, "privilegeMessage":Ljava/lang/String;
    const-string v1, "Serial"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2354
    .local v7, "serial":Ljava/lang/String;
    const-string v1, "ExpireIn"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    .line 2374
    .local v5, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v9

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9d} :catch_9e

    .line 2402
    .end local v5    # "longExpireIn":J
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v12    # "error_message":Ljava/lang/String;
    .end local v13    # "jsonRoot":Lorg/json/JSONObject;
    :goto_9d
    return-void

    .line 2377
    .restart local v12    # "error_message":Ljava/lang/String;
    :catch_9e
    move-exception v11

    .line 2378
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 2379
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v12, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 2385
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "error_message":Ljava/lang/String;
    :cond_b0
    const-string v16, ""

    .line 2388
    .local v16, "message":Ljava/lang/String;
    :try_start_b2
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2389
    .local v15, "json_result":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 2390
    .local v14, "json_error":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-static {v14, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_e6

    move-result-object v16

    .line 2395
    .end local v14    # "json_error":Lorg/json/JSONObject;
    .end local v15    # "json_result":Lorg/json/JSONObject;
    :goto_c7
    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 2396
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2399
    :cond_d7
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v16

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 2391
    :catch_e6
    move-exception v1

    goto :goto_c7
.end method
