.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text_final:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_text_final:Ljava/lang/String;

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 979
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_286

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 983
    new-instance v24, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 984
    .local v24, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 985
    .local v11, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 986
    .local v13, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 987
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 988
    const-string v2, "ExpireIn"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v9

    .line 990
    .local v9, "longExpireIn":J
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 994
    .local v29, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v29, :cond_15e

    const-string v2, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 995
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 996
    .local v23, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 997
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 998
    const-string v2, "NFCWriteBackLayout"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->RC_BEAM:I
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$4(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1018
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v23    # "intent":Landroid/content/Intent;
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    .end local v29    # "strNFCWriteBack":Ljava/lang/String;
    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d6} :catch_1ce

    move-result v2

    if-nez v2, :cond_15d

    .line 1021
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e6} :catch_21a
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e6} :catch_1ce

    move-result-object v30

    .line 1024
    .local v30, "url":Ljava/lang/String;
    :try_start_e7
    const-string v2, "<uid>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/privilege/UserLogin;->GetFacebookUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1025
    new-instance v19, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1026
    .local v19, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11d} :catch_373
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_11d} :catch_1ce

    move-result-object v30

    .line 1031
    .end local v19    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_11e
    :try_start_11e
    const-string v2, "https://"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    const-string v2, "http://"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 1032
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 1034
    :cond_143
    new-instance v28, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1035
    .local v28, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_15d} :catch_21a
    .catch Lorg/json/JSONException; {:try_start_11e .. :try_end_15d} :catch_1ce

    .line 1086
    .end local v28    # "openUrlIntent":Landroid/content/Intent;
    .end local v30    # "url":Ljava/lang/String;
    :cond_15d
    :goto_15d
    return-void

    .line 1014
    .restart local v4    # "currentDate":J
    .restart local v9    # "longExpireIn":J
    .restart local v11    # "serial":Ljava/lang/String;
    .restart local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v24    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v29    # "strNFCWriteBack":Ljava/lang/String;
    :cond_15e
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/privilege/bean/CampaignView;->ID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v7}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/privilege/bean/CampaignView;->AgencyName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v8}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/privilege/bean/CampaignView;->Name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v12}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v12

    iget-object v12, v12, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v14

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v15

    iget-object v15, v15, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v17

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v17

    invoke-static/range {v2 .. v17}, Lcom/samsung/privilege/util/DialogUtil;->showDialogSerial3TypeCode(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1cc
    .catch Lorg/json/JSONException; {:try_start_15e .. :try_end_1cc} :catch_1ce

    goto/16 :goto_b9

    .line 1078
    .end local v4    # "currentDate":J
    .end local v9    # "longExpireIn":J
    .end local v11    # "serial":Ljava/lang/String;
    .end local v13    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v24    # "jsonRoot":Lorg/json/JSONObject;
    .end local v29    # "strNFCWriteBack":Ljava/lang/String;
    :catch_1ce
    move-exception v20

    .line 1079
    .local v20, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1080
    .local v27, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 1081
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

    .line 1083
    :cond_20b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1036
    .end local v20    # "e":Lorg/json/JSONException;
    .end local v27    # "message":Ljava/lang/String;
    :catch_21a
    move-exception v20

    .line 1037
    .local v20, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    .line 1039
    .local v18, "blnIsAdmin":Z
    :try_start_21d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_22c} :catch_253
    .catch Lorg/json/JSONException; {:try_start_21d .. :try_end_22c} :catch_1ce

    move-result v2

    if-eqz v2, :cond_231

    .line 1040
    const/16 v18, 0x1

    .line 1045
    :cond_231
    :goto_231
    if-eqz v18, :cond_277

    .line 1046
    :try_start_233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

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

    goto/16 :goto_15d

    .line 1042
    :catch_253
    move-exception v21

    .line 1043
    .local v21, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

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

    goto :goto_231

    .line 1048
    .end local v21    # "e2":Ljava/lang/Exception;
    :cond_277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1054
    .end local v18    # "blnIsAdmin":Z
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_286
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    if-gez v2, :cond_2d4

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1056
    .restart local v27    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    const v6, 0x7f0a0342

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d2
    .catch Lorg/json/JSONException; {:try_start_233 .. :try_end_2d2} :catch_1ce

    goto/16 :goto_15d

    .line 1060
    .end local v27    # "message":Ljava/lang/String;
    :cond_2d4
    :try_start_2d4
    new-instance v26, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1061
    .local v26, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 1062
    .local v25, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1063
    .local v22, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1064
    .restart local v27    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_364

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_355

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    const v6, 0x7f0a0333

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_334
    .catch Ljava/lang/Exception; {:try_start_2d4 .. :try_end_334} :catch_336
    .catch Lorg/json/JSONException; {:try_start_2d4 .. :try_end_334} :catch_1ce

    goto/16 :goto_15d

    .line 1073
    .end local v22    # "id":Ljava/lang/String;
    .end local v25    # "json_error":Lorg/json/JSONObject;
    .end local v26    # "json_result":Lorg/json/JSONObject;
    .end local v27    # "message":Ljava/lang/String;
    :catch_336
    move-exception v20

    .line 1074
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 1075
    .restart local v27    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_353
    .catch Lorg/json/JSONException; {:try_start_337 .. :try_end_353} :catch_1ce

    goto/16 :goto_15d

    .line 1068
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v22    # "id":Ljava/lang/String;
    .restart local v25    # "json_error":Lorg/json/JSONObject;
    .restart local v26    # "json_result":Lorg/json/JSONObject;
    :cond_355
    :try_start_355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1071
    :cond_364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_371} :catch_336
    .catch Lorg/json/JSONException; {:try_start_355 .. :try_end_371} :catch_1ce

    goto/16 :goto_15d

    .line 1027
    .end local v22    # "id":Ljava/lang/String;
    .end local v25    # "json_error":Lorg/json/JSONObject;
    .end local v26    # "json_result":Lorg/json/JSONObject;
    .end local v27    # "message":Ljava/lang/String;
    .restart local v30    # "url":Ljava/lang/String;
    :catch_373
    move-exception v2

    goto/16 :goto_11e
.end method
