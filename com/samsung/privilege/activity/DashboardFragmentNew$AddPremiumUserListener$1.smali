.class Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    iput p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_text:Ljava/lang/String;

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_code:I

    move/from16 v17, v0

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12b

    .line 1165
    :try_start_e
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v7, "jsonRoot":Lorg/json/JSONObject;
    const-string v17, "token"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1168
    .local v16, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetTokenBuzzeBees(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1170
    const-string v17, "isPremiumUser"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/samsung/privilege/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1171
    .local v5, "isPremiumUser":Z
    if-eqz v5, :cond_d5

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/UserLogin;->SetIsPremium(Landroid/content/Context;Z)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_59} :catch_f1

    .line 1175
    :try_start_59
    sget-object v17, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v17, :cond_67

    .line 1176
    sget-object v17, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignListActivity;->updateAppIcon()V

    .line 1177
    sget-object v17, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_67} :catch_17f

    .line 1183
    :cond_67
    :goto_67
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    const/16 v18, 0x1

    # invokes: Lcom/samsung/privilege/activity/DashboardFragmentNew;->loadDashboard(Z)V
    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$8(Lcom/samsung/privilege/activity/DashboardFragmentNew;Z)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_76} :catch_f1

    .line 1193
    .end local v5    # "isPremiumUser":Z
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v16    # "token":Ljava/lang/String;
    :goto_76
    :try_start_76
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1194
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    const-string v17, "buzzebees"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1196
    .local v10, "json_buzzebees":Lorg/json/JSONObject;
    const-string v17, "points"

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v14

    .line 1198
    .local v14, "points_add":I
    if-lez v14, :cond_ba

    .line 1199
    const-string v15, ""

    .line 1200
    .local v15, "strFrom":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew;->gHandler:Landroid/os/Handler;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->access$7(Lcom/samsung/privilege/activity/DashboardFragmentNew;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v18, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v18 .. v18}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v14, v15, v0, v1}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 1203
    .end local v15    # "strFrom":Ljava/lang/String;
    :cond_ba
    const-string v17, "badges"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 1204
    .local v9, "json_badges":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_c6} :catch_111

    move-result v17

    move/from16 v0, v17

    if-lt v4, v0, :cond_f3

    .line 1219
    .end local v4    # "i":I
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v9    # "json_badges":Lorg/json/JSONArray;
    .end local v10    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v14    # "points_add":I
    :goto_cb
    :try_start_cb
    sget-object v17, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    if-eqz v17, :cond_d4

    .line 1220
    sget-object v17, Lcom/samsung/privilege/AppSetting;->gCampaignListActivity:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d4} :catch_17c

    .line 1239
    :cond_d4
    :goto_d4
    return-void

    .line 1185
    .restart local v5    # "isPremiumUser":Z
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v16    # "token":Ljava/lang/String;
    :cond_d5
    :try_start_d5
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1186
    .local v11, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_f0} :catch_f1

    goto :goto_76

    .line 1188
    .end local v5    # "isPremiumUser":Z
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v11    # "message":Ljava/lang/String;
    .end local v16    # "token":Ljava/lang/String;
    :catch_f1
    move-exception v17

    goto :goto_76

    .line 1205
    .restart local v4    # "i":I
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v9    # "json_badges":Lorg/json/JSONArray;
    .restart local v10    # "json_buzzebees":Lorg/json/JSONObject;
    .restart local v14    # "points_add":I
    :cond_f3
    :try_start_f3
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1206
    .local v8, "json_badge":Lorg/json/JSONObject;
    new-instance v13, Lcom/samsung/privilege/bean/BadgeAlert;

    invoke-direct {v13, v8}, Lcom/samsung/privilege/bean/BadgeAlert;-><init>(Lorg/json/JSONObject;)V

    .line 1209
    .local v13, "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    new-instance v12, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v17, "badge"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 1210
    .local v12, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    iput-object v13, v12, Lcom/samsung/privilege/bean/MessagePopup;->badgeAlert:Lcom/samsung/privilege/bean/BadgeAlert;

    .line 1212
    sget-object v17, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_10e} :catch_111

    .line 1204
    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 1214
    .end local v4    # "i":I
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    .end local v8    # "json_badge":Lorg/json/JSONObject;
    .end local v9    # "json_badges":Lorg/json/JSONArray;
    .end local v10    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v12    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    .end local v13    # "objBadgeAlert":Lcom/samsung/privilege/bean/BadgeAlert;
    .end local v14    # "points_add":I
    :catch_111
    move-exception v3

    .line 1215
    .local v3, "e":Ljava/lang/Exception;
    const-string v17, "gift.dashboard"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Not found buzzebees data:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb

    .line 1226
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_12b
    const-string v2, ""

    .line 1227
    .local v2, "code":Ljava/lang/String;
    const-string v11, ""

    .line 1229
    .restart local v11    # "message":Ljava/lang/String;
    :try_start_12f
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->val$response_text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1230
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1231
    .local v6, "jsonError":Lorg/json/JSONObject;
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1232
    const-string v17, "code"

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_153} :catch_169

    move-result-object v2

    .line 1237
    .end local v6    # "jsonError":Lorg/json/JSONObject;
    .end local v7    # "jsonRoot":Lorg/json/JSONObject;
    :goto_154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_d4

    .line 1233
    :catch_169
    move-exception v3

    .line 1234
    .restart local v3    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;

    move-object/from16 v17, v0

    # getter for: Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;
    invoke-static/range {v17 .. v17}, Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;->access$0(Lcom/samsung/privilege/activity/DashboardFragmentNew$AddPremiumUserListener;)Lcom/samsung/privilege/activity/DashboardFragmentNew;

    move-result-object v17

    const v18, 0x7f0a02b1

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_154

    .line 1222
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v11    # "message":Ljava/lang/String;
    :catch_17c
    move-exception v17

    goto/16 :goto_d4

    .line 1179
    .restart local v5    # "isPremiumUser":Z
    .restart local v7    # "jsonRoot":Lorg/json/JSONObject;
    .restart local v16    # "token":Ljava/lang/String;
    :catch_17f
    move-exception v17

    goto/16 :goto_67
.end method
