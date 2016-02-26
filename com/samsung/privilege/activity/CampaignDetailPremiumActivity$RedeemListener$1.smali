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

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 33

    .prologue
    .line 980
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_288

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsShowSerial:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$0(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 984
    new-instance v23, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 985
    .local v23, "jsonRoot":Lorg/json/JSONObject;
    const-string v2, "Serial"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 986
    .local v10, "serial":Ljava/lang/String;
    const-string v2, "PrivilegeMessage"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 987
    .local v12, "strPrivilegeMessage":Ljava/lang/String;
    const-string v2, "CurrentDate"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    .line 988
    .local v4, "currentDate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Points"

    move-object/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/privilege/UserLogin;->SetPoints(Landroid/content/Context;J)Z

    .line 989
    const-string v2, "ExpireIn"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v26

    .line 991
    .local v26, "longExpireIn":J
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 995
    .local v30, "strNFCWriteBack":Ljava/lang/String;
    if-eqz v30, :cond_15e

    const-string v2, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15e

    .line 996
    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/BeamCampaign;

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 997
    .local v22, "intent":Landroid/content/Intent;
    const-string v2, "paramNFCTag"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 998
    const-string v2, "NFCWriteBack"

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    const-string v2, "NFCWriteBackLayout"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
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

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1019
    .end local v4    # "currentDate":J
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    .end local v26    # "longExpireIn":J
    .end local v30    # "strNFCWriteBack":Ljava/lang/String;
    :cond_b9
    :goto_b9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gIsGotoWebsite:Z
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$2(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 1020
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
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d6} :catch_1d0

    move-result v2

    if-nez v2, :cond_15d

    .line 1022
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/privilege/bean/CampaignView;->Website:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/privilege/util/BBUtil;->CtypeString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e6} :catch_21c
    .catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_e6} :catch_1d0

    move-result-object v31

    .line 1025
    .local v31, "url":Ljava/lang/String;
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

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1026
    new-instance v18, Lcom/samsung/privilege/util/DeviceHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 1027
    .local v18, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    const-string v2, "<deviceId>"

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_11d} :catch_375
    .catch Lorg/json/JSONException; {:try_start_e7 .. :try_end_11d} :catch_1d0

    move-result-object v31

    .line 1032
    .end local v18    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    :goto_11e
    :try_start_11e
    const-string v2, "https://"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    const-string v2, "http://"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 1035
    :cond_143
    new-instance v29, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static/range {v31 .. v31}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1036
    .local v29, "openUrlIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_15d} :catch_21c
    .catch Lorg/json/JSONException; {:try_start_11e .. :try_end_15d} :catch_1d0

    .line 1087
    .end local v29    # "openUrlIntent":Landroid/content/Intent;
    .end local v31    # "url":Ljava/lang/String;
    :cond_15d
    :goto_15d
    return-void

    .line 1015
    .restart local v4    # "currentDate":J
    .restart local v10    # "serial":Ljava/lang/String;
    .restart local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .restart local v23    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v26    # "longExpireIn":J
    .restart local v30    # "strNFCWriteBack":Ljava/lang/String;
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

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v11}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v11

    iget-object v11, v11, Lcom/samsung/privilege/bean/CampaignView;->Barcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v13

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v13}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$5(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->gCampaign:Lcom/samsung/privilege/bean/CampaignView;
    invoke-static {v14}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$1(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/bean/CampaignView;

    move-result-object v14

    iget-object v14, v14, Lcom/samsung/privilege/bean/CampaignView;->Type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v15

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v15}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Landroid/os/Handler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    move-object/from16 v16, v0

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v16

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;
    invoke-static/range {v16 .. v16}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;)Lcom/samsung/privilege/bean/NFCTag;

    move-result-object v16

    invoke-static/range {v2 .. v16}, Lcom/samsung/privilege/util/DialogSerialVersion2;->showDialogSerial(Landroid/app/Activity;Lcom/samsung/privilege/bean/Purchasing;JILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bitmapfun/util/ImageFetcher;Ljava/lang/String;Landroid/os/Handler;Lcom/samsung/privilege/bean/NFCTag;)V
    :try_end_1ce
    .catch Lorg/json/JSONException; {:try_start_15e .. :try_end_1ce} :catch_1d0

    goto/16 :goto_b9

    .line 1079
    .end local v4    # "currentDate":J
    .end local v10    # "serial":Ljava/lang/String;
    .end local v12    # "strPrivilegeMessage":Ljava/lang/String;
    .end local v23    # "jsonRoot":Lorg/json/JSONObject;
    .end local v26    # "longExpireIn":J
    .end local v30    # "strNFCWriteBack":Ljava/lang/String;
    :catch_1d0
    move-exception v19

    .line 1080
    .local v19, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1081
    .local v28, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20d

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    move-result-object v28

    .line 1084
    :cond_20d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1037
    .end local v19    # "e":Lorg/json/JSONException;
    .end local v28    # "message":Ljava/lang/String;
    :catch_21c
    move-exception v19

    .line 1038
    .local v19, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    .line 1040
    .local v17, "blnIsAdmin":Z
    :try_start_21f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_22e} :catch_255
    .catch Lorg/json/JSONException; {:try_start_21f .. :try_end_22e} :catch_1d0

    move-result v2

    if-eqz v2, :cond_233

    .line 1041
    const/16 v17, 0x1

    .line 1046
    :cond_233
    :goto_233
    if-eqz v17, :cond_279

    .line 1047
    :try_start_235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

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

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1043
    :catch_255
    move-exception v20

    .line 1044
    .local v20, "e2":Ljava/lang/Exception;
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

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_233

    .line 1049
    .end local v20    # "e2":Ljava/lang/Exception;
    :cond_279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const-string v3, "Can\'t go to website"

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$8(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1055
    .end local v17    # "blnIsAdmin":Z
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_288
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_code:I

    if-gez v2, :cond_2d6

    .line 1056
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

    move-result-object v28

    .line 1057
    .restart local v28    # "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v3

    const v6, 0x7f090349

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d4
    .catch Lorg/json/JSONException; {:try_start_235 .. :try_end_2d4} :catch_1d0

    goto/16 :goto_15d

    .line 1061
    .end local v28    # "message":Ljava/lang/String;
    :cond_2d6
    :try_start_2d6
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->val$response_text_final:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v25, "json_result":Lorg/json/JSONObject;
    const-string v2, "error"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1063
    .local v24, "json_error":Lorg/json/JSONObject;
    const-string v2, "id"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1064
    .local v21, "id":Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1065
    .restart local v28    # "message":Ljava/lang/String;
    const-string v2, "1411"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_366

    .line 1066
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

    if-eqz v2, :cond_357

    .line 1067
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

    const v6, 0x7f09033a

    invoke-virtual {v3, v6}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v6}, Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_336
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_336} :catch_338
    .catch Lorg/json/JSONException; {:try_start_2d6 .. :try_end_336} :catch_1d0

    goto/16 :goto_15d

    .line 1074
    .end local v21    # "id":Ljava/lang/String;
    .end local v24    # "json_error":Lorg/json/JSONObject;
    .end local v25    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    :catch_338
    move-exception v19

    .line 1075
    .restart local v19    # "e":Ljava/lang/Exception;
    :try_start_339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    const v3, 0x7f090308

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1076
    .restart local v28    # "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_355
    .catch Lorg/json/JSONException; {:try_start_339 .. :try_end_355} :catch_1d0

    goto/16 :goto_15d

    .line 1069
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v21    # "id":Ljava/lang/String;
    .restart local v24    # "json_error":Lorg/json/JSONObject;
    .restart local v25    # "json_result":Lorg/json/JSONObject;
    :cond_357
    :try_start_357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_15d

    .line 1072
    :cond_366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;->access$3(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$RedeemListener;)Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_373} :catch_338
    .catch Lorg/json/JSONException; {:try_start_357 .. :try_end_373} :catch_1d0

    goto/16 :goto_15d

    .line 1028
    .end local v21    # "id":Ljava/lang/String;
    .end local v24    # "json_error":Lorg/json/JSONObject;
    .end local v25    # "json_result":Lorg/json/JSONObject;
    .end local v28    # "message":Ljava/lang/String;
    .restart local v31    # "url":Ljava/lang/String;
    :catch_375
    move-exception v2

    goto/16 :goto_11e
.end method
