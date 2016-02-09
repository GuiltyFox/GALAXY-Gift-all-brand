.class Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text_final:Ljava/lang/String;

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 2020
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3fa

    .line 2021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_21d

    .line 2023
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v26, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2025
    .local v11, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2026
    .local v13, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 2027
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 2028
    const-string v2, "ExpireIn"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v9

    .line 2030
    .local v9, "longExpireIn":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 2031
    if-eqz v13, :cond_70

    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 2034
    :cond_70
    const-string v31, ""

    .line 2035
    .local v31, "privilegeMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f0a0172

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f0a0173

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2039
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f0a0174

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f0a0175

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2042
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd MMM yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-wide v6, v6, Lcom/samsung/privilege/bean/CampaignView;->VoucherExpireDate:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v6, v14

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    .line 2043
    .local v19, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 2046
    move-object/from16 v13, v31

    .line 2050
    .end local v19    # "dateVoucherExpire":Ljava/lang/String;
    .end local v31    # "privilegeMessage":Ljava/lang/String;
    :cond_162
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2051
    .local v32, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v32, :cond_2c2

    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c2

    .line 2052
    new-instance v20, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2053
    .local v20, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v21

    .line 2055
    .local v21, "device_id":Ljava/lang/String;
    const-string v32, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 2056
    const-string v2, "<imei>"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2057
    const-string v2, "<serial>"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2058
    const-string v2, "<price>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 2060
    move-object/from16 v33, v32

    .line 2069
    .local v33, "strNFCWriteBackEncrypt":Ljava/lang/String;
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2070
    .local v25, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2071
    const-string v2, "Serial"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2072
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2073
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2074
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$4(Lcom/samsung/privilege/activity/CampaignDetailActivity;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2095
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v20    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v21    # "device_id":Ljava/lang/String;
    .end local v25    # "intent":Landroid/content/Intent;
    .end local v26    # "jsonRoot":Lorg/json/JSONObject;
    .end local v32    # "strNFCWriteBack":Ljava/lang/String;
    .end local v33    # "strNFCWriteBackEncrypt":Ljava/lang/String;
    :cond_21d
    :goto_21d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_23a} :catch_342

    move-result v2

    if-nez v2, :cond_2c1

    .line 2098
    :try_start_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_24a} :catch_38e
    .catch Lorg/json/JSONException; {:try_start_23d .. :try_end_24a} :catch_342

    move-result-object v34

    .line 2101
    .local v34, "url":Ljava/lang/String;
    :try_start_24b
    const-string v2, "<uid>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 2102
    new-instance v20, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2103
    .restart local v20    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_281} :catch_499
    .catch Lorg/json/JSONException; {:try_start_24b .. :try_end_281} :catch_342

    move-result-object v34

    .line 2108
    .end local v20    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_282
    :try_start_282
    const-string v2, "https://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a7

    const-string v2, "http://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a7

    .line 2109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2111
    :cond_2a7
    new-instance v30, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2112
    .local v30, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2c1} :catch_38e
    .catch Lorg/json/JSONException; {:try_start_282 .. :try_end_2c1} :catch_342

    .line 2165
    .end local v30    # "openUrlIntent":Landroid/content/Intent;
    .end local v34    # "url":Ljava/lang/String;
    :cond_2c1
    :goto_2c1
    return-void

    .line 2090
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v26    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v32    # "strNFCWriteBack":Ljava/lang/String;
    :cond_2c2
    :try_start_2c2
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v13, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v12

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v15

    iget-object v15, v15, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v17

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v17

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_340
    .catch Lorg/json/JSONException; {:try_start_2c2 .. :try_end_340} :catch_342

    goto/16 :goto_21d

    .line 2157
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v26    # "jsonRoot":Lorg/json/JSONObject;
    .end local v32    # "strNFCWriteBack":Ljava/lang/String;
    :catch_342
    move-exception v22

    .line 2158
    .local v22, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2159
    .local v29, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37f

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 2162
    :cond_37f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2113
    .end local v22    # "e":Lorg/json/JSONException;
    .end local v29    # "message":Ljava/lang/String;
    :catch_38e
    move-exception v22

    .line 2114
    .local v22, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    .line 2116
    .local v18, "blnIsAdmin":Z
    :try_start_391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_3a0
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3a0} :catch_3c7
    .catch Lorg/json/JSONException; {:try_start_391 .. :try_end_3a0} :catch_342

    move-result v2

    if-eqz v2, :cond_3a5

    .line 2117
    const/16 v18, 0x1

    .line 2122
    :cond_3a5
    :goto_3a5
    if-eqz v18, :cond_3eb

    .line 2123
    :try_start_3a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t go to website:\r\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2119
    :catch_3c7
    move-exception v23

    .line 2120
    .local v23, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$7(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a5

    .line 2125
    .end local v23    # "e2":Ljava/lang/Exception;
    :cond_3eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    :try_end_3f8
    .catch Lorg/json/JSONException; {:try_start_3a7 .. :try_end_3f8} :catch_342

    goto/16 :goto_2c1

    .line 2139
    .end local v18    # "blnIsAdmin":Z
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_3fa
    :try_start_3fa
    new-instance v28, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2140
    .local v28, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 2141
    .local v27, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 2142
    .local v24, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2143
    .restart local v29    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48a

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47b

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f0a0333

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_45a
    .catch Ljava/lang/Exception; {:try_start_3fa .. :try_end_45a} :catch_45c
    .catch Lorg/json/JSONException; {:try_start_3fa .. :try_end_45a} :catch_342

    goto/16 :goto_2c1

    .line 2152
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "json_error":Lorg/json/JSONObject;
    .end local v28    # "json_result":Lorg/json/JSONObject;
    .end local v29    # "message":Ljava/lang/String;
    :catch_45c
    move-exception v22

    .line 2153
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_45d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2154
    .restart local v29    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_479
    .catch Lorg/json/JSONException; {:try_start_45d .. :try_end_479} :catch_342

    goto/16 :goto_2c1

    .line 2147
    .end local v22    # "e":Ljava/lang/Exception;
    .restart local v24    # "id":Ljava/lang/String;
    .restart local v27    # "json_error":Lorg/json/JSONObject;
    .restart local v28    # "json_result":Lorg/json/JSONObject;
    :cond_47b
    :try_start_47b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2150
    :cond_48a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_497
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_497} :catch_45c
    .catch Lorg/json/JSONException; {:try_start_47b .. :try_end_497} :catch_342

    goto/16 :goto_2c1

    .line 2104
    .end local v24    # "id":Ljava/lang/String;
    .end local v27    # "json_error":Lorg/json/JSONObject;
    .end local v28    # "json_result":Lorg/json/JSONObject;
    .end local v29    # "message":Ljava/lang/String;
    .restart local v34    # "url":Ljava/lang/String;
    :catch_499
    move-exception v2

    goto/16 :goto_282
.end method
