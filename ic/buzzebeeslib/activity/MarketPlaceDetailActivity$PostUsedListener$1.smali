.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    .line 2996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 2999
    move-object/from16 v0, p0

    iget v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_b0

    .line 3001
    const-string v13, ""

    .line 3004
    .local v13, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v14, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v14, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3006
    .local v14, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "PrivilegeMessage"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3007
    .local v9, "privilegeMessage":Ljava/lang/String;
    const-string v2, "Serial"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3009
    .local v8, "serial":Ljava/lang/String;
    const-string v2, "ExpireIn"

    invoke-static {v14, v2}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 3017
    .local v6, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v5

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v11

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v11

    iget-object v11, v11, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v2 .. v11}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9d} :catch_9e

    .line 3045
    .end local v6    # "longExpireIn":J
    .end local v8    # "serial":Ljava/lang/String;
    .end local v9    # "privilegeMessage":Ljava/lang/String;
    .end local v13    # "error_message":Ljava/lang/String;
    .end local v14    # "jsonRoot":Lorg/json/JSONObject;
    :goto_9d
    return-void

    .line 3020
    .restart local v13    # "error_message":Ljava/lang/String;
    :catch_9e
    move-exception v12

    .line 3021
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 3022
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v13, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 3028
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "error_message":Ljava/lang/String;
    :cond_b0
    const-string v17, ""

    .line 3031
    .local v17, "message":Ljava/lang/String;
    :try_start_b2
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3032
    .local v16, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 3033
    .local v15, "json_error":Lorg/json/JSONObject;
    const-string v2, "message"

    invoke-static {v15, v2}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ca} :catch_ea

    move-result-object v17

    .line 3038
    .end local v15    # "json_error":Lorg/json/JSONObject;
    .end local v16    # "json_result":Lorg/json/JSONObject;
    :goto_cb
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3042
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v17

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v2, v0, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 3034
    :catch_ea
    move-exception v2

    goto :goto_cb
.end method
