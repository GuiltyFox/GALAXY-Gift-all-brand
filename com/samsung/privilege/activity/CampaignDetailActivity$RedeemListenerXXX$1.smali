.class Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_text_final:Ljava/lang/String;

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 1163
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_284

    .line 1165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 1167
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v23, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1169
    .local v10, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1170
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 1171
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 1172
    const-string v2, "ExpireIn"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLongNullable(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 1174
    .local v9, "longExpireIn":Ljava/lang/Long;
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1178
    .local v28, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v28, :cond_15e

    const-string v2, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 1179
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1180
    .local v22, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1181
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    const-string v2, "NFCWriteBackLayout"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->RC_BEAM:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$4(Lcom/samsung/privilege/activity/CampaignDetailActivity;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1202
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    .end local v28    # "strNFCWriteBack":Ljava/lang/String;
    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$2(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d6} :catch_1cc

    move-result v2

    if-nez v2, :cond_15d

    .line 1205
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e6} :catch_218
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e6} :catch_1cc

    move-result-object v29

    .line 1208
    .local v29, "url":Ljava/lang/String;
    :try_start_e7
    const-string v2, "<uid>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1209
    new-instance v18, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1210
    .local v18, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11d} :catch_371
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_11d} :catch_1cc

    move-result-object v29

    .line 1215
    .end local v18    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_11e
    :try_start_11e
    const-string v2, "https://"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    const-string v2, "http://"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 1216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1218
    :cond_143
    new-instance v27, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1219
    .local v27, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_15d} :catch_218
    .catch Lorg/json/JSONException; {:try_start_11e .. :try_end_15d} :catch_1cc

    .line 1270
    .end local v27    # "openUrlIntent":Landroid/content/Intent;
    .end local v29    # "url":Ljava/lang/String;
    :cond_15d
    :goto_15d
    return-void

    .line 1198
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":Ljava/lang/Long;
    .restart local v10    # "serial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v23    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v28    # "strNFCWriteBack":Ljava/lang/String;
    :cond_15e
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v8}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$1(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v14

    iget-object v14, v14, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1ca
    .catch Lorg/json/JSONException; {:try_start_15e .. :try_end_1ca} :catch_1cc

    goto/16 :goto_b9

    .line 1262
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":Ljava/lang/Long;
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    .end local v28    # "strNFCWriteBack":Ljava/lang/String;
    :catch_1cc
    move-exception v19

    .line 1263
    .local v19, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1264
    .local v26, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_209

    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1267
    :cond_209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1220
    .end local v19    # "e":Lorg/json/JSONException;
    .end local v26    # "message":Ljava/lang/String;
    :catch_218
    move-exception v19

    .line 1221
    .local v19, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 1223
    .local v17, "blnIsAdmin":Z
    :try_start_21b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_22a} :catch_251
    .catch Lorg/json/JSONException; {:try_start_21b .. :try_end_22a} :catch_1cc

    move-result v2

    if-eqz v2, :cond_22f

    .line 1224
    const/16 v17, 0x1

    .line 1229
    :cond_22f
    :goto_22f
    if-eqz v17, :cond_275

    .line 1230
    :try_start_231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Can\'t go to website:\r\n"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1226
    :catch_251
    move-exception v20

    .line 1227
    .local v20, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$7(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22f

    .line 1232
    .end local v20    # "e2":Ljava/lang/Exception;
    :cond_275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1238
    .end local v17    # "blnIsAdmin":Z
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_284
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_code:I

    if-gez v2, :cond_2d2

    .line 1239
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1240
    .restart local v26    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f090349

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d0
    .catch Lorg/json/JSONException; {:try_start_231 .. :try_end_2d0} :catch_1cc

    goto/16 :goto_15d

    .line 1244
    .end local v26    # "message":Ljava/lang/String;
    :cond_2d2
    :try_start_2d2
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v25, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1246
    .local v24, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1247
    .local v21, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1248
    .restart local v26    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_353

    .line 1250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v3

    const v6, 0x7f09033a

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_332
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_332} :catch_334
    .catch Lorg/json/JSONException; {:try_start_2d2 .. :try_end_332} :catch_1cc

    goto/16 :goto_15d

    .line 1257
    .end local v21    # "id":Ljava/lang/String;
    .end local v24    # "json_error":Lorg/json/JSONObject;
    .end local v25    # "json_result":Lorg/json/JSONObject;
    .end local v26    # "message":Ljava/lang/String;
    :catch_334
    move-exception v19

    .line 1258
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1259
    .restart local v26    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_351
    .catch Lorg/json/JSONException; {:try_start_335 .. :try_end_351} :catch_1cc

    goto/16 :goto_15d

    .line 1252
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v21    # "id":Ljava/lang/String;
    .restart local v24    # "json_error":Lorg/json/JSONObject;
    .restart local v25    # "json_result":Lorg/json/JSONObject;
    :cond_353
    :try_start_353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1255
    :cond_362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;->access$3(Lcom/samsung/privilege/activity/CampaignDetailActivity$RedeemListenerXXX;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_36f
    .catch Ljava/lang/Exception; {:try_start_353 .. :try_end_36f} :catch_334
    .catch Lorg/json/JSONException; {:try_start_353 .. :try_end_36f} :catch_1cc

    goto/16 :goto_15d

    .line 1211
    .end local v21    # "id":Ljava/lang/String;
    .end local v24    # "json_error":Lorg/json/JSONObject;
    .end local v25    # "json_result":Lorg/json/JSONObject;
    .end local v26    # "message":Ljava/lang/String;
    .restart local v29    # "url":Ljava/lang/String;
    :catch_371
    move-exception v2

    goto/16 :goto_11e
.end method
