.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    .line 1755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 36

    .prologue
    .line 1758
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_text:Ljava/lang/String;

    const-string v3, "<"

    const-string v6, "&lt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v6, "&gt;"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1760
    .local v31, "response_text_final":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2f0

    .line 1761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_121

    .line 1763
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v24, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1765
    .local v10, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1766
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1767
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1768
    const-string v2, "ExpireIn"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v28

    .line 1770
    .local v28, "longExpireIn":J
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1771
    .local v32, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v32, :cond_1c6

    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c6

    .line 1772
    new-instance v18, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1773
    .local v18, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    .line 1775
    .local v19, "device_id":Ljava/lang/String;
    const-string v32, "IMEI=<imei>;SERIAL=<serial>;PRICE=<price>;"

    .line 1776
    const-string v2, "<imei>"

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1777
    const-string v2, "<serial>"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1778
    const-string v2, "<price>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/privilege/bean/CampaignView;->PricePerUnit:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 1780
    move-object/from16 v33, v32

    .line 1789
    .local v33, "strNFCWriteBackEncrypt":Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1790
    .local v23, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1791
    const-string v2, "Serial"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1792
    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v12, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&gt;"

    const-string v6, ">"

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1793
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1794
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$4(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1814
    .end local v4    # "currentDate":J
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v18    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v19    # "device_id":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    .end local v28    # "longExpireIn":J
    .end local v32    # "strNFCWriteBack":Ljava/lang/String;
    .end local v33    # "strNFCWriteBackEncrypt":Ljava/lang/String;
    :cond_121
    :goto_121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 1815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_13e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13e} :catch_238

    move-result v2

    if-nez v2, :cond_1c5

    .line 1817
    :try_start_141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_14e} :catch_284
    .catch Lorg/json/JSONException; {:try_start_141 .. :try_end_14e} :catch_238

    move-result-object v34

    .line 1820
    .local v34, "url":Ljava/lang/String;
    :try_start_14f
    const-string v2, "<uid>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1821
    new-instance v18, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1822
    .restart local v18    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_185
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_185} :catch_38d
    .catch Lorg/json/JSONException; {:try_start_14f .. :try_end_185} :catch_238

    move-result-object v34

    .line 1827
    .end local v18    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_186
    :try_start_186
    const-string v2, "https://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ab

    const-string v2, "http://"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1ab

    .line 1828
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 1830
    :cond_1ab
    new-instance v30, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1831
    .local v30, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1c5} :catch_284
    .catch Lorg/json/JSONException; {:try_start_186 .. :try_end_1c5} :catch_238

    .line 1884
    .end local v30    # "openUrlIntent":Landroid/content/Intent;
    .end local v31    # "response_text_final":Ljava/lang/String;
    .end local v34    # "url":Ljava/lang/String;
    :cond_1c5
    :goto_1c5
    return-void

    .line 1810
    .restart local v4    # "currentDate":J
    .restart local v10    # "serial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v24    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v28    # "longExpireIn":J
    .restart local v31    # "response_text_final":Ljava/lang/String;
    .restart local v32    # "strNFCWriteBack":Ljava/lang/String;
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v14

    iget-object v14, v14, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_236
    .catch Lorg/json/JSONException; {:try_start_1c6 .. :try_end_236} :catch_238

    goto/16 :goto_121

    .line 1876
    .end local v4    # "currentDate":J
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    .end local v28    # "longExpireIn":J
    .end local v31    # "response_text_final":Ljava/lang/String;
    .end local v32    # "strNFCWriteBack":Ljava/lang/String;
    :catch_238
    move-exception v20

    .line 1877
    .local v20, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1878
    .local v27, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_275

    .line 1879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1881
    :cond_275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1832
    .end local v20    # "e":Lorg/json/JSONException;
    .end local v27    # "message":Ljava/lang/String;
    .restart local v31    # "response_text_final":Ljava/lang/String;
    :catch_284
    move-exception v20

    .line 1833
    .local v20, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 1835
    .local v17, "blnIsAdmin":Z
    :try_start_287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_296} :catch_2bd
    .catch Lorg/json/JSONException; {:try_start_287 .. :try_end_296} :catch_238

    move-result v2

    if-eqz v2, :cond_29b

    .line 1836
    const/16 v17, 0x1

    .line 1841
    :cond_29b
    :goto_29b
    if-eqz v17, :cond_2e1

    .line 1842
    :try_start_29d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t go to website:\r\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1838
    :catch_2bd
    move-exception v21

    .line 1839
    .local v21, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$7(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29b

    .line 1844
    .end local v21    # "e2":Ljava/lang/Exception;
    :cond_2e1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V
    :try_end_2ee
    .catch Lorg/json/JSONException; {:try_start_29d .. :try_end_2ee} :catch_238

    goto/16 :goto_1c5

    .line 1858
    .end local v17    # "blnIsAdmin":Z
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_2f0
    :try_start_2f0
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v26, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 1860
    .local v25, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1861
    .local v22, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1862
    .restart local v27    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37e

    .line 1863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36f

    .line 1864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    const v6, 0x7f09033a

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_34e} :catch_350
    .catch Lorg/json/JSONException; {:try_start_2f0 .. :try_end_34e} :catch_238

    goto/16 :goto_1c5

    .line 1871
    .end local v22    # "id":Ljava/lang/String;
    .end local v25    # "json_error":Lorg/json/JSONObject;
    .end local v26    # "json_result":Lorg/json/JSONObject;
    .end local v27    # "message":Ljava/lang/String;
    :catch_350
    move-exception v20

    .line 1872
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1873
    .restart local v27    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_36d
    .catch Lorg/json/JSONException; {:try_start_351 .. :try_end_36d} :catch_238

    goto/16 :goto_1c5

    .line 1866
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v22    # "id":Ljava/lang/String;
    .restart local v25    # "json_error":Lorg/json/JSONObject;
    .restart local v26    # "json_result":Lorg/json/JSONObject;
    :cond_36f
    :try_start_36f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1c5

    .line 1869
    :cond_37e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemAsyncHttpResponseHandler;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_38b} :catch_350
    .catch Lorg/json/JSONException; {:try_start_36f .. :try_end_38b} :catch_238

    goto/16 :goto_1c5

    .line 1823
    .end local v22    # "id":Ljava/lang/String;
    .end local v25    # "json_error":Lorg/json/JSONObject;
    .end local v26    # "json_result":Lorg/json/JSONObject;
    .end local v27    # "message":Ljava/lang/String;
    .restart local v34    # "url":Ljava/lang/String;
    :catch_38d
    move-exception v2

    goto/16 :goto_186
.end method
