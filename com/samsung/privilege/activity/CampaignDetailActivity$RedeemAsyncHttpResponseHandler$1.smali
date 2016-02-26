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

    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 35

    .prologue
    .line 2195
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3f8

    .line 2196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_21d

    .line 2198
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2199
    .local v25, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2200
    .local v10, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2201
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 2202
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 2203
    const-string v2, "ExpireIn"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 2205
    .local v9, "longExpireIn":Ljava/lang/Long;
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

    .line 2206
    if-eqz v12, :cond_70

    const-string v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 2209
    :cond_70
    const-string v30, ""

    .line 2210
    .local v30, "privilegeMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<p align=\'center\' style=\'color:#0774b5\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f090172

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f090173

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f090174

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f090175

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2217
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

    move-result-object v18

    .line 2218
    .local v18, "dateVoucherExpire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "</p>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2221
    move-object/from16 v12, v30

    .line 2225
    .end local v18    # "dateVoucherExpire":Ljava/lang/String;
    .end local v30    # "privilegeMessage":Ljava/lang/String;
    :cond_162
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2226
    .local v31, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v31, :cond_2c2

    const-string v2, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c2

    .line 2227
    new-instance v19, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2228
    .local v19, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    .line 2230
    .local v20, "device_id":Ljava/lang/String;
    const-string v31, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 2231
    const-string v2, "<imei>"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2232
    const-string v2, "<serial>"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2233
    const-string v2, "<price>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 2235
    move-object/from16 v32, v31

    .line 2244
    .local v32, "strNFCWriteBackEncrypt":Ljava/lang/String;
    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2245
    .local v24, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2246
    const-string v2, "Serial"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2247
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2248
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2249
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
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

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2270
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v20    # "device_id":Ljava/lang/String;
    .end local v24    # "intent":Landroid/content/Intent;
    .end local v25    # "jsonRoot":Lorg/json/JSONObject;
    .end local v31    # "strNFCWriteBack":Ljava/lang/String;
    .end local v32    # "strNFCWriteBackEncrypt":Ljava/lang/String;
    :cond_21d
    :goto_21d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_2c1

    .line 2271
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
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_23a} :catch_340

    move-result v2

    if-nez v2, :cond_2c1

    .line 2273
    :try_start_23d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_24a} :catch_38c
    .catch Lorg/json/JSONException; {:try_start_23d .. :try_end_24a} :catch_340

    move-result-object v33

    .line 2276
    .local v33, "url":Ljava/lang/String;
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

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 2277
    new-instance v19, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 2278
    .restart local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_281
    .catch Ljava/lang/Exception; {:try_start_24b .. :try_end_281} :catch_497
    .catch Lorg/json/JSONException; {:try_start_24b .. :try_end_281} :catch_340

    move-result-object v33

    .line 2283
    .end local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_282
    :try_start_282
    const-string v2, "https://"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a7

    const-string v2, "http://"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a7

    .line 2284
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 2286
    :cond_2a7
    new-instance v29, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2287
    .local v29, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2c1} :catch_38c
    .catch Lorg/json/JSONException; {:try_start_282 .. :try_end_2c1} :catch_340

    .line 2340
    .end local v29    # "openUrlIntent":Landroid/content/Intent;
    .end local v33    # "url":Ljava/lang/String;
    :cond_2c1
    :goto_2c1
    return-void

    .line 2265
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":Ljava/lang/Long;
    .restart local v10    # "serial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v25    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v31    # "strNFCWriteBack":Ljava/lang/String;
    :cond_2c2
    :try_start_2c2
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2266
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

    iget-object v11, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v14

    iget-object v14, v14, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_33e
    .catch Lorg/json/JSONException; {:try_start_2c2 .. :try_end_33e} :catch_340

    goto/16 :goto_21d

    .line 2332
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v25    # "jsonRoot":Lorg/json/JSONObject;
    .end local v31    # "strNFCWriteBack":Ljava/lang/String;
    :catch_340
    move-exception v21

    .line 2333
    .local v21, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2334
    .local v28, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_37d

    .line 2335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 2337
    :cond_37d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2288
    .end local v21    # "e":Lorg/json/JSONException;
    .end local v28    # "message":Ljava/lang/String;
    :catch_38c
    move-exception v21

    .line 2289
    .local v21, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 2291
    .local v17, "blnIsAdmin":Z
    :try_start_38f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_38f .. :try_end_39e} :catch_3c5
    .catch Lorg/json/JSONException; {:try_start_38f .. :try_end_39e} :catch_340

    move-result v2

    if-eqz v2, :cond_3a3

    .line 2292
    const/16 v17, 0x1

    .line 2297
    :cond_3a3
    :goto_3a3
    if-eqz v17, :cond_3e9

    .line 2298
    :try_start_3a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t go to website:\r\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2294
    :catch_3c5
    move-exception v22

    .line 2295
    .local v22, "e2":Ljava/lang/Exception;
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

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a3

    .line 2300
    .end local v22    # "e2":Ljava/lang/Exception;
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V
    :try_end_3f6
    .catch Lorg/json/JSONException; {:try_start_3a5 .. :try_end_3f6} :catch_340

    goto/16 :goto_2c1

    .line 2314
    .end local v17    # "blnIsAdmin":Z
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_3f8
    :try_start_3f8
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2315
    .local v27, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 2316
    .local v26, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2317
    .local v23, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 2318
    .restart local v28    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_488

    .line 2319
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

    if-eqz v2, :cond_479

    .line 2320
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

    const v6, 0x7f09033a

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_458
    .catch Ljava/lang/Exception; {:try_start_3f8 .. :try_end_458} :catch_45a
    .catch Lorg/json/JSONException; {:try_start_3f8 .. :try_end_458} :catch_340

    goto/16 :goto_2c1

    .line 2327
    .end local v23    # "id":Ljava/lang/String;
    .end local v26    # "json_error":Lorg/json/JSONObject;
    .end local v27    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    :catch_45a
    move-exception v21

    .line 2328
    .restart local v21    # "e":Ljava/lang/Exception;
    :try_start_45b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2329
    .restart local v28    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_477
    .catch Lorg/json/JSONException; {:try_start_45b .. :try_end_477} :catch_340

    goto/16 :goto_2c1

    .line 2322
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v23    # "id":Ljava/lang/String;
    .restart local v26    # "json_error":Lorg/json/JSONObject;
    .restart local v27    # "json_result":Lorg/json/JSONObject;
    :cond_479
    :try_start_479
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2c1

    .line 2325
    :cond_488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_479 .. :try_end_495} :catch_45a
    .catch Lorg/json/JSONException; {:try_start_479 .. :try_end_495} :catch_340

    goto/16 :goto_2c1

    .line 2279
    .end local v23    # "id":Ljava/lang/String;
    .end local v26    # "json_error":Lorg/json/JSONObject;
    .end local v27    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    .restart local v33    # "url":Ljava/lang/String;
    :catch_497
    move-exception v2

    goto/16 :goto_282
.end method
