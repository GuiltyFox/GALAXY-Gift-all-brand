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
    .registers 18

    .prologue
    .line 2999
    move-object/from16 v0, p0

    iget v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_b0

    .line 3001
    const-string v12, ""

    .line 3004
    .local v12, "error_message":Ljava/lang/String;
    :try_start_a
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v13, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3006
    .local v13, "jsonRoot":Lorg/json/JSONObject;
    const-string v1, "PrivilegeMessage"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3007
    .local v8, "privilegeMessage":Ljava/lang/String;
    const-string v1, "Serial"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3009
    .local v7, "serial":Ljava/lang/String;
    const-string v1, "ExpireIn"

    invoke-static {v13, v1}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    .line 3017
    .local v5, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v3

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lic/buzzebeeslib/bean/Campaign;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v4

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v4}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v4

    iget-object v4, v4, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v9

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$16(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->Type:Ljava/lang/String;

    invoke-static/range {v1 .. v10}, Lic/buzzebeeslib/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;)V

    .line 3019
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v2

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$2(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v2}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->getCampaign(I)V
    invoke-static {v1, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_9d} :catch_9e

    .line 3045
    .end local v5    # "longExpireIn":J
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "privilegeMessage":Ljava/lang/String;
    .end local v12    # "error_message":Ljava/lang/String;
    .end local v13    # "jsonRoot":Lorg/json/JSONObject;
    :goto_9d
    return-void

    .line 3020
    .restart local v12    # "error_message":Ljava/lang/String;
    :catch_9e
    move-exception v11

    .line 3021
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 3022
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v12, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 3028
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "error_message":Ljava/lang/String;
    :cond_b0
    const-string v16, ""

    .line 3031
    .local v16, "message":Ljava/lang/String;
    :try_start_b2
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3032
    .local v15, "json_result":Lorg/json/JSONObject;
    const-string v1, "error"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 3033
    .local v14, "json_error":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-static {v14, v1}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c6} :catch_e6

    move-result-object v16

    .line 3038
    .end local v14    # "json_error":Lorg/json/JSONObject;
    .end local v15    # "json_result":Lorg/json/JSONObject;
    :goto_c7
    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 3039
    move-object/from16 v0, p0

    iget-object v0, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3042
    :cond_d7
    move-object/from16 v0, p0

    iget-object v1, v0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$PostUsedListener;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, v16

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->showDialogError(Ljava/lang/String;Z)V
    invoke-static {v1, v0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$13(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;Z)V

    goto :goto_9d

    .line 3034
    :catch_e6
    move-exception v1

    goto :goto_c7
.end method
