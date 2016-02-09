.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    iput p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_code:I

    iput-object p3, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    .line 1567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 1570
    iget v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_code:I

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_6c

    .line 1571
    const-wide/16 v6, 0x0

    .line 1573
    .local v6, "points":J
    :try_start_8
    new-instance v2, Lorg/json/JSONObject;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    const-string v9, "buzzebees"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1575
    .local v1, "jsonBuzzebees":Lorg/json/JSONObject;
    const-string v9, "points"

    invoke-static {v1, v9}, Lic/buzzebeeslib/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_64

    move-result-wide v6

    .line 1579
    .end local v1    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_1b
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_37

    .line 1580
    long-to-int v9, v6

    const-string v10, ""

    iget-object v11, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v11

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$14(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v12}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1582
    :cond_37
    const-string v8, ""

    .line 1584
    .local v8, "strAdsMessage":Ljava/lang/String;
    :try_start_39
    new-instance v2, Lorg/json/JSONObject;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1585
    .restart local v2    # "jsonRoot":Lorg/json/JSONObject;
    const-string v9, "AdsMessage"

    invoke-static {v2, v9}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_45} :catch_68

    move-result-object v8

    .line 1589
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_46
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v9

    iget-object v10, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v10

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$3(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v10

    iget-object v10, v10, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v10}, Lic/buzzebeeslib/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getCampaign(I)V
    invoke-static {v9, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$15(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;I)V

    .line 1609
    .end local v6    # "points":J
    .end local v8    # "strAdsMessage":Ljava/lang/String;
    :goto_63
    return-void

    .line 1576
    .restart local v6    # "points":J
    :catch_64
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v6, 0x0

    goto :goto_1b

    .line 1586
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "strAdsMessage":Ljava/lang/String;
    :catch_68
    move-exception v0

    .line 1587
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, ""

    goto :goto_46

    .line 1591
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "points":J
    .end local v8    # "strAdsMessage":Ljava/lang/String;
    :cond_6c
    const-string v5, ""

    .line 1594
    .local v5, "message":Ljava/lang/String;
    :try_start_6e
    new-instance v4, Lorg/json/JSONObject;

    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v4, "json_result":Lorg/json/JSONObject;
    const-string v9, "error"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1596
    .local v3, "json_error":Lorg/json/JSONObject;
    const-string v9, "message"

    invoke-static {v3, v9}, Lic/buzzebeeslib/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_9f

    move-result-object v5

    .line 1601
    .end local v3    # "json_error":Lorg/json/JSONObject;
    .end local v4    # "json_result":Lorg/json/JSONObject;
    :goto_81
    const-string v9, ""

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_95

    .line 1602
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v9

    sget v10, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual {v9, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1605
    :cond_95
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v9

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->showToast(Ljava/lang/String;)V
    invoke-static {v9, v5}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$8(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;Ljava/lang/String;)V

    goto :goto_63

    .line 1597
    :catch_9f
    move-exception v0

    .line 1598
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v9, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v9}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$PostSubmitListener;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v9

    sget v10, Lic/buzzebeeslib/R$string;->survey_submit_fail:I

    invoke-virtual {v9, v10}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_81
.end method
