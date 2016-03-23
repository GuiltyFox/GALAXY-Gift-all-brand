.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->processJsonRedeem(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$isGotoWebsite:Z

.field final synthetic val$isShowSerial:Z

.field final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;ZZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$response_text:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$isShowSerial:Z

    iput-boolean p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$isGotoWebsite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 2495
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$response_text:Ljava/lang/String;

    const-string/jumbo v3, "<"

    const-string/jumbo v4, "&lt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ">"

    const-string/jumbo v4, "&gt;"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2497
    .local v21, "response_text_final":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$isShowSerial:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e1

    .line 2499
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2500
    .local v18, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v2, "Serial"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2501
    .local v7, "serial":Ljava/lang/String;
    const-string/jumbo v2, "PrivilegeMessage"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2502
    .local v8, "strPrivilegeMessage":Ljava/lang/String;
    const-string/jumbo v2, "CurrentDate"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 2503
    .local v12, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->PointPerUnit:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_6b

    .line 2504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Points"

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/bzbs/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bzbs/data/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 2506
    :cond_6b
    const-string/jumbo v2, "ExpireIn"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 2508
    .local v6, "longExpireIn":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Type:Ljava/lang/String;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2509
    if-eqz v8, :cond_1b6

    const-string/jumbo v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b6

    .line 2528
    :cond_92
    :goto_92
    const-string/jumbo v2, "NFCWriteBack"

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/bzbs/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2529
    .local v22, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v22, :cond_2af

    const-string/jumbo v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2af

    .line 2530
    new-instance v14, Lcom/bzbs/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2531
    .local v14, "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    invoke-virtual {v14}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    .line 2533
    .local v15, "device_id":Ljava/lang/String;
    const-string/jumbo v22, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 2534
    const-string/jumbo v2, "<imei>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2535
    const-string/jumbo v2, "<serial>"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2536
    const-string/jumbo v2, "<price>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2554
    .end local v6    # "longExpireIn":Ljava/lang/Long;
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v12    # "currentDate":J
    .end local v14    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    .end local v15    # "device_id":Ljava/lang/String;
    .end local v18    # "jsonRoot":Lorg/json/JSONObject;
    .end local v22    # "strNFCWriteBack":Ljava/lang/String;
    :cond_e1
    :goto_e1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->val$isGotoWebsite:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17b

    .line 2555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_2e5

    move-result v2

    if-nez v2, :cond_17b

    .line 2557
    :try_start_ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/bzbs/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_10c} :catch_2f2

    move-result-object v23

    .line 2560
    .local v23, "url":Ljava/lang/String;
    :try_start_10d
    new-instance v14, Lcom/bzbs/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2561
    .restart local v14    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    const-string/jumbo v2, "<deviceId>"

    invoke-virtual {v14}, Lcom/bzbs/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2562
    const-string/jumbo v2, "<uid>"

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_137} :catch_358

    move-result-object v23

    .line 2567
    .end local v14    # "deviceHelper":Lcom/bzbs/util/DeviceHelper;
    :goto_138
    :try_start_138
    const-string/jumbo v2, "https://"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_164

    const-string/jumbo v2, "http://"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_164

    .line 2568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2570
    :cond_164
    new-instance v19, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2571
    .local v19, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_17b} :catch_2f2

    .line 2590
    .end local v19    # "openUrlIntent":Landroid/content/Intent;
    .end local v23    # "url":Ljava/lang/String;
    :cond_17b
    :goto_17b
    :try_start_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getPoints()V
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V

    .line 2591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v3

    iget-object v3, v3, Lcom/bzbs/bean/Campaign;->ID:Ljava/lang/String;

    invoke-static {v3}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V
    invoke-static {v2, v3, v4, v5, v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$700(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;ILcom/bzbs/bean/NFCTag;ZZ)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2202(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2200(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z

    move-result v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2300(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    .line 2599
    .end local v21    # "response_text_final":Ljava/lang/String;
    :goto_1b5
    return-void

    .line 2512
    .restart local v6    # "longExpireIn":Ljava/lang/Long;
    .restart local v7    # "serial":Ljava/lang/String;
    .restart local v8    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v12    # "currentDate":J
    .restart local v18    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v21    # "response_text_final":Ljava/lang/String;
    :cond_1b6
    const-string/jumbo v20, ""

    .line 2513
    .local v20, "privilegeMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v4, 0x7f090150

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v4, 0x7f090151

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v4, 0x7f090152

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const v4, 0x7f090153

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2520
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v4

    iget-wide v4, v4, Lcom/bzbs/bean/Campaign;->VoucherExpireDate:J

    const-wide/16 v24, 0x3e8

    mul-long v4, v4, v24

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 2521
    .local v11, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2524
    move-object/from16 v8, v20

    goto/16 :goto_92

    .line 2548
    .end local v11    # "dateVoucherExpire":Ljava/lang/String;
    .end local v20    # "privilegeMessage":Ljava/lang/String;
    .restart local v22    # "strNFCWriteBack":Ljava/lang/String;
    :cond_2af
    const-string/jumbo v2, "&lt;"

    const-string/jumbo v3, "<"

    invoke-virtual {v8, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&gt;"

    const-string/jumbo v4, ">"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$900(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramNFCTag:Lcom/bzbs/bean/NFCTag;
    invoke-static {v9}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/NFCTag;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/samsung/privilege/util/DialogSerialGift;->showDialogSerial(Landroid/content/Context;Landroid/os/Handler;Lcom/bzbs/bean/Purchasing;Lcom/bzbs/bean/Campaign;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/bean/NFCTag;)V
    :try_end_2e3
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_2e3} :catch_2e5

    goto/16 :goto_e1

    .line 2596
    .end local v6    # "longExpireIn":Ljava/lang/Long;
    .end local v7    # "serial":Ljava/lang/String;
    .end local v8    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v12    # "currentDate":J
    .end local v18    # "jsonRoot":Lorg/json/JSONObject;
    .end local v21    # "response_text_final":Ljava/lang/String;
    .end local v22    # "strNFCWriteBack":Ljava/lang/String;
    :catch_2e5
    move-exception v16

    .line 2597
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v3, "Error While Redeem...\r\n{Invalid data format}..."

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    goto/16 :goto_1b5

    .line 2572
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v21    # "response_text_final":Ljava/lang/String;
    :catch_2f2
    move-exception v16

    .line 2573
    .restart local v16    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 2575
    .local v10, "blnIsAdmin":Z
    :try_start_2f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2f4 .. :try_end_2ff} :catch_327

    move-result v2

    if-eqz v2, :cond_303

    .line 2576
    const/4 v10, 0x1

    .line 2581
    :cond_303
    :goto_303
    const/4 v2, 0x1

    if-ne v10, v2, :cond_34c

    .line 2582
    :try_start_306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t go to website:\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V

    goto/16 :goto_17b

    .line 2578
    :catch_327
    move-exception v17

    .line 2579
    .local v17, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception := "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_303

    .line 2584
    .end local v17    # "e2":Ljava/lang/Exception;
    :cond_34c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$26;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const-string/jumbo v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Ljava/lang/String;)V
    :try_end_356
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_356} :catch_2e5

    goto/16 :goto_17b

    .line 2563
    .end local v10    # "blnIsAdmin":Z
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v23    # "url":Ljava/lang/String;
    :catch_358
    move-exception v2

    goto/16 :goto_138
.end method
